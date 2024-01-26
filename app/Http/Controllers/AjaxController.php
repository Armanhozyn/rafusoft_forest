<?php

namespace App\Http\Controllers;

use App\BitInThana;
use App\BitInUnion;
use App\Garden;
use App\GardenInformation;
use App\Institute;
use App\Party;
use App\PartyInGarden;
use App\Range;
use App\RangeInUnion;
use App\RangeThana;
use App\Thana;
use App\UnionParishad;
use App\User;
use App\WoodLot;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AjaxController extends Controller
{
    public function getUpazillaByDistrict($districtId)
    {
        // dd($districtId);
        $districtList = Thana::where('district_id', $districtId)->pluck('name', 'id');;

        $data = [
            'success' => true,
            'data' => $districtList,
            'message' => 'Upazilla list fetched successfully',
        ];

        // Using the response() helper function
        return response()->json($data, 200, [], JSON_UNESCAPED_UNICODE);

        // Using the Response class
        // return new Response(json_encode($data), 200, ['Content-Type' => 'application/json']);
    }

    public function getWoodLotByGarden($garden_id)
    {
        // dd($districtId);
        $gardenlist = WoodLot::where('garden_id', $garden_id)->pluck('range_lot_no_year', 'range_lot_no_year');;

        $data = [
            'success' => true,
            'data' => $gardenlist,
            'message' => 'Woodlot list fetched successfully',
        ];

        // Using the response() helper function
        return response()->json($data, 200, [], JSON_UNESCAPED_UNICODE);

        // Using the Response class
        // return new Response(json_encode($data), 200, ['Content-Type' => 'application/json']);
    }

    public function GardenByBit($bit_id)
    {
        // dd($districtId);
        $gardenlist = Garden::where('bit_id', $bit_id)->pluck('id', 'id');

        $data = [
            'success' => true,
            'data' => $gardenlist,
            'message' => 'Woodlot list fetched successfully',
        ];

        // Using the response() helper function
        return response()->json($data, 200, [], JSON_UNESCAPED_UNICODE);

        // Using the Response class
        // return new Response(json_encode($data), 200, ['Content-Type' => 'application/json']);
    }

    public function instituteByParty($party_id)
    {
        // dd($districtId);
        $intituteList = Institute::where('party_id', $party_id)->pluck('name', 'id');

        $data = [
            'success' => true,
            'data' => $intituteList,
            'message' => 'Intitute list fetched successfully',
        ];

        // Using the response() helper function
        return response()->json($data, 200, [], JSON_UNESCAPED_UNICODE);

        // Using the Response class
        // return new Response(json_encode($data), 200, ['Content-Type' => 'application/json']);
    }

    public function instituteByLot($party_id,$lot_id)
    {
        $woodlot = WoodLot::join('gardens','wood_lots.garden_id' ,'=' , 'gardens.id')
        ->where('wood_lots.id','=',$lot_id)
        ->select('gardens.id as garden_id')
        ->first();

        $garden_id = $woodlot->garden_id;
        if($party_id == 4 ){
            $ifExistPartyInGardens = PartyInGarden::where(['party_id' => 4,'garden_id' => $garden_id])->first();
            if($ifExistPartyInGardens){
                $party_in_gardens = UnionParishad::join('range_in_unions', 'union_parishads.id', '=', 'range_in_unions.union_parishad_id')
                ->where('range_in_unions.range_id', '=', Auth::user()->range_id)
                ->select('union_parishads.*') // Select the columns you want from the unionparishod table
                ->pluck('name', 'id');
            }else{
                $party_in_gardens = [];
            }
        }else{
            $party_in_gardens = PartyInGarden::join('institutes','party_in_gardens.institute_id' ,'=','institutes.id')
            ->where(["party_in_gardens.garden_id" => $garden_id,'party_in_gardens.party_id' => $party_id])
            ->groupBy('party_in_gardens.institute_id')
            ->pluck('institutes.name','institutes.id');
        }

        $data = [
            'success' => true,
            'data' => $party_in_gardens,
            'message' => 'Intitute list fetched successfully',
        ];

        // Using the response() helper function
        return response()->json($data, 200, [], JSON_UNESCAPED_UNICODE);

    }

    public function getUnionByUpazilla(Request $request)
    {
        // dd($districtId);
        $districtList = UnionParishad::whereIn('thana_id', $request->unionIds)->pluck('name', 'id');;

        $data = [
            'success' => true,
            'data' => $districtList,
            'message' => 'Union parishad list fetched successfully',
        ];

        // Using the response() helper function
        return response()->json($data, 200, [], JSON_UNESCAPED_UNICODE);

        // Using the Response class
        // return new Response(json_encode($data), 200, ['Content-Type' => 'application/json']);
    }

    public function getGardenInfo($gardenId)
    {
        $gardenInfo = GardenInformation::with('garden_type', 'thana', 'union', 'union.union', 'district')->where('id', $gardenId)->first();
        $data = [
            'success' => true,
            'data' => $gardenInfo,
            'message' => 'Garden information fetched successfully',
        ];

        // Using the response() helper function
        return response()->json($data, 200, [], JSON_UNESCAPED_UNICODE);
    }

    public function getRangeById($rangeId){

        $districts = Range::join('districts','ranges.district_id','=','districts.id')
                    ->where('ranges.id',$rangeId)
                    ->select('districts.id as district_id','districts.name as district_name')
                    ->pluck('district_name','district_id');


        $thanas = RangeThana::join('thanas','thanas.id','=','range_thanas.thana_id')
                    ->where('range_thanas.range_id' , '=',$rangeId)
                    ->select('thanas.id as thana_id','thanas.name as thana_name')
                    ->pluck('thana_name','thana_id');

        $unions = RangeInUnion::join('union_parishads','union_parishads.id','=','range_in_unions.union_parishad_id')
        ->where('range_in_unions.range_id' , '=',$rangeId)
        ->select('union_parishads.id as union_parishad_id', 'union_parishads.name as union_parishad_name')
        ->pluck('union_parishad_name', 'union_parishad_id');

        $data = [
            'success' => true,
            'districts' => $districts,
            'thanas' => $thanas,
            'unions' => $unions,
            'message' => 'Range list fetched successfully',
        ];

        // Using the response() helper function
        return response()->json($data, 200, [], JSON_UNESCAPED_UNICODE);

    }

    public function getRangeByBitId($bitId){

        $districts = User::join('districts','users.district_id','=','districts.id')
                    ->where('users.id',$bitId)
                    ->select('districts.id as district_id','districts.name as district_name')
                    ->pluck('district_name','district_id');


        $thanas = BitInThana::join('thanas','thanas.id','=','bit_in_thanas.thana_id')
                    ->where('bit_in_thanas.bit_id' , '=',$bitId)
                    ->select('thanas.id as thana_id','thanas.name as thana_name')
                    ->pluck('thana_name','thana_id');

        $unions = BitInUnion::join('union_parishads','union_parishads.id','=','bit_in_unions.union_id')
        ->where('bit_in_unions.bit_id' , '=',$bitId)
        ->select('union_parishads.id as union_parishad_id', 'union_parishads.name as union_parishad_name')
        ->pluck('union_parishad_name', 'union_parishad_id');

        $data = [
            'success' => true,
            'districts' => $districts,
            'thanas' => $thanas,
            'unions' => $unions,
            'message' => 'Range list fetched successfully',
        ];

        // Using the response() helper function
        return response()->json($data, 200, [], JSON_UNESCAPED_UNICODE);

    }
}
