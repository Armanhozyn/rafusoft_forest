@extends('layouts.app')
@push('pg_btn')
<a href="{{route('district.index')}}" class="btn btn-sm btn-neutral">All District</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                @can('update-category')
                {!! Form::open(['route' => ['district.update', $district], 'method'=>'put']) !!}
                @endcan
                <h6 class="heading-small text-muted mb-4">District information</h6>
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="country_division_id" class="form-control-label">{{
                                    trans('lang.country_division') }} নির্বাচন করুন</label>
                                <select id="country_division_id" name="country_division_id"
                                    class="form-control form-control-sm">
                                    <option value="">{{ trans('lang.country_division') }} নির্বাচন করুন...</option>

                                    @foreach ($country_divisions as $country_division)

                                    <option {{$country_division->id == $district->country_division_id ? 'selected' : ''}} value="{{
                                        $country_division->id }}">{{ $country_division->name }}
                                    </option>
                                    @endforeach


                                </select>
                            </div>
                            <div class="form-group">
                                <label for="name" class="form-control-label">{{trans('lang.name')}}</label>
                                <input class="form-control" name="name" type="text" id="name"
                                    value="{{$district ->name}}">
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
                @can('update-district')
                {!! Form::close() !!}
                @endcan
            </div>
        </div>
    </div>
</div>
</div>
@endsection
