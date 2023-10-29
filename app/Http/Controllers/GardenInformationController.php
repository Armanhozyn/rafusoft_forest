<?php

namespace App\Http\Controllers;

use App\Sfpc;
use App\User;
use App\Category;
use App\District;
use App\ForestType;
use App\GardenType;
use App\GardenInformation;
use App\GardenInUnion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\CategoryRequest;
use App\Range;
use App\RangeInDistrict;

class GardenInformationController extends Controller
{
    public function __construct()
    {

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
        if ($request->has('search')) {
            $categories = GardenInformation::with(['garden_type', 'range', 'thana', 'union', 'union.union'])->where('category_name', 'like', '%' . $request->search . '%')->paginate(setting('record_per_page', 15));
        } else {
            $categories = GardenInformation::with(['garden_type', 'range', 'thana', 'union', 'union.union'])->paginate(setting('record_per_page', 15));
        }
        $title = 'বাগানের তথ্য পরিচালনা করুন';
        return view('garden_information.index', compact('categories', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'বাগানের তথ্য প্রদান';

        $user = Auth::user();
        $rangeInfo = $user->name;
        $sfpcList = Sfpc::where('range_id', $user->range_id)->pluck('name', 'id');
        $bitList = User::role('বীট')->pluck('name', 'id');
        // $districtInRange = RangeInDistrict::with('district')->where('range_id',  $user->id)->get()->pluck('district.name', 'district_id');
        // dd(Auth::user());
        $districtInRange = District::latest()->pluck('name', 'id');
        $forestTypes = ForestType::latest()->pluck('name', 'id');
        return view('garden_information.create', compact('title', 'forestTypes', 'districtInRange'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $unions = $request->union_parishad_id;


        if ($request->forest_type_id == 1) {
            $request->merge(['garden_area_km' => $request->garden_area]);
        } else {
            $request->merge(['garden_area_hectare' => $request->garden_area]);
        }

        $request->merge(['range_id' => Auth::user()->id]);

        // dd($request);
        $create = GardenInformation::create($request->except('garden_area', 'garden_area', '_token', 'union_parishad_id'));


        if ($create) {
            $gardenId = $create->id;
            $unions = array_map(function ($value) use ($gardenId) {
                return [
                    'union_parishad_id' => $value,
                    'garden_information_id' => $gardenId
                ];
            }, $unions);

            // dd($unions);
            if (!empty($unions)) {
                GardenInUnion::insert($unions);
            }
        }
        // dd($create);
        flash('Garden information created successfully!')->success();
        return redirect()->route('garden-information.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\GardenInformation  $category
     * @return \Illuminate\Http\Response
     */
    public function show(GardenInformation $category)
    {
        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\GardenInformation  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(GardenInformation $category)
    {
        $title = "Garden Information Details";
        $category->with('user');
        return view('garden_information.edit', compact('title', 'category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\GardenInformation  $category
     * @return \Illuminate\Http\Response
     */
    public function update(CategoryRequest $request, GardenInformation $category)
    {
        $category->update($request->all());
        flash('Garden information updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\GardenInformation  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $garden  = GardenInformation::find($id);
        // dd($garden);

        $garden->delete();
        flash('Garden information deleted successfully!')->info();
        return back();
    }
}
