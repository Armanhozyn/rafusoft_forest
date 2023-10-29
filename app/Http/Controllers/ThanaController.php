<?php

namespace App\Http\Controllers;

use App\District;
use App\Thana;
use Illuminate\Http\Request;
use DataTables;

class ThanaController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return \Illuminate\Http\Response
    */
    public function index(Request $request)
    {
        $thanas = Thana::join('districts', 'districts.id', '=', 'thanas.district_id')
        ->select('thanas.*', 'districts.name as district_name')
        ->latest()
        ->get();
        if (request()->ajax()) {
            return DataTables::of($thanas)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                return $row->created_at->diffForHumans();

            })
            ->addColumn('actions',function($row){
                $delete_api = route('thana.destroy',$row->id);
                $edit_api = route('thana.edit',$row->id);
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
        $title = 'ManageThana';
        return view('thana.index', compact('thanas', 'title'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return \Illuminate\Http\Response
    */
    public function create()
    {
        $title = 'Create Thana';

        $districtList = District::pluck('name', 'id');
        return view('thana.create', compact('title','districtList'));
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
       Thana::create($request->except('_token'));
        flash('Thana created successfully!')->success();
        return redirect()->route('thana.index');
    }

    /**
    * Show the form for editing the specified resource.
    *
    * @param  \App\Thana  $thana
    * @return \Illuminate\Http\Response
    */
    public function edit(Thana $thana)
    {
        $title = "Thana Details";
        $districts = District::latest()->get();
        return view('thana.edit', compact('title', 'thana','districts'));
    }

    /**
    * Update the specified resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @param  \App\Category  $thana
    * @return \Illuminate\Http\Response
    */
    public function update(Request $request,Thana $thana)
    {
        $thana ->update($request->all());
        flash('Thana updated successfully!')->success();
        return back();
    }

    /**
    * Remove the specified resource from storage.
    *
    * @param  \App\Thana  thana
    * @return \Illuminate\Http\Response
    */
    public function destroy(Thana $thana)
    {
        $thana ->delete();
        flash('Thana deleted successfully!')->info();
        return back();
    }
}
