<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\RangeRequest;
use App\Range;
use DataTables;
use Illuminate\Support\Facades\DB;

class RangeController extends Controller
{
    public function index(Request $request)
    {
        $ranges = Range::join('districts', 'districts.id', '=', 'ranges.district_id')
        ->select('ranges.*', 'districts.name as district_name')
        ->latest()
        ->get();


        if (request()->ajax()) {
            return DataTables::of($ranges)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                return $row->created_at->diffForHumans();

            })
            ->addColumn('actions',function($row){
                $delete_api = route('range.destroy',$row->id);
                $edit_api = route('range.edit',$row->id);
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
        $title = 'Manage Range';
        return view('range.index', compact('ranges', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create Range';
        $districts = DB::table('districts')->latest()->get();
        return view('range.create', compact('districts','title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(RangeRequest $request)
    {
        // $request->merge(['user_id' => Auth::user()->id]);
        Range::create($request->except('_token'));
        flash('Range created successfully!')->success();
        return redirect()->route('range.index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\RangeRequest  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Range $range)
    {
        $title = "Ranges";
        $districts = DB::table('districts')->latest()->get();
        return view('range.edit', compact('title', 'range','districts'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\RangeRequest  $category
     * @return \Illuminate\Http\Response
     */
    public function update(RangeRequest $request, Range $range)
    {
        $range->update($request->all());
        flash('Range updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Range  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Range $range)
    {
        $range->delete();
        flash('Range deleted successfully!')->info();
        return back();
    }
}
