<?php

namespace App\Http\Controllers;

use App\Beneficiary;
use App\Garden;
use App\GardenBikrito;
use App\Http\Requests\PaymentRequest;
use App\Http\Requests\WoodLotRequest;
use App\WoodLot;
use App\WoodLotPaymentHistory;
use Illuminate\Http\Request;
use DataTables;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;


class WoodLotController extends Controller
{
    public function index(Request $request)
    {
        $woodlots = WoodLot::join('gardens','gardens.id','=','wood_lots.garden_id')
                    ->select('wood_lots.*')
                    ->where('gardens.range_id',Auth::user()->range_id)
                    ->latest()->get();


        if (request()->ajax()) {
            return DataTables::of($woodlots)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                if($row->created_at){
                    return $row->created_at->diffForHumans();
                }
                else{
                    return "No date available";
                }


            })
            ->addColumn('info_of_lot',function($row){
                $treetype = trans('sold_garden.tree_type') . ": " . $row->tree_type;
                $treecount = trans('sold_garden.tree_count') . ": " . $row->tree_count;
                $wood_amount_sft = trans('sold_garden.wood_amount_sft') . ": " . $row->wood_amount_sft;
                $fuel = trans('sold_garden.fuel') . ": " . $row->fuel;
                $bolli_count = trans('sold_garden.bolli_count') . ": " . $row->bolli_count;
                $info_lot = <<<CODE
                    $treetype <br>
                    $treecount <br>
                    $wood_amount_sft <br>
                    $fuel <br>
                    $bolli_count <br>
                CODE;

                return $info_lot;


            })
            ->addColumn('advance_details',function($row){
                $advance_detail = trans('sold_garden.advance_details') . ": " . $row->advance_details;
                $advance_amount = trans('sold_garden.advance_amount') . ": " . $row->advance_amount;
                $advance_details = <<<CODE
                    $advance_detail <br>
                    $advance_amount <br>
                CODE;
                return $advance_details;

            })
            ->addColumn('collateral_details',function($row){
                $collateral_detail = trans('sold_garden.collateral_details') . ": " . $row->collateral_details;
                $collateral_amount = trans('sold_garden.collateral_amount') . ": " . $row->collateral_amount;
                $collateral_details = <<<CODE
                    $collateral_detail <br>
                    $collateral_amount <br>
                CODE;

                return $collateral_details;

            })
            ->addColumn('actions',function($row){
                $delete_api = route('garden.woodlot.destroy',$row->id);
                $edit_api = route('garden.woodlot.edit',$row->id);
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
            ->rawColumns(['created_at_read','actions','info_of_lot','advance_details','collateral_details'])
            ->make(true);
        }
        // dd($bits);
        $title = 'Manage Wood Lot';
        return view('wood-lot.index', compact('woodlots', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create Wood Lot';
        // $gardens = DB::table('garden_bikritos')->where('range_id',Auth::user()->id)->latest()->get();
        $gardens = GardenBikrito::join('gardens','gardens.id','=','garden_bikritos.garden_id')
                    ->where('gardens.range_id',Auth::user()->range_id)
                    ->select('gardens.*')
                    ->latest()
                    ->get();
        return view('wood-lot.create', compact('gardens','title'));
    }

    public function lot_payment(Request $request){
        $gardens = GardenBikrito::join('gardens','gardens.id','=','garden_bikritos.garden_id')
        ->where('gardens.range_id',Auth::user()->range_id)
        ->select('gardens.*')
        ->latest()
        ->get();
        $woodlots = WoodLot::join('gardens','wood_lots.garden_id','=','gardens.id')
        ->join('ranges','ranges.id','gardens.range_id')
        ->join('forest_types', 'forest_types.id', '=', 'gardens.forest_type_id')
        ->join('districts', 'districts.id', '=', 'ranges.district_id')
        ->join('thanas', 'thanas.id', '=', 'ranges.thana_id')
        ->select('wood_lots.*','wood_lots.id as wood_lot_id','gardens.garden_size as garden_size','districts.name as district_name','thanas.name as thana_name','forest_types.name as forest_type_name')
        ->where('gardens.range_id',Auth::user()->range_id)
        ->latest('gardens.created_at')
        ->get();



        if (request()->ajax()) {

            $garden_id = str_replace(' ', '', $request->input('garden_id'));
            $range_or_center_lot_no_and_year = str_replace(' ', '', $request->input('range_or_center_lot_no_and_year'));

            $woodlots = WoodLot::join('gardens','wood_lots.garden_id','gardens.id')
            ->join('ranges','ranges.id','gardens.range_id')
            ->join('forest_types', 'forest_types.id', '=', 'gardens.forest_type_id')
            ->join('districts', 'districts.id', '=', 'ranges.district_id')
            ->join('thanas', 'thanas.id', '=', 'ranges.thana_id')
            ->select('wood_lots.*','gardens.garden_size as garden_size','districts.name as district_name','thanas.name as thana_name','forest_types.name as forest_type_name')
            ->when(!empty($garden_id), function ($query) use ($garden_id) {
                return $query->where('garden_id', $garden_id);
            })
            ->when(!empty($range_or_center_lot_no_and_year), function ($query) use ($range_or_center_lot_no_and_year) {
                return $query->where('range_lot_no_year', $range_or_center_lot_no_and_year);
            })
            ->where('gardens.range_id',Auth::user()->range_id)
            ->latest('gardens.created_at')
            ->get();


            return DataTables::of($woodlots)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                if($row->created_at){
                    return $row->created_at->diffForHumans();
                }
                else{
                    return "No date available";
                }


            })
            ->addColumn('garden_location',function($row){
                $districts = trans('lang.districts') . ": " . $row->district_name;
                $thana = trans('lang.thana') . ": " . $row->thana_name;
                $forest_type = trans('lang.forest_type') . ": " . $row->forest_type_name;
                $garden_location = <<<CODE
                    $districts <br>
                    $thana <br>
                    $forest_type <br>
                CODE;

                return $garden_location;


            })
            ->addColumn('actions',function($row){


                $prevWoodLotPayment = WoodLotPaymentHistory::where('wood_lot_id',$row->id)->latest()->sum('collection_amount');
                if($row->quoted_rate == $prevWoodLotPayment){
                    $action = <<<CODE
                    <a class='btn btn-success btn-sm m-1' data-toggle='tooltip' data-placement='top' title='' href='#' data-original-title='Collect Money details'>
                        Collection Completed
                    </a>
                    CODE;
                    // return back()->with('error', );
                }else{
                    $collect_money_api = route('woodlot.collect_money',$row->wood_lot_id);
                    $collect_money = trans('sold_garden.collect_money');
                    $action = <<<CODE
                    <a class='btn btn-info btn-sm m-1' data-toggle='tooltip' data-placement='top' title='' href='$collect_money_api' data-original-title='Collect Money details'>
                        $collect_money
                    </a>
                    CODE;
                }


                return $action;

            })
            ->rawColumns(['created_at_read','actions','garden_location'])
            ->make(true);
        }
        // dd($bits);
        $title = 'Manage Wood Lot';
        return view('wood-lot.lot_payment', compact('gardens','title','woodlots'));
    }



    public function payment()
    {
        $creationYears = Garden::select('creation_year')->pluck('creation_year', 'creation_year');
        $gardens = Garden::pluck('location', 'id');
        return view('wood-lot.payment', compact('gardens', 'creationYears'));
    }

    public function all_lot_payment(Request $request)
    {

        $gardens = GardenBikrito::join('gardens','gardens.id','=','garden_bikritos.garden_id')
        ->where('gardens.range_id',Auth::user()->range_id)
        ->select('gardens.*')
        ->latest()
        ->get();
        $woodlots = WoodLot::join('gardens','wood_lots.garden_id','=','gardens.id')
        ->join('ranges','ranges.id','gardens.range_id')
        ->join('forest_types', 'forest_types.id', '=', 'gardens.forest_type_id')
        ->join('districts', 'districts.id', '=', 'ranges.district_id')
        ->join('thanas', 'thanas.id', '=', 'ranges.thana_id')
        ->select('wood_lots.*','gardens.garden_size as garden_size','districts.name as district_name','thanas.name as thana_name','forest_types.name as forest_type_name')
        ->where('gardens.range_id',Auth::user()->range_id)
        ->latest('gardens.created_at')
        ->get();
        if (request()->ajax()) {

            $garden_id = str_replace(' ', '', $request->input('garden_id'));
            $range_or_center_lot_no_and_year = str_replace(' ', '', $request->input('range_or_center_lot_no_and_year'));

            $woodlotpayments = WoodLotPaymentHistory::join('wood_lots','wood_lot_payment_histories.wood_lot_id','wood_lots.id')
            ->join('gardens','wood_lots.garden_id','gardens.id')
            ->select('wood_lots.range_lot_no_year as range_lot_no_year','wood_lot_payment_histories.*','gardens.id as garden_id')
            ->when(!empty($garden_id), function ($query) use ($garden_id) {
                return $query->where('garden_id', $garden_id);
            })
            ->when(!empty($range_or_center_lot_no_and_year), function ($query) use ($range_or_center_lot_no_and_year) {
                return $query->where('range_lot_no_year', $range_or_center_lot_no_and_year);
            })
            ->where('gardens.range_id',Auth::user()->range_id)
            ->latest()
            ->get();

            return DataTables::of($woodlotpayments)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                if($row->created_at){
                    return $row->created_at->diffForHumans();
                }
                else{
                    return "No date available";
                }


            })
            ->addColumn('money_collection_slip_no_date',function($row){
                $money_slip_date_html = "";

                $money_collection_slip_no = "টাকা আদায়ের রশিদ নং: " . $row->money_collection_slip_no;
                if($row->money_collection_date){
                    $tarik = Carbon::parse($row->money_collection_date);
                    $tarik = "তারিখ: " . $tarik->diffForHumans();
                    $money_slip_date_html = <<<CODE
                                                    $tarik  <br>
                                                    $money_collection_slip_no <br>
                                                CODE;
                    return $money_slip_date_html;
                }
                else{
                    $money_slip_date_html = <<<CODE
                                                $money_collection_slip_no <br>
                                            CODE;
                    return $money_slip_date_html;
                }


            })
            ->addColumn('total_amount_collection',function($row){
                $vat = "VAT : " . $row->vat;
                $tax = "Tax : " . $row->tax;
                $lot_fee = "Lot fee : " . $row->collection_amount;
                $late_fees = "";
                if($row->late_fees){
                    $late_fees = "বিলম্ব ফি: " . $row->late_fees;
                }
                $money_slip_date_html = <<<CODE
                                                $vat  <br>
                                                $tax <br>
                                                $lot_fee <br>
                                                $late_fees <br>
                                            CODE;
                return $money_slip_date_html;


            })
            ->addColumn('actions',function($row){
                // $delete_api = route('garden.woodlot.destroy',$row->id);
                // $delete_api = route('garden.woodlot.destroy',$row->id);
                $edit_api = "";
                $delete_api = "";
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
            ->rawColumns(['created_at_read','actions','money_collection_slip_no_date','total_amount_collection'])
            ->make(true);
        }
        // dd($bits);
        $title = 'All Lot Payment';
        return view('wood-lot.all_lot_payment', compact('gardens','woodlots','title'));
    }

    public function collect_money($wood_lot_id)
    {
        $woodlot = WoodLot::find($wood_lot_id);
        dd($woodlot);
        return view('wood-lot.collect_money', compact('range_lot_year_no'));
    }


    public function payment_submit(PaymentRequest $request)
    {
        $woodlot = WoodLot::where('range_lot_no_year', $request->range_lot_no_year)->first();

        $prevWoodLotPayment = WoodLotPaymentHistory::where('wood_lot_id',$woodlot->id)->latest()->sum('collection_amount');

        $total_amount = $prevWoodLotPayment + $request->collection_amount;

        $left_amount = $woodlot->quoted_rate - $prevWoodLotPayment;
        if($woodlot->quoted_rate < $total_amount){
            flash('Collection Amount Cannot be Greater Than ' . $left_amount )->error();
            return redirect()->back();
            // return back()->with('error', );
        }

        WoodLotPaymentHistory::create([
            'wood_lot_id' => $woodlot->id,
            'money_collection_slip_no' => $request->money_collection_slip_no,
            'money_collection_date' => $request->money_collection_date,
            'collection_amount' => $request->collection_amount,
            'vat' => $request->vat,
            'tax' => $request->tax,
            'late_fees' => $request->late_fees,
            'created_by' => Auth::user()->id,
        ]);
        return back()->with('success', 'Woodlot Payment added successfully against ' . $request->range_lot_no_year);

        // return 'Submitted';
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(WoodLotRequest $request)
    {
        // $request->merge(['user_id' => Auth::user()->id]);
        $prevlot = WoodLot::where('garden_id',$request->garden_id)->count();
        $lot_limit = GardenBikrito::where('garden_id',$request->garden_id)->first();
        if($lot_limit->total_lot_count <= $prevlot){
            flash('Lot limit Full')->error();
            return redirect()->back();
        }
        WoodLot::create($request->except('_token'));
        flash('Woodlot created successfully!')->success();
        return redirect()->route('garden.woodlot.index');
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
    public function update(WoodLotRequest $request, Beneficiary $beneficiary)
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
