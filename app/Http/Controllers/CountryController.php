<?php

namespace App\Http\Controllers;

use App\Country;
use App\Http\Requests\CountryRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CountryController extends Controller
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
            $countries = Country::where('name', 'like', '%' . $request->search . '%')->paginate(setting('record_per_page', 15));
        } else {
            $countries = Country::paginate(setting('record_per_page', 15));
        }
        $title = 'দেশ পরিচালনা করুন';
        return view('country.index', compact('countries', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'দেশ তৈরি করুন';
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
     * @param  \App\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function edit(Country $country)
    {
        $title = "দেশ সম্পাদনা করুন";
        $country->with('user');
        return view('country.edit', compact('title', 'country'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function update(CountryRequest $request, Country $country)
    {
        $country->update($request->all());
        flash('Country updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $country
     * @return \Illuminate\Http\Response
     */
    public function destroy(Country $country)
    {
        $country->delete();
        flash('Country deleted successfully!')->info();
        return back();
    }
}
