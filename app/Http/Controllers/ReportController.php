<?php

namespace App\Http\Controllers;

use App\Garden;
use App\Category;
use App\District;
use App\ForestType;
use App\GardenType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\CategoryRequest;
use App\Range;

class ReportController extends Controller
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
            $categories = Category::with(['user'])->where('category_name', 'like', '%' . $request->search . '%')->paginate(setting('record_per_page', 15));
        } else {
            $categories = Category::with(['user'])->paginate(setting('record_per_page', 15));
        }
        $title = 'Manage Categories';
        // $gardens = Garden::pluck('location', 'id');
        $creationYears = Garden::select('creation_year')->pluck('creation_year', 'creation_year');
        $gardenTypes = ForestType::select('id', 'name')->pluck('name', 'id');
        $reportList = [
            '1' => 'বাগান সৃজন',
            '2' => 'বিক্রিত বাগান',
            '3' => 'লভ্যাংশ বিতরন',

        ];

        $districtList = District::select('id', 'name')->pluck('name', 'id');
        $rangeList = Range::select('id', 'name')->pluck('name', 'id');


        $creationYears = Garden::select('creation_year')->pluck('creation_year', 'creation_year');


        // $districtList = collect(['' => 'Select'])->concat($districtList);
        // dd($districtList);
        return view('report.index', compact('categories', 'title',  'creationYears', 'gardenTypes', 'reportList', 'districtList', 'creationYears', 'rangeList'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create category';
        return view('category.create', compact('title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CategoryRequest $request)
    {
        $request->merge(['user_id' => Auth::user()->id]);
        Category::create($request->all());
        flash('Category created successfully!')->success();
        return redirect()->route('category.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        $title = "Category Details";
        $category->with('user');
        return view('category.edit', compact('title', 'category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(CategoryRequest $request, Category $category)
    {
        $category->update($request->all());
        flash('Category updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        $category->delete();
        flash('Category deleted successfully!')->info();
        return back();
    }


    public function gardenCreationReport(Request $request)
    {
        // dd($request);
        $query = Garden::with('garden_type_info', 'union', 'union.thana', 'union.district', 'range', 'bit', 'sfpc');
        if ($request->filled('district')) {
            // $query->where('', '');
        }

        if ($request->filled('range')) {
            $query->where('range_id', $request->range);
        }
        if ($request->filled('thana')) {
            // $query->where('', '');
        }
        if ($request->filled('creation_year')) {
            $query->where('creation_year',  $request->creation_year);
        }

        $list = $query->get();

        // dd( $list);
        return view('garden.final_report', compact('list'));
    }
}
