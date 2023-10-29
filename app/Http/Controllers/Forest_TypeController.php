<?php

namespace App\Http\Controllers;
use App\ForestType;
use Illuminate\Http\Request;
use DataTables;

class Forest_TypeController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return \Illuminate\Http\Response
    */
    public function index(Request $request)
    {
        $forest_types =ForestType::latest()->get();

        if (request()->ajax()) {
            return DataTables::of($forest_types)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                return $row->created_at->diffForHumans();

            })
            ->addColumn('actions',function($row){
                $delete_api = route('forest_type.destroy',$row->id);
                $edit_api = route('forest_type.edit',$row->id);
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
        $title = 'Manage Forest Type';
        return view('forest_type.index', compact('forest_types', 'title'));
    }

    /**
    * Show the form for creating a new resource.
    *
    * @return \Illuminate\Http\Response
    */
    public function create()
    {
        $title = 'Create ForestType';
        return view('forest_type.create', compact('title'));
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
       ForestType::create($request->except('_token'));
        flash('Forest Type created successfully!')->success();
        return redirect()->route('forest_type.index');
    }

    /**
    * Show the form for editing the specified resource.
    *
    * @param  \App\ForestType  $forest_type
    * @return \Illuminate\Http\Response
    */
    public function edit(ForestType $forest_type)
    {
        $title = "ForestType Details";
        return view('forest_type.edit', compact('title', 'forest_type'));
    }

    /**
    * Update the specified resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @param  \App\Category  $forest_type
    * @return \Illuminate\Http\Response
    */
    public function update(Request $request,ForestType $forest_type)
    {
        $forest_type ->update($request->all());
        flash('ForestType updated successfully!')->success();
        return back();
    }

    /**
    * Remove the specified resource from storage.
    *
    * @param  \App\ForestType  forest_type
    * @return \Illuminate\Http\Response
    */
    public function destroy(ForestType $forest_type)
    {
        $forest_type ->delete();
        flash('ForestType deleted successfully!')->info();
        return back();
    }
}
