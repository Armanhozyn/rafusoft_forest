@extends('layouts.app')
@push('pg_btn')
<a href="{{ route('garden.woodlot.index') }}" class="btn btn-sm btn-neutral">All Wood Lot</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                {!! Form::open(['route' => 'garden.woodlot.store']) !!}
                <h6 class="heading-small text-muted mb-4">WoodLot information</h6>
                <div class="pl-lg-4">
                    <div class="row">

                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="garden_id" class="form-control-label">{{trans('garden.garden_id')}} নির্বাচন
                                    করুন</label>
                                <select id="garden_id" name="garden_id" class="form-control form-control-sm">
                                    <option selected="selected" value="">{{trans('garden.garden_id')}} নির্বাচন
                                        করুন</option>

                                    @foreach ($gardens as $garden)
                                    <option {{$garden->id == old('garden_id') ? 'selected' : ''}} value="{{ $garden->id
                                        }}">{{ $garden->id }}
                                    </option>
                                    @endforeach


                                </select>
                            </div>
                            <div class="form-group">
                                <label for="division_group_no_year" class="form-control-label">{{trans('sold_garden.division_group_no_year')}}</label>
                                <input class="form-control" name="division_group_no_year" value="{{old('division_group_no_year')}}" type="text" id="division_group_no_year">
                            </div>
                            <div class="form-group">
                                <label for="range_lot_no_year" class="form-control-label">{{trans('sold_garden.range_lot_no_year')}}</label>
                                <input class="form-control" name="range_lot_no_year" value="{{old('range_lot_no_year')}}" type="text" id="range_lot_no_year">
                            </div>
                        </div>

                        <div class="col-lg-12 mt-2">
                            <label class="form-control-label">{{trans('sold_garden.info_of_lot')}} : </label>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label for="tree_type" class="form-control-label">{{trans('sold_garden.tree_type')}}</label>
                                <input class="form-control" name="tree_type" value="{{old('tree_type')}}" type="text" id="tree_type">
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label for="tree_count" class="form-control-label">{{trans('sold_garden.tree_count')}}</label>
                                <input class="form-control" name="tree_count" value="{{old('tree_count')}}" type="text" id="tree_count">
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <label for="wood_amount_sft" class="form-control-label">{{trans('sold_garden.wood_amount_sft')}}</label>
                                <input class="form-control" name="wood_amount_sft" value="{{old('wood_amount_sft')}}" type="text" id="wood_amount_sft">
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <label for="fuel" class="form-control-label">{{trans('sold_garden.fuel')}}</label>
                                <input class="form-control" name="fuel" value="{{old('fuel')}}" type="text" id="fuel">
                            </div>
                        </div>
                        <div class="col-lg-2 mb-2">
                            <div class="form-group">
                                <label for="bolli_count" class="form-control-label">{{trans('sold_garden.bolli_count')}}</label>
                                <input class="form-control" name="bolli_count" value="{{old('bolli_count')}}" type="text" id="bolli_count">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="tenderer_name_address" class="form-control-label">{{trans('sold_garden.tenderer_name_address')}}</label>
                                <input class="form-control" name="tenderer_name_address" value="{{old('tenderer_name_address')}}" type="text" id="tenderer_name_address">
                            </div>
                            <div class="form-group">
                                <label for="quoted_rate" class="form-control-label">{{trans('sold_garden.quoted_rate')}}</label>
                                <input class="form-control" name="quoted_rate" value="{{old('quoted_rate')}}" type="text" id="quoted_rate">
                            </div>
                            <div class="form-group">
                                <label for="advance_details" class="form-control-label">{{trans('sold_garden.advance_details')}}</label>
                                <input class="form-control" name="advance_details" value="{{old('advance_details')}}" type="text" id="advance_details">
                            </div>
                            <div class="form-group">
                                <label for="advance_amount" class="form-control-label">{{trans('sold_garden.advance_amount')}}</label>
                                <input class="form-control" name="advance_amount" value="{{old('advance_amount')}}" type="text" id="advance_amount">
                            </div>
                            <div class="form-group">
                                <label for="collateral_details" class="form-control-label">{{trans('sold_garden.collateral_details')}}</label>
                                <input class="form-control" name="collateral_details" value="{{old('collateral_details')}}" type="text" id="collateral_details">
                            </div>
                            <div class="form-group">
                                <label for="collateral_amount" class="form-control-label">{{trans('sold_garden.collateral_amount')}}</label>
                                <input class="form-control" name="collateral_amount" value="{{old('collateral_amount')}}" type="text" id="collateral_amount">
                            </div>
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
