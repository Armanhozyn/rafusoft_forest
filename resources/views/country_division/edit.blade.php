@extends('layouts.app')
@push('pg_btn')
<a href="{{route('country_division.index')}}" class="btn btn-sm btn-neutral">সব বিভাগ</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                @can('update-country_division')
                {!! Form::open(['route' => ['country_division.update', $country_division], 'method'=>'put']) !!}
                @endcan
                <h6 class="heading-small text-muted mb-4">বিভাগ</h6>
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="name" class="form-control-label">{{trans('lang.name')}}</label>
                                <input class="form-control" name="name" type="text" id="name" value="{{$country_division->name}}">
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
                @can('update-country_division')
                {!! Form::close() !!}
                @endcan
            </div>
        </div>
    </div>
</div>
</div>
@endsection
