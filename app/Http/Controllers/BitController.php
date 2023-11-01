<?php

namespace App\Http\Controllers;

use App\Bit;
use App\Http\Requests\BitRequest;
use App\Range;
use App\User;
use Illuminate\Http\Request;
use DataTables;

class BitController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // $bits = Bit::join('ranges', 'bits.range_id', '=', 'ranges.id')
        // ->select('bits.*', 'ranges.name as range_name')
        // ->latest()
        // ->get();
        $bits = User::role('বীট')->get();
        // dd($bits);
        if (request()->ajax()) {
            return DataTables::of($bits)
            ->addIndexColumn()
            ->addColumn('email_verified_at_read',function($row){
                if($row->email_verified_at){
                    return $row->email_verified_at->diffForHumans();
                }

                return "no date";

            })
            ->addColumn('profile_photo',function($row){
                $img = "<div class='avatar-group'>";
                if($row->profile_photo){
                    $img .= <<<CODE
                                <img alt="Image placeholder"
                                class="avatar avatar-sm rounded-circle"
                                data-toggle="tooltip" data-original-title="{{$row->name}}"
                                src="{{ asset($row->profile_photo) }}">
                            CODE;
                }else{
                    $img .= <<<CODE
                                <i class="far avatar avatar-sm rounded-circle fa-user"></i>
                            CODE;
                }

                $img .= <<<CODE
                             </div>
                        CODE;


                return $img;

            })
            ->addColumn('status',function($row){

                if($row->status){
                    $status = <<<CODE
                                <span class="badge badge-pill badge-lg badge-success">Active</span>
                            CODE;
                }else{
                    $status = <<<CODE
                                <span class="badge badge-pill badge-lg badge-danger">Disabled</span>
                            CODE;
                }
                return $status;

            })
            ->addColumn('actions',function($row){
                $delete_api = route('users.destroy',$row->id);
                $edit_api = route('users.edit',$row->id);
                $csrf = csrf_token();
                $show= route('users.show', $row);
                $action = <<<CODE
                <form method='POST' action='$delete_api' accept-charset='UTF-8' class='d-inline-block dform'>

                    <input name='_method' type='hidden' value='DELETE'><input name='_token' type='hidden' value='$csrf'>

                    <a class="btn btn-primary btn-sm m-1" data-toggle="tooltip" data-placement="top" title="View and edit user details" href="$show">
                    <i class="fa fa-eye" aria-hidden="true"></i>
                    </a>

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
            ->rawColumns(['email_verified_at_read','actions','profile_photo','status'])
            ->make(true);
        }
        // dd($bits);
        $title = 'Manage Bits';
        return view('bit.index', compact('bits', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create Bit';
        $ranges = Range::latest()->get();
        return view('bit.create', compact('ranges','title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BitRequest $request)
    {
        // $request->merge(['user_id' => Auth::user()->id]);
        Bit::create($request->except('_token'));
        flash('Bit created successfully!')->success();
        return redirect()->route('bit.index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Bit $bit)
    {
        $title = "Bit Details";
        $ranges = Range::latest()->get();
        return view('bit.edit', compact('title', 'bit','ranges'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Bit $bit)
    {
        $bit->update($request->all());
        flash('Bit updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Bit  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Bit $bit)
    {
        $bit->delete();
        flash('Bit deleted successfully!')->info();
        return back();
    }
}
