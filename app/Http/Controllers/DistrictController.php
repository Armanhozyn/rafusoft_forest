<?php

namespace App\Http\Controllers;

use App\District;
use App\Http\Requests\BitRequest;
use App\Http\Requests\DistrictRequest;
use Illuminate\Http\Request;
use DataTables;
use Illuminate\Support\Facades\DB;

class DistrictController extends Controller
{
/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $districts = District::join('country_divisions', 'districts.country_division_id', '=', 'country_divisions.id')
        ->select('districts.*', 'country_divisions.name as country_division_name')
        ->latest()
        ->get();


        if (request()->ajax()) {
            return DataTables::of($districts)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                return $row->created_at->diffForHumans();

            })
            ->addColumn('actions',function($row){
                $delete_api = route('district.destroy',$row->id);
                $edit_api = route('district.edit',$row->id);
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
        // dd($bits);
        $title = 'জেলা পরিচালনা করুন';
        return view('district.index', compact('districts', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'জেলা তৈরি করুন';
        $country_divisions = DB::table('country_divisions')->latest()->get();
        return view('district.create', compact('country_divisions','title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(DistrictRequest $request)
    {
        // $request->merge(['user_id' => Auth::user()->id]);
        District::create($request->except('_token'));
        flash('জেলা created successfully!')->success();
        return redirect()->route('district.index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\District  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(District $district)
    {
        $title = "District Details";
        $country_divisions = DB::table('country_divisions')->latest()->get();
        return view('district.edit', compact('title', 'district','country_divisions'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\District  $category
     * @return \Illuminate\Http\Response
     */
    public function update(DistrictRequest $request, District $district)
    {
        $district->update($request->all());
        flash('জেলা updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\District  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(District $district)
    {
        $district->delete();
        flash('জেলা deleted successfully!')->info();
        return back();
    }
}
