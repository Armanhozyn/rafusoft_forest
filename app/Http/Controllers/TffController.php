<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Benefit_share;
use App\Benefit_share_payments;
use App\Garden;
use App\Http\Requests\BenefitShareRequest;
use App\Http\Requests\TffRequest;
use App\Party;
use App\Tff;
use App\UnionParishad;
use App\User;
use App\WoodLot;
use App\WoodLotPaymentHistory;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use DataTables;

class TffController extends Controller
{
    public function tff(Request $request){
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
                $woodlots = WoodLot::where('garden_id',$row->id)->latest()->get();
                if($woodlots){
                    $total_sell = 0;

                    foreach ($woodlots as $wl) {
                        $woodlotPayments = WoodLotPaymentHistory::where('wood_lot_id',$wl->id)->latest()->sum('collection_amount');
                        $total_sell = $total_sell + $woodlotPayments;
                    }
                    return $total_sell;
                }else{
                    return 0;
                }

            })
            ->addColumn('actions',function($row){
                $benefit_share_api = route('tff.create',$row->id);
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
        $title = 'Manage Tff';
        return view('tff.tff', compact('gardens','title','bitList'));
    }



    public function tff_list(Request $request){
        if (request()->ajax()) {

            $user = Auth::user();
            $tff = Tff::join('gardens','gardens.id','tffs.garden_id')
            ->select('tffs.*')
            ->where('gardens.range_id',$user->range_id)
            ->latest()
            ->get();

            return DataTables::of($tff)
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
            ->rawColumns(['created_at_read','actions'])
            ->make(true);
        }
        // dd($bits);
        $title = 'Manage Benefit Share';
        return view('tff.tff_list', compact('title'));
    }


    public function tff_create($garden_id)
    {
        $parties = Party::latest()->pluck('name', 'id');
        $unions = UnionParishad::join('range_in_unions', 'union_parishads.id', '=', 'range_in_unions.union_parishad_id')
        ->where('range_in_unions.range_id', '=', Auth::user()->range_id)
        ->select('union_parishads.*') // Select the columns you want from the unionparishod table
        ->pluck('name', 'id');
        return view('tff.create', compact('garden_id','parties','unions'));
    }

    public function tff_store(TffRequest $request){



        $create = Tff::create($request->except('_token', 'parties'));
        if($create){
            flash('Tff successfully completed!')->success();
            return redirect()->back();
        }
        flash('Parties are Empty!!')->info();
        return redirect()->back();
    }
}
