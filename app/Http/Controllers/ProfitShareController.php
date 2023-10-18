<?php

namespace App\Http\Controllers;

use App\Beneficiary;
use App\Garden;
use App\Country;
use App\Project;
use App\WoodLot;
use App\GardenType;
use App\UnionParishad;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\CountryRequest;
use App\Http\Requests\ProfitShareRequest;
use App\Http\Requests\WoodLotRequest;
use App\ProfitDistribution;
use Illuminate\Support\Facades\Validator;

class ProfitShareController extends Controller
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
        // dd('works2');
        if ($request->has('search')) {
            $categories = ProfitDistribution::where('name', 'like', '%' . $request->search . '%')->paginate(setting('record_per_page', 15));
        } else {
            $categories = ProfitDistribution::paginate(setting('record_per_page', 15));
        }
        $title = 'Manage Profit Distributions';
        return view('profit_share.index', compact('categories', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // dd('works');
        $title = 'Profit Share';
        $gardens = Garden::pluck('location', 'id');
        $creationYears = Garden::select('creation_year')->pluck('creation_year', 'creation_year');
        $list = ProfitDistribution::with('garden')->get();
        // dd($list);
        // dd($woodlots);
        // dd($gardens);
        // dd($roles);
        return view('profit_share.create', compact('title', 'gardens', 'list', 'creationYears'));
    }

    public function save_ajax(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'garden_id' => 'required',
            'office_order_no' => 'required',
            'order_date' => 'required',
            'forest_revenew' => 'required',
            'tff_profit_share' => 'required',
            'beneficiary_profit_share' => 'required',
            'land_owner_profit_share' => 'required',
            'union_parsadh_profit_share' => 'required',

        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'error' => $validator->errors()->all(),
                'message' => null,
                'data' => null
            ]);
        }
        $request->merge(['created_by' => Auth::user()->id]);
        $save = ProfitDistribution::create($request->except('_token'));
        // dd($save);
        if (!$save) {
            return response()->json([
                'success' => false,
                'data' => null,
                'error' => 'Write to database failed',
                'message' => null
            ]);
        }

        return response()->json([
            'success' => true,
            'message' => 'Profit Share saved successfully.',
            'error' => null,
            'data' => ProfitDistribution::with('garden')->where('id', $save->id)->first()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProfitShareRequest $request)
    {
        // dd($request);

        $request->merge(['created_by' => Auth::user()->id]);

        // dd($request);

        ProfitDistribution::create($request->except('_token', 'garden_creation_year'));
        flash('Profit Share created successfully!')->success();
        return redirect()->to('/garden/profit-share');
        // return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\WoodLot  $category
     * @return \Illuminate\Http\Response
     */
    public function show(ProfitDistribution $category)
    {
        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\WoodLot  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(ProfitDistribution $category)
    {
        $title = "Profit Share Details";
        $category->with('user');
        return view('profit_share.edit', compact('title', 'category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\WoodLot  $category
     * @return \Illuminate\Http\Response
     */
    public function update(ProfitShareRequest $request, ProfitDistribution $category)
    {
        $category->update($request->all());
        flash('Profit Share updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\WoodLot  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(ProfitDistribution $category)
    {
        $category->delete();
        flash('Profit Share deleted successfully!')->info();
        return back();
    }
    public function tffIndex()
    {
    }

    public function tffIndexSubmit(Request $request)
    {
    }
}
