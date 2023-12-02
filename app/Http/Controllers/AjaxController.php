<?php

namespace App\Http\Controllers;

use App\Garden;
use App\GardenInformation;
use App\Institute;
use App\Party;
use App\PartyInGarden;
use App\Thana;
use App\UnionParishad;
use App\WoodLot;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;

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
        dd($garden_id);
        if($party_id == 4 ){
            $party_in_gardens = UnionParishad::join('range_in_unions', 'union_parishads.id', '=', 'range_in_unions.union_parishad_id')
            ->where('range_in_unions.range_id', '=', Auth::user()->range_id)
            ->select('union_parishads.*') // Select the columns you want from the unionparishod table
            ->pluck('name', 'id');
        }else{
            $party_in_gardens = PartyInGarden::join('institutes','party_in_gardens.institute_id' ,'=','institutes.id')
            ->where(["party_in_gardens.garden_id" => $garden_id,'party_in_gardens.party_id' => $party_id])
            ->groupBy('party_in_gardens.institute_id')
            ->pluck('institutes.name','institutes.id');
        }
       
        // $intituteList = Institute::where('party_id', $party_id)->pluck('name', 'id');
        // dd($party_in_gardens);
       
        $data = [
            'success' => true,
            'data' => $party_in_gardens,
            'message' => 'Intitute list fetched successfully',
        ];

        // Using the response() helper function
        return response()->json($data, 200, [], JSON_UNESCAPED_UNICODE);

        // Using the Response class
        // return new Response(json_encode($data), 200, ['Content-Type' => 'application/json']);
    }

    public function getUnionByUpazilla($upazillaId)
    {
        // dd($districtId);
        $districtList = UnionParishad::where('thana_id', $upazillaId)->pluck('name', 'id');;

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
}
