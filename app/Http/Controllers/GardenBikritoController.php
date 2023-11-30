<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GardenBikritoController extends Controller
{

    public function garden_bikrito(Request $request){
        $gardens = DB::table('gardens')->latest()->get();
        $bitList = User::latest()->role('বীট')->get();
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
                $collect_money_api = route('woodlot.collect_money',$row->range_lot_no_year);
                $collect_money = trans('sold_garden.collect_money');
                $action = <<<CODE

                <a class='btn btn-info btn-sm m-1' data-toggle='tooltip' data-placement='top' title='' href='$collect_money_api' data-original-title='Collect Money details'>
                    $collect_money
                </a>
                CODE;

                return $action;

            })
            ->rawColumns(['created_at_read','actions','garden_location'])
            ->make(true);
        }
        // dd($bits);
        $title = 'Manage Wood Lot';
        return view('wood-lot.lot_payment', compact('gardens','title','woodlots'));
    }

}
