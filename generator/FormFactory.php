<?php


$district = [
    "country_division_id" => 'select',
    "circle_id" => "select",
    "name" => 'input',
    "name_english" => 'input'
];


$range = [
    "district_id" => 'select',
    "name" => "input",
    "name_english" => 'input',
    "office_head_designation" => 'input'
];
$landowner = [
    'name' => 'input' ,
    'address' => 'input' ,
    'phone' => 'input' ,
    'description' => 'input'
];

$beneficiary = [
    "garden_id" => 'select',
    "voter_id" => 'select',
    "mobile" => 'input',
    "details" => 'input'
];

$forest_type = [
    "name" => "input",
];


$country_divisions = [
    "name" => "input",
];
$thanas = [

];

$woodlot = [
    'division_group_no_year' => 'input',
    'range_lot_no_year' => 'input',
    'tree_type' => 'input',
    'tree_count' => 'input',
    'wood_amount_sft' => 'input',
    'fuel' => 'input',
    'bolli_count' => 'input',
    'tenderer_name_address' => 'input',
    'quoted_rate' => 'input',
    'advance_details' => 'input',
    'advance_amount' => 'input',
    'collateral_details' => 'input',
    'collateral_amount' => 'input',
];


$woodlotpayment = [
    'division_group_no_year' => 'input',
    'range_lot_no_year' => 'input',
    'tree_type' => 'input',
];

$dataArray = $woodlot;


$model = "woodlot";
$UModel = ucfirst($model);


$fh = fopen("./view/form.php", 'w') or die("can't open file");
$stringData = <<<CODE
                @extends('layouts.app')
                @push('pg_btn')
                    <a href="{{ route('$model.index') }}" class="btn btn-sm btn-neutral">All $UModel</a>
                @endpush
                @section('content')
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card mb-5">
                                <div class="card-body">
                                    {!! Form::open(['route' => '$model.store']) !!}
                                    <h6 class="heading-small text-muted mb-4">$UModel information</h6>
                                    <div class="pl-lg-4">
                                        <div class="row">
                                            <div class="col-lg-6">
            CODE;
foreach ($dataArray as $key => $value) {
    $lang = "sold_garden.";

    $formName = $key;
    $formNameLang = $lang . $formName;
    $UFormName = ucfirst($formName);

    if($value == 'select'){
        $stringData .= <<<CODE
            <div class="form-group">
                <label for="$formName" class="form-control-label">{{ trans('$formNameLang') }} নির্বাচন করুন</label>
                <select id="$formName" name="$formName" class="form-control form-control-sm">
                    <option selected="selected" value="">{{ trans('$formNameLang') }} নির্বাচন করুন...</option>

                    @foreach (#forms as #form)
                        <option {{#form->id == old('$formName') ? 'selected' : ''}} value="{{ #form->id }}">{{ #form->name }}
                        </option>
                    @endforeach


                </select>
            </div>
        CODE;
    }elseif($value == 'input'){
        $stringData .= <<<CODE
            <div class="form-group">
                <label for="$formName" class="form-control-label">{{trans('$formNameLang')}}</label>
                <input class="form-control" name="$formName" value="{{old('$formName')}}" type="text" id="$formName">
            </div>
        CODE;
    }else{
        $stringData .= <<<CODE
            Sorry Missing Argument
        CODE;
        die();
    }


}

$stringData .= <<<CODE
                                        </div>
                                    </div>
                                </div>
                                <div class="pl-lg-4">
                                    <div class="row">
                                        <div class="col-md-12">
                                            {{ Form::submit('Submit', ['class' => 'btn btn-primary']) }}
                                        </div>
                                    </div>
                                </div>
                                {!! Form::close() !!}
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            @endsection
        CODE;
fwrite($fh, $stringData);

fclose($fh);
?>
