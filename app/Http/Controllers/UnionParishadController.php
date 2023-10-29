<?php

namespace App\Http\Controllers;

use App\Country;
use App\District;
use App\Http\Requests\CountryRequest;
use App\Http\Requests\UnionRequest;
use App\Thana;
use App\UnionParishad;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UnionParishadController extends Controller
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
        // dd('works2');
        if ($request->has('search')) {
            $categories = UnionParishad::where('name', 'like', '%' . $request->search . '%')->paginate(setting('record_per_page', 15));
        } else {
            $categories = UnionParishad::paginate(setting('record_per_page', 15));
        }
        $title = 'Manage Countries';
        return view('union.index', compact('categories', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create Union';
        $thanaList = Thana::latest()->pluck('name', 'id');
        $districtList = District::latest()->pluck('name', 'id');
        $countries = Country::latest()->pluck('name', 'id');
        // dd($thanaList);
        return view('union.create', compact('title','thanaList','districtList','countries'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UnionRequest $request)
    {
        // $request->merge(['user_id' => Auth::user()->id]);
        UnionParishad::create($request->except('_token'));
        flash('Country created successfully!')->success();
        return redirect()->route('union.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(UnionParishad $category)
    {
        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(UnionParishad $category)
    {
        $title = "Union Details";
        // $category->with('user');
        dd($category);
        return view('union.edit', compact('title', 'category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(UnionRequest $request, UnionParishad $category)
    {
        $category->update($request->all());
        flash('Union updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(UnionParishad $category)
    {
        $category->delete();
        flash('Union deleted successfully!')->info();
        return back();
    }
}
