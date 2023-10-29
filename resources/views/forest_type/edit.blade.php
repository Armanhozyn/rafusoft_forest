@extends('layouts.app')
@push('pg_btn')
<a href="{{route('forest_type.index')}}" class="btn btn-sm btn-neutral">All Forest Type</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                @can('update-forest_type')
                {!! Form::open(['route' => ['forest_type.update', $forest_type], 'method'=>'put']) !!}
                @endcan
                <h6 class="heading-small text-muted mb-4">Forest_type information</h6>
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="name" class="form-control-label">{{trans('lang.name')}}</label>
                                <input class="form-control" name="name" type="text" id="name" value="{{$forest_type->name}}">
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
                @can('update-forest_type')
                {!! Form::close() !!}
                @endcan
            </div>
        </div>
    </div>
</div>
</div>
@endsection
