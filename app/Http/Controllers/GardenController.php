<?php

namespace App\Http\Controllers;

use App\Bit;
use App\Sfpc;
use App\User;
use App\Range;
use App\Garden;
use App\Country;
use App\District;
use App\Project;
use App\ForestType;
use App\GardenInformation;
use App\GardenType;
use App\UnionParishad;
use Illuminate\Http\Request;
use App\Http\Requests\GardenRequest;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\CountryRequest;
use App\Party;
use App\PartyInGarden;
use Spatie\Permission\Models\Role;
use DataTables;
use Illuminate\Support\Facades\Storage;

class GardenController extends Controller
{
    public function __construct()
    {

        // dd('works');

        $this->middleware('permission:view-category');
        $this->middleware('permission:create-category', ['only' => ['create', 'store']]);
        $this->middleware('permission:update-category', ['only' => ['edit', 'update']]);
        $this->middleware('permission:destroy-category', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $user = Auth::user();
        if ($user->hasRole('super-admin')) {

            $gardens =Garden::join('ranges','ranges.id','gardens.range_id')
            ->join('forest_types', 'forest_types.id', '=', 'gardens.forest_type_id')
            ->join('districts', 'districts.id', '=', 'ranges.district_id')
            ->join('thanas', 'thanas.id', '=', 'ranges.thana_id')
            ->select('gardens.*','ranges.name as range_name','districts.name as district_name','thanas.name as thana_name','forest_types.name as forest_type_name')
            ->latest('gardens.created_at')
            ->get();
        }else{
            $gardens =Garden::join('ranges','ranges.id','gardens.range_id')
            ->join('forest_types', 'forest_types.id', '=', 'gardens.forest_type_id')
            ->join('districts', 'districts.id', '=', 'ranges.district_id')
            ->join('thanas', 'thanas.id', '=', 'ranges.thana_id')
            ->select('gardens.*','ranges.name as range_name','districts.name as district_name','thanas.name as thana_name','forest_types.name as forest_type_name')
            ->where('gardens.range_id',$user->range_id)
            ->latest('gardens.created_at')
            ->get();
        }


        if (request()->ajax()) {
            return DataTables::of($gardens)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                return $row->created_at->diffForHumans();

            })
            ->addColumn('agreement_attachment',function($row){

                $attach_url = url("/uploads/agreements/$row->agreement_attachment");
                if(Storage::exists($attach_url)){
                    $attach = <<<CODE
                    <a download="garden_creation_agreement_$row->agreement_attachment" href='$attach_url'>ডাউনলোড</a>
                    CODE;
                }else{
                    $attach_url = url('/garden/agree');
                    $attach = <<<CODE
                    no attachment
                    CODE;
                }

                return $attach;
            })
            ->addColumn('actions',function($row){
                $delete_api = route('garden.destroy',$row->id);
                $edit_api = route('garden.edit',$row->id);
                $csrf = csrf_token();
                $action = <<<CODE
                <form method='POST' action='$delete_api' accept-charset='UTF-8' class='d-inline-block dform'>

                    <input name='_method' type='hidden' value='DELETE'><input name='_token' type='hidden' value='$csrf'>
                    <a class='btn btn-info btn-sm m-1' data-toggle='tooltip' data-placement='top' title='' href='$edit_api' data-original-title='Edit category details'>
                        <i class='fa fa-edit' aria-hidden='true'></i>
                    </a>
                    <button type='submit' class='btn delete btn-danger btn-sm m-1' data-toggle='tooltip' data-placement='top' title='' href='' data-original-title='Delete category'>
                        <i class='fas fa-trash'></i>
                    </button>
                </form>
                CODE;

                return $action;

            })
            ->rawColumns(['created_at_read','actions','agreement_attachment'])
            ->make(true);
        }
        // dd($categories);
        $title = 'Manage Gardens';
        return view('garden.index', compact('gardens', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {


        // dd($usersWithRole);

        $user = Auth::user();
        // dd($user->name);
        $rangeInfo = $user->name;
        $sfpcList = Sfpc::where('range_id', $user->range_id)->pluck('name', 'id');
        // $bitList = Bit::where('range_id', $user->range_id)->pluck('name', 'id');
        $bitList = User::latest()->role('বীট')->pluck('name', 'id');
        // dd($sfpcList);
        // dd($bitList);
        // dd($user);
        // dd($rangeInfo);
        // dd('works');
        $title = __('garden.create_garden');
        $gardenTypes = GardenType::latest()->pluck('name', 'id');
        $forestTypes = ForestType::latest()->pluck('name', 'id');
        $projects = Project::latest()->pluck('name', 'id');
        $rotations = [
            1 => '1st',
            2 => '2nd',
            3 => '3rd',
            4 => '4th',
            5 => '5th',
            6 => '6th',
            7 => '7th',
            8 => '8th',
            9 => '9th',
            10 => '10th',
            11 => '11th',
            12 => '12th',
            13 => '13th',
            14 => '14th',
            15 => '15th',
            16 => '16th',
            17 => '17th',
            18 => '18th',
            19 => '19th',
            20 => '20th',
        ];

        $startYear = 2000;
        $endYear = date('Y');

        $years = range($startYear, $endYear);
        $yearPairs = array_map(function ($year) {
            return $year . '-' . ($year + 1);
        }, $years);

        $yearPairs = array_combine($yearPairs, $yearPairs);

        // dd($yearPairs);


        // $unions = UnionParishad::pluck('name', 'id');
        $unions = UnionParishad::join('range_in_unions', 'union_parishads.id', '=', 'range_in_unions.union_parishad_id')
        ->where('range_in_unions.range_id', '=', Auth::user()->range_id)
        ->select('union_parishads.*') // Select the columns you want from the unionparishod table
        ->pluck('name', 'id');

        // $gardens = GardenInformation::with('garden_type', 'thana', 'union', 'union.union', 'district')
            // ->orderByDesc('id')
            // ->selectRaw("id,CONCAT(id,'-',districts.name)as name")
            // ->where('range_id', $user->id)->get();
        // dd($gardens);
        // dd($roles);

        $districtInRange = District::latest()->pluck('name', 'id');
        $parties = Party::latest()->pluck('name', 'id');
        return view('garden.create', compact('title', 'parties','gardenTypes', 'projects', 'rotations', 'unions', 'rangeInfo', 'sfpcList', 'bitList', 'forestTypes', 'yearPairs','districtInRange'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     * GardenRequest
     */
    public function store(GardenRequest $request)
    {
        $parties = $request->parties;
        $user = Auth::user();
        $fileName = '';
        if ($request->file()) {
            $fileName = time() . '.' . $request->contract_attachment->extension();
            $request->contract_attachment->move(public_path('uploads/agreements'), $fileName);
        }

        $request->file('contract_attachment', null);

        // dd($fileName);



        $request->merge(
            [
                'created_by' => Auth::user()->id,
                'range_id' =>   $user->range_id,
                'sfntc_id' =>   $user->sfntc_id,
                'bit_id' =>  $request->filled('bit_id') ? $request->bit_id : null,
                'sfpc_id' =>  $request->filled('sfpc_id') ?  $request->sfpc_id : null,
                // 'contract_attachment' => $fileName,
                'agreement_attachment' => $fileName,
            ]
        );

        // dd($request->all());

        $create = Garden::create($request->except('_token', 'parties', 'contract_attachment'));
        if (!empty($create)) {
            $gardenId = $create->id;
            if (!empty($parties)) {
                $partiesArray = json_decode($parties, true);
                $keysMap = [
                    "পক্ষগণ" => "party_name",
                    "প্রতিষ্ঠান/সংস্থার নাম" => "institute_name",
                    "প্রাপ্য হার" => "percentage",
                    "মন্তব্য (যদি থাকে)" => "comment"
                ];

                $replaceKeys = function ($subArray) use ($keysMap) {
                    $updatedKeys = array_map(function ($key) use ($keysMap) {
                        return $keysMap[$key] ?? $key;
                    }, array_keys($subArray));

                    return array_combine($updatedKeys, array_values($subArray));
                };

                $updatedArray = array_map($replaceKeys, $partiesArray);

                // Define the transformation function using an anonymous function
                $addGardenId = function ($subArray) use ($gardenId) {
                    $subArray['garden_id'] = $gardenId;
                    return $subArray;
                };

                // Apply the transformation function to each sub-array using array_map
                $updatedArray = array_map($addGardenId, $updatedArray);

                // dd($updatedArray);
                PartyInGarden::insert($updatedArray);
            }

            // dd($create);
        }
        // dd($create);
        flash('Garden created successfully!')->success();
        return redirect()->route('garden.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Garden $category)
    {
        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Garden $category)
    {
        $title = "Country Details";
        $category->with('user');
        return view('garden.edit', compact('title', 'category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(CountryRequest $request, Garden $category)
    {
        $category->update($request->all());
        flash('Garden updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Garden $category)
    {
        $category->delete();
        flash('Garden deleted successfully!')->info();
        return back();
    }

    public function finalReport()
    {
        $list = Garden::with('garden_type_info', 'union', 'union.thana', 'union.district', 'range', 'bit', 'sfpc')->get();

        // dd( $list);
        return view('garden.final_report', compact('list'));
    }

    public function attachmentSubmit()
    {
        $title = 'সৃজিত বাগানের চুক্তিনামা দাখিল';
        $creationYears = [];
        $gardenCreations = Garden::pluck('id', 'id');
        // dd($gardenCreations);
        return view('garden.attachment_submit', compact('title', 'creationYears', 'gardenCreations'));
    }

    public function attachmentSubmitSubmit()
    {
        dd('works');
    }
}
