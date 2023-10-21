<?php


$district = [
    "country_division_id" => 'select',
    "name" => 'input',
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
$dataArray = $beneficiary;


$model = "beneficiary";
$UModel = ucfirst($model);


$fh = fopen("./view/edit.php", 'w') or die("can't open file");
$stringData = <<<CODE
                @extends('layouts.app')
                @push('pg_btn')
                    <a href="{{route('$model.index')}}" class="btn btn-sm btn-neutral">All $UModel</a>
                @endpush
                @section('content')
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card mb-5">
                                <div class="card-body">
                                    @can('update-category')
                                    {!! Form::open(['route' => ['$model.update', $$model], 'method'=>'put']) !!}
                                    @endcan
                                        <h6 class="heading-small text-muted mb-4">$UModel information</h6>
                                        <div class="pl-lg-4">
                                            <div class="row">
                                                <div class="col-lg-6">
            CODE;
foreach ($dataArray as $key => $value) {
    $lang = "lang.";

    $formName = $key;
    $formNameLang = $lang . $formName;
    $UFormName = ucfirst($formName);

    if($value == 'select'){
        $stringData .= <<<CODE

            <div class="form-group">
                <label for="$formName" class="form-control-label">{{ trans('$formNameLang') }} নির্বাচন করুন</label>
                <select id="$formName" name="$formName" class="form-control form-control-sm">
                    <option  value="">{{ trans('$formNameLang') }} নির্বাচন করুন...</option>

                    @foreach (#forms as #form)

                        <option {{#form->id == $$model ->range_id ? 'selected' : ''}}  value="{{ #form->range_id }}">{{ #form->name }}
                        </option>
                    @endforeach


                </select>
            </div>
        CODE;
    }elseif($value == 'input'){
        $stringData .= <<<CODE
            <div class="form-group">
                <label for="$formName" class="form-control-label">{{trans('$formNameLang')}}</label>
                <input class="form-control" name="$formName" type="text" id="$formName" value="{{#model->$formName}}">
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
                    @can('update-$model')
                    {!! Form::close() !!}
                    @endcan
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
