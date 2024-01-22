@extends('layouts.app')
@push('pg_btn')
<a href="{{route('range.index')}}" class="btn btn-sm btn-neutral">সব রেঞ্জ</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                @can('update-category')
                {!! Form::open(['route' => ['range.update', $range], 'method'=>'put']) !!}
                @endcan
                <h6 class="heading-small text-muted mb-4">রেঞ্জ</h6>
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="district_id" class="form-control-label">{{ trans('lang.district_id') }} নির্বাচন করুন</label>
                                <select id="district_id" name="district_id" class="form-control form-control-sm">
                                    <option value="">{{ trans('lang.district_id') }} নির্বাচন করুন...</option>

                                    @foreach ($districts as $district)

                                    <option {{$district->id == $range->district_id ? 'selected' : ''}} value="{{ $district->id }}">{{ $district->name }}
                                    </option>
                                    @endforeach


                                </select>
                            </div>
                            <div class="form-group">
                                <label for="name" class="form-control-label">{{trans('lang.name')}}</label>
                                <input class="form-control" name="name" type="text" id="name" value="{{$range->name}}">
                            </div>
                            <div class="form-group">
                                <label for="name_english" class="form-control-label">{{trans('lang.name_english')}}</label>
                                <input class="form-control" name="name_english" type="text" id="name_english" value="{{$range->name_english}}">
                            </div>
                            <div class="form-group">
                                <label for="office_head_designation" class="form-control-label">{{trans('lang.office_head_designation')}}</label>
                                <input class="form-control" name="office_head_designation" type="text" id="office_head_designation" value="{{$range->office_head_designation}}">
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
                @can('update-range')
                {!! Form::close() !!}
                @endcan
            </div>
        </div>
    </div>
</div>
</div>
@endsection
