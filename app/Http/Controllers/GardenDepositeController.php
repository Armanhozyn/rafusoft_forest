<?php

namespace App\Http\Controllers;

use App\Garden;
use App\GardenBikrito;
use App\Http\Requests\GardenBikritoRequest;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use DataTables;

class GardenBikritoController extends Controller
{

    public function garden_deposite(Request $request){
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
            ->addColumn('actions',function($row){
                $collect_money_api = route('garden.sell.creat',$row->id);
                $sell_garden = trans('sold_garden.sell_garden');
                // $collect_money = trans('sold_garden.collect_money');
                $action = <<<CODE

                <a class='btn btn-info btn-sm m-1' data-toggle='tooltip' data-placement='top' title='' href='$collect_money_api' data-original-title='Collect Money details'>
                    $sell_garden
                </a>
                CODE;

                return $action;

            })
            ->rawColumns(['created_at_read','actions','garden_location','yearPairs'])
            ->make(true);
        }
        // dd($bits);
        $title = 'Manage Wood Lot';
        return view('garden_bikrito.garden_bikrito', compact('gardens','title','bitList'));
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
        return view('garden_bikrito.garden_bikrito_list', compact('title'));
    }


    public function garden_deposite_create($garden_id)
    {
        $startYear = 2000;
        $endYear = date('Y');

        $years = range($startYear, $endYear);
        $yearPairs = array_map(function ($year) {
            return $year . '-' . ($year + 1);
        }, $years);

        $yearPairs = array_combine($yearPairs, $yearPairs);
        return view('garden_bikrito.create', compact('garden_id','yearPairs'));
    }

    public function garden_deposite_store(GardenBikritoRequest $request){
        // $request->merge(['user_id' => Auth::user()->id]);
        $garden_bikrito = GardenBikrito::create($request->except('_token'));
        flash('Garden Sold Successfully!')->success();
        return redirect()->route('garden.bikrito');
    }

}
