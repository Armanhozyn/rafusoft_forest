@extends('layouts.app')
@push('pg_btn')
<a href="{{ route('land_owner.index') }}" class="btn btn-sm btn-neutral">All Land_owner</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                {!! Form::open(['route' => 'land_owner.store']) !!}
                <h6 class="heading-small text-muted mb-4">Land_owner information</h6>
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="name" class="form-control-label">{{trans('lang.name')}}</label>
                                <input class="form-control" name="name" value="{{old('name')}}" type="text" id="name">
                            </div>
                            <div class="form-group">
                                <label for="address" class="form-control-label">{{trans('lang.address')}}</label>
                                <input class="form-control" name="address" value="{{old('address')}}" type="text"
                                    id="address">
                            </div>
                            <div class="form-group">
                                <label for="phone" class="form-control-label">{{trans('lang.phone')}}</label>
                                <input class="form-control" name="phone" value="{{old('phone')}}" type="text"
                                    id="phone">
                            </div>
                            <div class="form-group">
                                <label for="description"
                                    class="form-control-label">{{trans('lang.description')}}</label>
                                <input class="form-control" name="description" value="{{old('description')}}"
                                    type="text" id="description">
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
