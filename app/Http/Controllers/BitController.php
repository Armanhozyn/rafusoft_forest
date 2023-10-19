<?php

namespace App\Http\Controllers;

use App\Bit;
use Illuminate\Http\Request;

class BitController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // dd('works2');
        // if ($request->has('search')) {
        //     $categories = Country::where('name', 'like', '%' . $request->search . '%')->paginate(setting('record_per_page', 15));
        // } else {
        //     $categories = Country::paginate(setting('record_per_page', 15));
        // }

        $bits = Bit::latest()->get();
        dd($bits);
        $title = 'Manage Countries';
        return view('bit.index', compact('categories', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create Country';
        return view('country.create', compact('title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CountryRequest $request)
    {
        $request->merge(['user_id' => Auth::user()->id]);
        Country::create($request->except('_token'));
        flash('Country created successfully!')->success();
        return redirect()->route('country.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Country $category)
    {
        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Country $category)
    {
        $title = "Country Details";
        $category->with('user');
        return view('country.edit', compact('title', 'category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(CountryRequest $request, Country $category)
    {
        $category->update($request->all());
        flash('Country updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Country $category)
    {
        $category->delete();
        flash('Country deleted successfully!')->info();
        return back();
    }
}
