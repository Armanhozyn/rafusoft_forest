<?php

namespace App\Http\Controllers;

use App\Garden;
use App\GardenBikrito;
use App\Http\Requests\GardenBikritoRequest;
use App\Party;
use App\UnionParishad;
use App\User;
use App\WoodLot;
use App\WoodLotPayment;
use App\WoodLotPaymentHistory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use DataTables;

class WoodlotDepositeController extends Controller
{

    public function woodlot_deposite(Request $request){
        $gardens = DB::table('gardens')->latest()->get();
        $woodlots = WoodLot::join('gardens','wood_lots.garden_id','gardens.id')
        ->join('ranges','ranges.id','gardens.range_id')
        ->join('forest_types', 'forest_types.id', '=', 'gardens.forest_type_id')
        ->join('districts', 'districts.id', '=', 'ranges.district_id')
        ->join('thanas', 'thanas.id', '=', 'ranges.thana_id')
        ->select('wood_lots.*','gardens.garden_size as garden_size','districts.name as district_name','thanas.name as thana_name','forest_types.name as forest_type_name')
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
            ->select('wood_lots.*','gardens.location as garden_location','gardens.garden_size as garden_size','districts.name as district_name','thanas.name as thana_name','forest_types.name as forest_type_name')
            ->when(!empty($garden_id), function ($query) use ($garden_id) {
                return $query->where('garden_id', $garden_id);
            })
            ->when(!empty($range_or_center_lot_no_and_year), function ($query) use ($range_or_center_lot_no_and_year) {
                return $query->where('range_lot_no_year', $range_or_center_lot_no_and_year);
            })
            ->latest('gardens.created_at')
            ->get();
            return DataTables::of($woodlots)
            ->addIndexColumn()
            ->addColumn('money_collection_slip_no',function($row){
                $payments = WoodLotPaymentHistory::where('wood_lot_id' ,'=', $row->id)->latest()->get();
                // dd();
                $html = "";
                foreach ($payments as $payment) {
                    $roshid_no = $payment->money_collection_slip_no;
                    $html .= <<<CODE
                                $roshid_no,  <br>
                            CODE;
                }
                // // $collect_money = trans('sold_garden.collect_money');
                
                return $html;

            })
            ->addColumn('total_money_recoverd',function($row){
                $payments = WoodLotPaymentHistory::where('wood_lot_id' ,'=', $row->id)->latest()->get();
                // dd();
                $total_money_recoverd = 0;
                foreach ($payments as $payment) {
                    $collection_amount = $payment->collection_amount;
                    $total_money_recoverd = $total_money_recoverd + $collection_amount; 
                }
                // // $collect_money = trans('sold_garden.collect_money');
                $html = <<<CODE
                                $total_money_recoverd
                            CODE;
                return $html;

            })
            ->addColumn('created_at_read',function($row){
                if($row->created_at){
                    return $row->created_at->diffForHumans();
                }
                else{
                    return "No date available";
                }


            })
            ->addColumn('actions',function($row){
                $woodlot_deposite_api = route('woodlot.diposite.create',$row->id);
                $woodlot_deposite = trans('sold_garden.woodlot_deposite');
                // $collect_money = trans('sold_garden.collect_money');
                $action = <<<CODE
                <a class='btn btn-info btn-sm m-1' data-toggle='tooltip' data-placement='top' title='' href='$woodlot_deposite_api' data-original-title='Collect Money details'>
                    $woodlot_deposite
                </a>
                CODE;

                return $action;

            })
            ->rawColumns(['created_at_read','actions','gardens','woodlots','money_collection_slip_no','total_money_recoverd'])
            ->make(true);
        }
        // dd($bits);
        $title = 'Manage Wood Lot';
        return view('woodlot_deposite.woodlot_deposite', compact('gardens','woodlots','title'));
    }



    public function garden_deposite_list(Request $request){
        if (request()->ajax()) {

            $user = Auth::user();
            $gardens = GardenBikrito::join('gardens','gardens.id','garden_bikritos.garden_id')
            ->select('gardens.*','garden_bikritos.*')
            ->where('gardens.range_id',$user->range_id)
            ->latest('garden_bikritos.created_at')
            ->get();
            return DataTables::of($gardens)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                if($row->created_at){
                    return $row->created_at->diffForHumans();
                }
                else{
                    return "No date available";
                }


            })
            ->addColumn('actions',function($row){
                $collect_money_api = route('garden.sell.creat',$row->id);
                $sell_garden = trans('sold_garden.sell_garden');
                // $collect_money = trans('sold_garden.collect_money');
                // $action = <<<CODE

                // <a class='btn btn-info btn-sm m-1' data-toggle='tooltip' data-placement='top' title='' href='$collect_money_api' data-original-title='Collect Money details'>
                //     $sell_garden
                // </a>
                // CODE;

                $action = <<<CODE
                    Soon Coming
                CODE;
                return $action;

            })
            ->rawColumns(['created_at_read','actions','garden_location','yearPairs'])
            ->make(true);
        }
        // dd($bits);
        $title = 'Manage Wood Lot';
        return view('garden_deposite.garden_deposite_list', compact('title'));
    }


    public function woodlot_deposite_create($lot_id)
    {
        $unions = UnionParishad::join('range_in_unions', 'union_parishads.id', '=', 'range_in_unions.union_parishad_id')
        ->where('range_in_unions.range_id', '=', Auth::user()->range_id)
        ->select('union_parishads.*') // Select the columns you want from the unionparishod table
        ->pluck('name', 'id');

        $parties = Party::latest()->pluck('name', 'id');
        
        return view('woodlot_deposite.create', compact('lot_id','parties','unions'));
    }

    public function garden_deposite_store(GardenBikritoRequest $request){
        // $request->merge(['user_id' => Auth::user()->id]);
        $garden_bikrito = GardenBikrito::create($request->except('_token'));
        flash('Garden Sold Successfully!')->success();
        return redirect()->route('garden.deposite');
    }

}
