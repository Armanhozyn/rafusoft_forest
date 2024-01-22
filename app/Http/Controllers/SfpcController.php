<?php

namespace App\Http\Controllers;

use App\Sfpc;
use App\Http\Requests\SfpcRequest;
use App\Range;
use App\User;
use Illuminate\Http\Request;
use DataTables;
use Spatie\Permission\Models\Role;

class SfpcController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $sfpcs = User::role('sfpc')->get();

        // dd($sfpcs);
        if (request()->ajax()) {
            return DataTables::of($sfpcs)
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
        $title = 'এসএফপিসি পরিচালনা করুন';
        return view('sfpc.index', compact('sfpcs', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'এসএফপিসি তৈরি করুন';
        $ranges = Range::latest()->get();

        return view('sfpc.create', compact('ranges','title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SfpcRequest $request)
    {
        // $request->merge(['user_id' => Auth::user()->id]);
        $user = User::create($request->except('_token'));
        $user->assignRole('sfpc');
        flash('এসএফপিসি created successfully!')->success();
        return redirect()->route('sfpc.index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Sfpc $sfpc)
    {
        $title = "এসএফপিসি বিস্তারিত";
        $ranges = Range::latest()->get();
        return view('sfpc.edit', compact('title', 'sfpc','ranges'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Sfpc $sfpc)
    {
        $sfpc->update($request->all());
        flash('এসএফপিসি updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Sfpc  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Sfpc $sfpc)
    {
        $sfpc->delete();
        flash('এসএফপিসি deleted successfully!')->info();
        return back();
    }
}
