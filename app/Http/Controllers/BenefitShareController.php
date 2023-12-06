<?php

namespace App\Http\Controllers;

use App\Benefit_share;
use App\Benefit_share_payments;
use App\Garden;
use App\GardenBikrito;
use App\Http\Requests\BeneficiaryRequest;
use App\Http\Requests\BenefitShareRequest;
use App\Http\Requests\GardenBikritoRequest;
use App\Party;
use App\UnionParishad;
use App\User;
use App\WoodLot;
use App\WoodLotPaymentHistory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use DataTables;

class BenefitShareController extends Controller
{

    public function benefit_share(Request $request){
        $gardens = DB::table('gardens')->latest()->get();
        $bitList = User::latest()->role('বীট')->get();

        $startYear = 2000;
        $endYear = date('Y');

        $years = range($startYear, $endYear);
        $yearPairs = array_map(function ($year) {
            return $year . '-' . ($year + 1);
        }, $years);

        $yearPairs = array_combine($yearPairs, $yearPairs);

        if (request()->ajax()) {

            $garden_id = str_replace(' ', '', $request->input('garden_id'));
            $bit_id = str_replace(' ', '', $request->input('bit_id'));

            $user = Auth::user();
            if ($user->hasRole('super-admin')) {

                $gardens = Garden::join('ranges','ranges.id','gardens.range_id')
                ->join('forest_types', 'forest_types.id', '=', 'gardens.forest_type_id')
                ->join('projects', 'projects.id', '=', 'gardens.project_id')
                ->join('districts', 'districts.id', '=', 'ranges.district_id')
                ->join('thanas', 'thanas.id', '=', 'ranges.thana_id')
                ->select('gardens.*','gardens.id as garden_id','ranges.name as range_name','districts.name as district_name','thanas.name as thana_name','forest_types.name as forest_type_name','projects.name as project_name')
                ->when(!empty($garden_id), function ($query) use ($garden_id) {
                    return $query->where('gardens.id', $garden_id);
                })
                ->when(!empty($bit_id), function ($query) use ($bit_id) {
                    return $query->where('bit_id', $bit_id);
                })
                ->latest('gardens.created_at')
                ->get();
            }else{
                $gardens = Garden::join('ranges','ranges.id','gardens.range_id')
                ->join('forest_types', 'forest_types.id', '=', 'gardens.forest_type_id')
                ->join('projects', 'projects.id', '=', 'gardens.project_id')
                ->join('districts', 'districts.id', '=', 'ranges.district_id')
                ->join('thanas', 'thanas.id', '=', 'ranges.thana_id')
                ->select('gardens.*','gardens.id as garden_id','ranges.name as range_name','districts.name as district_name','thanas.name as thana_name','forest_types.name as forest_type_name','projects.name as project_name')
                ->where('gardens.range_id',$user->range_id)
                ->when(!empty($garden_id), function ($query) use ($garden_id) {
                    return $query->where('gardens.id', $garden_id);
                })
                ->when(!empty($bit_id), function ($query) use ($bit_id) {
                    return $query->where('bit_id', $bit_id);
                })
                ->latest('gardens.created_at')
                ->get();
            }
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
            ->addColumn('lot_count',function($row){
                $woodlots = WoodLot::where('garden_id',$row->id)->count();

                return $woodlots;
            })
            ->addColumn('total_sell',function($row){
                $woodlots = WoodLot::where('garden_id',$row->id)->first();
                if($woodlots){
                    $woodlotPayments = WoodLotPaymentHistory::where('wood_lot_id',$woodlots->id)->latest()->get();

                    $total_sell = 0;

                    foreach ($woodlotPayments as $wlp) {
                        $total_sell = $total_sell + $wlp->collection_amount;
                    }
                    return $total_sell;
                }else{
                    return 0;
                }

            })
            ->addColumn('actions',function($row){
                $benefit_share_api = route('benefit.share.create',$row->id);
                $sell_garden = trans('sold_garden.benefit_share');
                // $collect_money = trans('sold_garden.collect_money');
                $action = <<<CODE
                <a class='btn btn-info btn-sm m-1' data-toggle='tooltip' data-placement='top' title='' href='$benefit_share_api' data-original-title='Collect Money details'>
                    $sell_garden
                </a>
                CODE;

                return $action;

            })
            ->rawColumns(['created_at_read','actions','garden_location','yearPairs','lot_count','total_sell'])
            ->make(true);
        }
        // dd($bits);
        $title = 'Manage Wood Lot';
        return view('benefit_share.benefit_share', compact('gardens','title','bitList'));
    }



    public function benefit_share_list(Request $request){
        if (request()->ajax()) {

            $user = Auth::user();
            $benefit_share = Benefit_share::join('gardens','gardens.id','benefit_shares.garden_id')
            ->select('benefit_shares.*')
            ->where('gardens.range_id',$user->range_id)
            ->latest()
            ->get();
            // $woodlots = WoodLot::join('gardens','wood_lots.garden_id','gardens.id')
            // ->join('ranges','ranges.id','gardens.range_id')
            // ->join('forest_types', 'forest_types.id', '=', 'gardens.forest_type_id')
            // ->join('districts', 'districts.id', '=', 'ranges.district_id')
            // ->join('thanas', 'thanas.id', '=', 'ranges.thana_id')
            // ->select('wood_lots.*','gardens.garden_size as garden_size','districts.name as district_name','thanas.name as thana_name','forest_types.name as forest_type_name')
            // ->when(!empty($garden_id), function ($query) use ($garden_id) {
            //     return $query->where('garden_id', $garden_id);
            // })
            // ->when(!empty($range_or_center_lot_no_and_year), function ($query) use ($range_or_center_lot_no_and_year) {
            //     return $query->where('range_lot_no_year', $range_or_center_lot_no_and_year);
            // })
            // ->latest('gardens.created_at')
            // ->get();


            return DataTables::of($benefit_share)
            ->addIndexColumn()
            ->addColumn('created_at_read',function($row){
                if($row->created_at){
                    return $row->created_at->diffForHumans();
                }
                else{
                    return "No date available";
                }


            })
            ->addColumn('institutes',function($row){
                $institutes = "";
                $benefit_payments = Benefit_share_payments::join('institutes','institutes.id' ,'=','benefit_share_payments.institute_id')
                ->select('benefit_share_payments.*','institutes.name as institute_name')
                ->where('benefit_share_id',$row->id)
                ->latest()->get();
                foreach ($benefit_payments as $bp) {
                    $institutes .= <<<CODE
                                        $bp->institute_name  <br>
                                    CODE;
                }
                return $institutes;


            })
            ->addColumn('amount',function($row){
                $amount = 0;
                $benefit_payments = Benefit_share_payments::where('benefit_share_id',$row->id)->latest()->get();
                foreach ($benefit_payments as $bp) {
                    $amount = $amount + $bp->amount;
                }
                return $amount;

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
            ->rawColumns(['created_at_read','actions','institutes','amount'])
            ->make(true);
        }
        // dd($bits);
        $title = 'Manage Benefit Share';
        return view('benefit_share.benefit_share_list', compact('title'));
    }


    public function benefit_share_create($garden_id)
    {
        $parties = Party::latest()->pluck('name', 'id');
        $unions = UnionParishad::join('range_in_unions', 'union_parishads.id', '=', 'range_in_unions.union_parishad_id')
        ->where('range_in_unions.range_id', '=', Auth::user()->range_id)
        ->select('union_parishads.*') // Select the columns you want from the unionparishod table
        ->pluck('name', 'id');
        return view('benefit_share.create', compact('garden_id','parties','unions'));
    }

    public function benefit_share_store(BenefitShareRequest $request){



        $create = Benefit_share::create($request->except('_token', 'parties'));
        $parties = $request->parties;

        if ($create && !empty($parties)) {
            $partiesArray = json_decode($parties, true);
            $keysMap = [
                "পক্ষগণ" => "party_id",
                "প্রতিষ্ঠান/সংস্থার নাম" => "institute_id",
                "প্রাপ্ত লভ্যাংশ" => "amount",
                "মন্তব্য (যদি থাকে)" => "comment",
                "benefit_share_id" => "benefit_share_id"
            ];
            $replaceKeys = function ($subArray) use ($keysMap,$create) {

                $subArray['benefit_share_id'] = $create->id;
                $updatedKeys = array_map(function ($key) use ($keysMap) {
                    return $keysMap[$key] ?? $key;
                }, array_keys($subArray));

                return array_combine($updatedKeys, array_values($subArray));
            };

            $updatedArray = array_map($replaceKeys, $partiesArray);


            // dd($updatedArray);
            Benefit_share_payments::insert($updatedArray);

            flash('Benefit Share successfully completed!')->success();
            return redirect()->back();
        }


        flash('Parties are Empty!!')->info();
        return redirect()->back();
    }

}
