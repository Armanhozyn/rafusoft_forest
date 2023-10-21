<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\LandOwnerRequest;
use App\LandOwner;
use DataTables;


class LandOwnerController extends Controller
{
    public function index(Request $request)
    {
        $land_owners = LandOwner::latest()->get();


        if (request()->ajax()) {
            return DataTables::of($land_owners)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                return $row->created_at->diffForHumans();

            })
            ->addColumn('actions',function($row){
                $delete_api = route('land_owner.destroy',$row->id);
                $edit_api = route('land_owner.edit',$row->id);
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
        $title = 'Manage LandOwner';
        return view('land_owner.index', compact('land_owners', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create LandOwner';
        return view('land_owner.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(LandOwnerRequest $request)
    {
        // $request->merge(['user_id' => Auth::user()->id]);
        LandOwner::create($request->except('_token'));
        flash('LandOwner created successfully!')->success();
        return redirect()->route('land_owner.index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\LandOwnerRequest  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(LandOwner $land_owner)
    {
        $title = "Ranges";
        return view('land_owner.edit', compact('title', 'land_owner'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\LandOwnerRequest  $category
     * @return \Illuminate\Http\Response
     */
    public function update(LandOwnerRequest $request, LandOwner $land_owner)
    {
        $land_owner->update($request->all());
        flash('LandOwner updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\LandOwner  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(LandOwner $land_owner)
    {
        $land_owner->delete();
        flash('LandOwner deleted successfully!')->info();
        return back();
    }
}
