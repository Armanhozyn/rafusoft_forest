@extends('layouts.app')
@push('pg_btn')
<a href="{{route('land_owner.index')}}" class="btn btn-sm btn-neutral">All Land_owner</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                @can('update-category')
                {!! Form::open(['route' => ['land_owner.update', $land_owner], 'method'=>'put']) !!}
                @endcan
                <h6 class="heading-small text-muted mb-4">Land_owner information</h6>
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="name" class="form-control-label">{{trans('lang.name')}}</label>
                                <input class="form-control" name="name" type="text" id="name" value="{{$land_owner->name}}">
                            </div>
                            <div class="form-group">
                                <label for="address" class="form-control-label">{{trans('lang.address')}}</label>
                                <input class="form-control" name="address" type="text" id="address"
                                    value="{{$land_owner->address}}">
                            </div>
                            <div class="form-group">
                                <label for="phone" class="form-control-label">{{trans('lang.phone')}}</label>
                                <input class="form-control" name="phone" type="text" id="phone"
                                    value="{{$land_owner->phone}}">
                            </div>
                            <div class="form-group">
                                <label for="description"
                                    class="form-control-label">{{trans('lang.description')}}</label>
                                <input class="form-control" name="description" type="text" id="description"
                                    value="{{$land_owner->description}}">
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
                @can('update-land_owner')
                {!! Form::close() !!}
                @endcan
            </div>
        </div>
    </div>
</div>
</div>
@endsection
