<?php

namespace App\Http\Controllers;

use App\Beneficiary;
use App\Http\Requests\BeneficiaryRequest;
use Illuminate\Http\Request;
use DataTables;
use Illuminate\Support\Facades\DB;

class BeneficiaryController extends Controller
{
    public function index(Request $request)
    {
        $beneficiaries = Beneficiary::join('gardens', 'gardens.id', '=', 'beneficiaries.garden_id')
        // ->join('gardens', 'gardens.id', '=', 'beneficiaries.garden_id')
        ->select('beneficiaries.*')
        ->latest()
        ->get();


        if (request()->ajax()) {
            return DataTables::of($beneficiaries)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                return $row->created_at->diffForHumans();

            })
            ->addColumn('actions',function($row){
                $delete_api = route('beneficiary.destroy',$row->id);
                $edit_api = route('beneficiary.edit',$row->id);
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
        $title = 'Manage Beneficiary';
        return view('beneficiary.index', compact('beneficiaries', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create Beneficiary';
        $gardens = DB::table('gardens')->latest()->get();
        return view('beneficiary.create', compact('gardens','title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BeneficiaryRequest $request)
    {
        // $request->merge(['user_id' => Auth::user()->id]);
        Beneficiary::create($request->except('_token'));
        flash('Beneficiary created successfully!')->success();
        return redirect()->route('beneficiary.index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Beneficiary  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Beneficiary $beneficiary)
    {
        $title = "Beneficiary Details";
        $gardens = DB::table('gardens')->latest()->get();
        return view('beneficiary.edit', compact('title', 'beneficiary','gardens'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Beneficiary  $category
     * @return \Illuminate\Http\Response
     */
    public function update(BeneficiaryRequest $request, Beneficiary $beneficiary)
    {
        $beneficiary->update($request->all());
        flash('Bit updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Beneficiary  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Beneficiary $beneficiary)
    {
        $beneficiary->delete();
        flash('Beneficiary deleted successfully!')->info();
        return back();
    }
}
