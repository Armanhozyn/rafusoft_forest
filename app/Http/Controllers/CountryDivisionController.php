<?php

namespace App\Http\Controllers;
use App\Country_division;
use Illuminate\Http\Request;
use DataTables;

class CountryDivisionController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return \Illuminate\Http\Response
    */
    public function index(Request $request)
    {
        $country_divisions =Country_division::latest()->get();

        if (request()->ajax()) {
            return DataTables::of($country_divisions)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                return $row->created_at->diffForHumans();

            })
            ->addColumn('actions',function($row){
                $delete_api = route('country_division.destroy',$row->id);
                $edit_api = route('country_division.edit',$row->id);
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
            ->rawColumns(['created_at_read','actions'])
            ->make(true);
        }
        $title = 'ManageCountry_division';
        return view('country_division.index', compact('country_divisions', 'title'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return \Illuminate\Http\Response
    */
    public function create()
    {
        $title = 'Create Country_division';
        return view('country_division.create', compact('title'));
    }

    /**
    * Store a newly created resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @return \Illuminate\Http\Response
    */
    public function store(Request $request)
    {
        // $request->merge(['user_id' => Auth::user()->id]);
       Country_division::create($request->except('_token'));
        flash('Country_division created successfully!')->success();
        return redirect()->route('country_division.index');
    }

    /**
    * Show the form for editing the specified resource.
    *
    * @param  \App\Country_division  $country_division
    * @return \Illuminate\Http\Response
    */
    public function edit(Country_division $country_division)
    {
        $title = "Country_division Details";
        return view('country_division.edit', compact('title', 'country_division'));
    }

    /**
    * Update the specified resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @param  \App\Category  $country_division
    * @return \Illuminate\Http\Response
    */
    public function update(Request $request,Country_division $country_division)
    {
        $country_division ->update($request->all());
        flash('Country_division updated successfully!')->success();
        return back();
    }

    /**
    * Remove the specified resource from storage.
    *
    * @param  \App\Country_division  country_division
    * @return \Illuminate\Http\Response
    */
    public function destroy(Country_division $country_division)
    {
        $country_division ->delete();
        flash('Country_division deleted successfully!')->info();
        return back();
    }
}
