<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\WoodLotPaymentHistory;

use Illuminate\Support\Facades\Auth;
use App\Http\Requests\PaymentHistoryRequest;
use App\Http\Requests\WoodLotPaymentHistoryRequest;

class PaymentHistoryController extends Controller
{
    public function __construct()
    {

        $this->middleware('permission:view-WoodLotPaymentHistory');
        $this->middleware('permission:create-WoodLotPaymentHistory', ['only' => ['create', 'store']]);
        $this->middleware('permission:update-WoodLotPaymentHistory', ['only' => ['edit', 'update']]);
        $this->middleware('permission:destroy-WoodLotPaymentHistory', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->has('search')) {
            $list = WoodLotPaymentHistory::with(['woodlot'])->where('WoodLotPaymentHistory_name', 'like', '%' . $request->search . '%')->paginate(setting('record_per_page', 15));
        } else {
            $list = WoodLotPaymentHistory::with(['woodlot'])->paginate(setting('record_per_page', 15));
        }
        $title = 'Payment History List';
        return view('payment_history.index', compact('list', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create WoodLotPaymentHistory';
        return view('payment_history.create', compact('title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PaymentHistoryRequest $request)
    {
        $request->merge(['user_id' => Auth::user()->id]);
        WoodLotPaymentHistory::create($request->all());
        flash('WoodLotPaymentHistory created successfully!')->success();
        return redirect()->route('payment_history.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\WoodLotPaymentHistory  $WoodLotPaymentHistory
     * @return \Illuminate\Http\Response
     */
    public function show(WoodLotPaymentHistory $WoodLotPaymentHistory)
    {
        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\WoodLotPaymentHistory  $WoodLotPaymentHistory
     * @return \Illuminate\Http\Response
     */
    public function edit(WoodLotPaymentHistory $WoodLotPaymentHistory)
    {
        $title = "WoodLotPaymentHistory Details";
        $WoodLotPaymentHistory->with('user');
        return view('payment_history.edit', compact('title', 'WoodLotPaymentHistory'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\WoodLotPaymentHistory  $WoodLotPaymentHistory
     * @return \Illuminate\Http\Response
     */
    public function update(PaymentHistoryRequest $request, WoodLotPaymentHistory $WoodLotPaymentHistory)
    {
        $WoodLotPaymentHistory->update($request->all());
        flash('WoodLotPaymentHistory updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\WoodLotPaymentHistory  $WoodLotPaymentHistory
     * @return \Illuminate\Http\Response
     */
    public function destroy(WoodLotPaymentHistory $WoodLotPaymentHistory)
    {
        $WoodLotPaymentHistory->delete();
        flash('WoodLotPaymentHistory deleted successfully!')->info();
        return back();
    }
}
