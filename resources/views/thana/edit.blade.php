@extends('layouts.app')
@push('pg_btn')
<a href="{{route('thana.index')}}" class="btn btn-sm btn-neutral">All Thana</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                @can('update-thana')
                {!! Form::open(['route' => ['thana.update', $thana], 'method'=>'put']) !!}
                @endcan
                <h6 class="heading-small text-muted mb-4">Thana information</h6>
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="name" class="form-control-label">{{trans('lang.name')}}</label>
                                <input class="form-control" name="name" type="text" id="name" value="{{$thana->name}}">
                            </div>
                            <div class="form-group">
                                <label for="district_id" class="form-control-label">{{ trans('lang.district_id') }} নির্বাচন করুন</label>
                                <select id="district_id" name="district_id" class="form-control form-control-sm">
                                    <option value="">{{ trans('lang.district_id') }} নির্বাচন করুন...</option>

                                    @foreach ($districts as $district)

                                    <option {{$district->id == $thana->district_id ? 'selected' : ''}} value="{{ $district->id }}">{{ $district->name }}
                                    </option>
                                    @endforeach


                                </select>
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
                @can('update-thana')
                {!! Form::close() !!}
                @endcan
            </div>
        </div>
    </div>
</div>
</div>
@endsection
