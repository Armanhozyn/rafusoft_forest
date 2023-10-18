<?php

namespace App\Http\Controllers;

use App\Garden;
use App\Country;
use App\Project;
use App\WoodLot;
use App\GardenType;
use App\Http\Requests\BanklDepositeRequest;
use App\UnionParishad;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Row;
use Illuminate\Http\Request;
use App\WoodLotPaymentHistory;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Requests\CountryRequest;
use App\Http\Requests\PaymentRequest;
use App\Http\Requests\WoodLotRequest;
use App\TreeSpeciesInformation;
use PhpOffice\PhpSpreadsheet\IOFactory;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Concerns\OnEachRow;
use PhpOffice\PhpSpreadsheet\Writer\Html;
use Maatwebsite\Excel\Concerns\Importable;

class WoodLotController extends Controller
{
    public function __construct()
    {

        // dd('works');

        $this->middleware('permission:view-category');
        $this->middleware('permission:create-category', ['only' => ['create', 'store']]);
        $this->middleware('permission:update-category', ['only' => ['edit', 'update']]);
        $this->middleware('permission:destroy-category', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // dd('works2');
        if ($request->has('search')) {
            $categories = WoodLot::where('name', 'like', '%' . $request->search . '%')->paginate(setting('record_per_page', 15));
        } else {
            $categories = WoodLot::where('garden_id', $request->garden_id)->paginate(setting('record_per_page', 15));
        }

        $title = 'Manage Countries';
        return view('garden.index', compact('categories', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        // dd('works');
        $title = __('sold_garden.create_lot');
        $gardens = Garden::pluck('location', 'id');
        $creationYears = Garden::select('creation_year')->pluck('creation_year', 'creation_year');
        // dd($years);
        $woodlots = WoodLot::where('garden_id', $request->garden_id)->with('garden', 'species')->get();
        //         dd($woodlots);
        // dd($gardens);
        // dd($roles);
        return view('wood-lot.create', compact('title', 'gardens', 'woodlots', 'creationYears'));
    }

    public function save_ajax(Request $request)
    {
        //        dd($request);

        $validator = Validator::make($request->all(), [
            'garden_id' => 'required',
            'division_group_no_year' => 'required',
            'range_lot_no_year' => 'required',
            'bolli_count' => 'required',
            'tenderer_name_address' => 'required',
            'quoted_rate' => 'required',
            'total_number_of_trees' => 'required',
            'total_wood_amount' => 'required',
            'species' => 'required',
            /*          'money_collection_slip_no' => 'required',
            'money_collection_date' => 'required',
            'money_deposit_slip_no' => 'required',
            'money_deposit' => 'required', */
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'error' => $validator->errors()->all(),
                'message' => null,
                'data' => null
            ]);
        }

        $species = json_decode($request->species, true);

        //        print_r($species); exit();

        $request->merge(['created_by' => Auth::user()->id]);
        $save = WoodLot::create($request->except('_token'));
        //         dd($save);
        if (!$save) {


            //        print_r($species); exit();
            //            dd($species);


            return response()->json([
                'success' => false,
                'data' => null,
                'error' => 'Write to database failed',
                'message' => null
            ]);
        }

        $woodLotId = $save->id;
        $species = array_map(function ($subArray) use ($woodLotId) {
            $subArray["wood_lot_id"] = $woodLotId;
            return $subArray;
        }, $species);

        //        dd( $species);

        TreeSpeciesInformation::insert($species);

        return response()->json([
            'success' => true,
            'message' => 'Wood lot saved successfully.',
            'error' => null,
            'data' => WoodLot::with('garden')->where('id', $save->id)->first()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(WoodLotRequest $request)
    {
        $request->merge(['created_by' => Auth::user()->id]);
        WoodLot::create($request->except('_token', 'garden_creation_year'));
        flash('WoodLot created successfully!')->success();
        return redirect()->route('garden.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\WoodLot  $category
     * @return \Illuminate\Http\Response
     */
    public function show(WoodLot $category)
    {
        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\WoodLot  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(WoodLot $category)
    {
        $title = "Country Details";
        $category->with('user');
        return view('garden.edit', compact('title', 'category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\WoodLot  $category
     * @return \Illuminate\Http\Response
     */
    public function update(CountryRequest $request, WoodLot $category)
    {
        $category->update($request->all());
        flash('Garden updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\WoodLot  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(WoodLot $category)
    {
        $category->delete();
        flash('Garden deleted successfully!')->info();
        return back();
    }

    public function payment()
    {
        $creationYears = Garden::select('creation_year')->pluck('creation_year', 'creation_year');
        $gardens = Garden::pluck('location', 'id');
        return view('wood-lot.payment', compact('gardens', 'creationYears'));
    }

    public function payment_submit(PaymentRequest $request)
    {
        $woodlot = new WoodLot();
        $update =  $woodlot
            ->where('id', $request->range_lot_no_year)
            ->update($request->except('_token', 'range_lot_no_year', 'garden_creation_year'));
        // dd($update);


        if (!$update) {
            return back()->withErrors(['db_error' => 'Error occurred during Woodlot Payment update.']);
        }

        /*        WoodLotPaymentHistory::create([
            'wood_lot_id' => $update,
            'money_collection_slip_no' => $request->money_collection_slip_no,
            'money_collection_date' => $request->money_collection_date,
            'money_deposit_slip_no' => $request->money_deposit_slip_no,
            'money_deposit' => $request->money_deposit,
            'created_by' => Auth::user()->id,
        ]);*/
        return back()->with('success', 'Woodlot Payment updated successfully against ' . $request->lot_no);

        // return 'Submitted';
    }


    public function import_excel(Request $request)
    {

        //        dd($_FILES);
        //        dd($request->hasFile('excel'));

        if ($request->hasFile('excel')) {
            $fileName = time() . '.' . $request->excel->extension();

            $request->excel->move(public_path('uploads'), $fileName);

            //            dd('end');



            // Do something with the file path
            // ...


            $publicPath = public_path();
            $filePath =  $publicPath . '\sample.xlsx';
            $filePath =  $publicPath . '\sample2.xlsx';
            // dd($filePath);
            /*         $spreadsheet = IOFactory::load($filePath);
            $writer = new Html($spreadsheet);
            $outputFile =  $publicPath . '\sample.html';
            $writer->save($outputFile);

            dd($outputFile); */

            // exit();

            $filePath = public_path('uploads') . '\\' . $fileName;
            //            dd($filePath);
            $data = Excel::toArray([],   $filePath)[0];



            /*         print_r($data);
            exit();
     */
            // dd($data);

            /*        $temp_main_row = [];
            $temp_sub_row = []; */
            $final_main_row = [];
            foreach ($data as $key => $row) {
                // echo $key;
                if ($key <= 2) {
                    continue;
                }

                // print_r(!empty($row[0]) && !empty($row[1]) && !empty($row[7]) && !empty($row[8]));

                if (!empty($row[0]) && !empty($row[1]) && !empty($row[7]) && !empty($row[8])) {

                    $temp_sub_row = [];
                    $temp_main_row = [];
                    $tree_count_row = [];
                    $temp_main_row = $row;
                    $pattern = '/\d+/'; // Match one or more digits
                    preg_match($pattern, $this->convertBanglaToEnglishDigits($row[3]), $matches);
                    preg_match($pattern, $this->convertBanglaToEnglishDigits($row[4]), $matches2);
                    //                        dd($matches);
                    $treeCount = $matches[0] ?? 0;
                    $woodCount = $matches2[0] ?? 0;
                    //                        dd( $woodCount);
                    $temp_species_row[] =  [$row[2], $treeCount, $woodCount];
                    $final_main_row[] = $temp_main_row;
                } else {


                    if ($row[2] == 'মোট' || $row[3] == 'হতে') {
                        //
                    } else {

                        //                        dd($row[2]);
                        $pattern = '/\d+/'; // Match one or more digits
                        preg_match($pattern, $this->convertBanglaToEnglishDigits($row[3]), $matches);
                        preg_match($pattern, $this->convertBanglaToEnglishDigits($row[4]), $matches2);
                        //                        dd($matches);
                        $treeCount = $matches[0] ?? 0;
                        $woodCount = $matches2[0] ?? 0;
                        //                        dd( $woodCount);
                        $temp_species_row[] =  [$row[2], $treeCount, $woodCount];
                    }


                    if (!empty($row[1]) && $row[3] == 'হতে' && $row[6] == 'টি') {
                        $numberOfTreesColumn = array_column($temp_species_row, 1);
                        $woodAmountColumn = array_column($temp_species_row, 2);
                        $numberOfTreesColumnSum = array_sum($numberOfTreesColumn);
                        $woodAmountColumnSum = array_sum($woodAmountColumn);
                        $totalTreeCount = ($row[4] - $row[2]) + 1;
                        $tree_count_from = $row[2];
                        $tree_count_to = $row[4];
                        // $totalTreeCount = null;

                        array_push($final_main_row[count($final_main_row) - 1],  $temp_species_row, $row, $numberOfTreesColumnSum, $woodAmountColumnSum, $totalTreeCount, $tree_count_from, $tree_count_to);
                        $temp_species_row = [];
                    }
                }
                /*             if (empty($row[0] && !empty($row[1] && trim($row[1]) == 'ক্রঃ নং'))) {
                    // dd($row);
                    $temp_main_row['species'] =  $temp_sub_row;
                    $final_main_row[] = $temp_main_row;
                } */




                // print_r($row);
            }
            /*         print_r($final_main_row);
            exit(); */
            $keys = [
                'division_group_no_year', //0
                'range_lot_no_year', //1
                'tree_species', //2
                'tree_count',  //3
                'wood_amount',  //4
                'fuel',  //5
                'bolli_count',  //6
                'tenderer_name_address',  //7
                'quoted_rate',  //8
                'empty',  //9
                'species', //10
                'total_tree_count',  //11
                'total_number_of_trees',
                'total_wood_amount',
                'total_tree_count',
                'tree_count_from',
                'tree_count_to',
            ];



            $final_main_row =  $this->replaceKeysInArray($final_main_row, $keys);

            /*         print_r(array_slice($final_main_row, 0, 11));
            exit(); */

            /*         $species_list = array_values(array_merge(...array_map(function ($item) {
                return array_map(function ($species) {
                    return [
                        'tree_species' => $species[0],
                        'tree_count' => $species[1],
                        'wood_amount' => $species[2]
                    ];
                }, $item['species']);
            }, $final_main_row)));

            print_r(array_slice($species_list, 0, 11));
            exit();
     */
            // dd($species_list);



            $keysToRemove = ['empty', 'tree_species', 'tree_count', 'wood_amount'];

            $final_main_row = array_map(function ($subarray) use ($keysToRemove) {
                return array_diff_key($subarray, array_flip($keysToRemove));
            }, $final_main_row);

            $newArray = ['garden_id' => 1];

            $final_main_row = array_map(function ($subarray) use ($newArray) {
                return array_merge(array_slice($subarray, 0, 1, true), $newArray, array_slice($subarray, 1, null, true));
            }, $final_main_row);

            $species_keys = ['species', 'species_count', 'wood_amount'];

            // dd(array_slice($final_main_row, 0, 11));


            try {
                DB::beginTransaction();


                foreach ($final_main_row as $row) {
                    $species = null;
                    $insertId = null;

                    $species = $row['species'];
                    $species = $this->replaceKeysInArray($species, $species_keys);

                    unset($row['species']); //remove species
                    $insertId = WoodLot::insertGetId($row); //insert
                    $newKey = "wood_lot_id";
                    $newValue = $insertId;
                    $species = array_map(function ($item) use ($newKey, $newValue) {
                        $item[$newKey] = $newValue;
                        return $item;
                    }, $species);

                    TreeSpeciesInformation::insert($species);


                    // dd($species);
                    // exit();
                }

                DB::commit();

                // Transaction successful, all changes are saved
            } catch (\Exception $e) {
                DB::rollBack();

                // Transaction failed, changes are rolled back
                // Handle the exception or throw it further if necessary
                //                throw $e;
                return redirect()->back()->withErrors(['error' => $e->getMessage()]);
            }



            /*  $save = WoodLot::insert($final_main_row);

            $lastIds = WoodLot::orderBy('id', 'asc')->take(count($final_main_row))->pluck('id');

            print_r(array_slice($lastIds->toArray(), 0, 11));

            dd($lastIds); */



            /*
            $save =  WoodLot::insertGetId($final_main_row);
            dd($save);
     */

            return redirect()->back()->with('success', 'Sold garden information imported successfully.');




            print_r(array_slice($final_main_row, 0, 10, true));
            exit();

            dd(array_slice($final_main_row, 0, 10, true));

            // var_dump($data);
            exit();

            echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
            exit();
            // dd(($data));
            foreach ($data as $row) {
                foreach ($row as $column) {
                }
            }

            /*
            $importer = new class implements OnEachRow
            {
                use Importable;

                public $phpSpreadsheet = null;

                public function onRow(Row $row)
                {
                    if (!$this->phpSpreadsheet) {
                        $this->phpSpreadsheet = $row->getDelegate()->getWorksheet();
                    }

                    // Fetch row data
                    $rowData = $row->toArray();

                    print_r($rowData);
                }
            };

            Excel::import($importer, $filePath);

            $importer->phpSpreadsheet; */

            return "File uploaded successfully!";
        }
    }

    public function bank_deposit()
    {
        $creationYears = Garden::select('creation_year')->pluck('creation_year', 'creation_year');
        $gardens = Garden::pluck('location', 'id');
        return view('wood-lot.bank_deposit', compact('gardens', 'creationYears'));
    }

    public function bank_deposit_submit(BanklDepositeRequest $request)
    {
        // dd($request);
        $woodlot = new WoodLot();
        $update =  $woodlot
            ->where('id', $request->range_lot_no_year)
            ->update($request->except('_token', 'range_lot_no_year', 'garden_id', 'garden_creation_year'));
        // dd($update);


        if (!$update) {
            return back()->withErrors(['db_error' => 'Error occurred during Woodlot Payment update.']);
        }

        /*        WoodLotPaymentHistory::create([
            'wood_lot_id' => $update,
            'money_collection_slip_no' => $request->money_collection_slip_no,
            'money_collection_date' => $request->money_collection_date,
            'money_deposit_slip_no' => $request->money_deposit_slip_no,
            'money_deposit' => $request->money_deposit,
            'created_by' => Auth::user()->id,
        ]);*/
        return back()->with('success', 'Bank deposit information submitted successfully. ');

        // return 'Submitted';
    }



    function replaceKeysInArray($array, $keys)
    {
        // Loop through the top-level array
        foreach ($array as $topLevelKey => $topLevelValue) {
            // Loop through each sub-array and replace keys
            foreach ($keys as $keyIndex => $keyValue) {
                if (array_key_exists($keyIndex, $topLevelValue)) {
                    $array[$topLevelKey][$keyValue] = $topLevelValue[$keyIndex];
                    unset($array[$topLevelKey][$keyIndex]);
                }
            }
        }
        return $array;
    }


    function convertBanglaToEnglishDigits($text)
    {
        $banglaDigits = array('০', '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯');
        $englishDigits = array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');

        $englishText = str_replace($banglaDigits, $englishDigits, $text);

        return $englishText;
    }

    public function ajaxSpeciesInfo(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'wood_lot_id' => 'required|integer'
        ]);

        if ($validator->fails()) {
            // Handle the validation errors
            return response()->json($validator->errors(), 422);
        }

        $data = TreeSpeciesInformation::select(['species', 'species_count', 'wood_amount'])->where('wood_lot_id', $request->wood_lot_id)->get();

        $responseData = [
            'success' => true,
            'data' => $data
        ];

        // Return a JSON response with a success status code (200)
        return response()->json($responseData,  200, [], JSON_UNESCAPED_UNICODE);
    }

    public function ajaxSerialList(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'garden_id' => 'required|integer'
        ]);

        if ($validator->fails()) {
            // Handle the validation errors
            return response()->json($validator->errors(), 422);
        }

        //        $data = WoodLot::where('garden_id', $request->garden_id)->get();
        $data = WoodLot::where('garden_id', $request->garden_id)->get()->pluck('range_lot_no_year', 'id');
        //        dd( $data);

        $responseData = [
            'success' => true,
            'data' => $data
        ];

        // Return a JSON response with a success status code (200)
        return response()->json($responseData,  200, [], JSON_UNESCAPED_UNICODE);
    }

    public function ajaxGardenList(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'year' => 'required|integer'
        ]);

        if ($validator->fails()) {
            // Handle the validation errors
            return response()->json($validator->errors(), 422);
        }

        //        $data = WoodLot::where('garden_id', $request->garden_id)->get();
        $data = Garden::where('creation_year', $request->year)->get()->pluck('location', 'id');
        //        dd( $data);

        $responseData = [
            'success' => true,
            'data' => $data
        ];

        // Return a JSON response with a success status code (200)
        return response()->json($responseData,  200, [], JSON_UNESCAPED_UNICODE);
    }
}
