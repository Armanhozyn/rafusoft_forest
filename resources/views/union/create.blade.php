@extends('layouts.app')
@push('pg_btn')
    <a href="{{ route('country.index') }}" class="btn btn-sm btn-neutral">All Unions</a>
@endpush
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-5">
                <div class="card-body">
                    {!! Form::open(['route' => 'union.store']) !!}
                    <h6 class="heading-small text-muted mb-4">Union information</h6>
                    {{-- <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{ Form::label('name', 'Country Name', ['class' => 'form-control-label']) }}
                                    {{ Form::select('name', $countries, null, ['class' => 'form-control', 'placeholder' => 'Select country...']) }}
                                </div>
                            </div>
                        </div>
                    </div> --}}
                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="name" class="form-control-label">{{trans('lang.name')}}</label>
                                    <input class="form-control" name="name" value="{{old('name')}}" type="text" id="name">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{-- {{ dd($roles) }} --}}
                                    {{ Form::label('district_id', 'Select District', ['class' => 'form-control-label']) }}
                                    {{ Form::select('district_id', $districtList, null, ['class' => 'form-control', 'placeholder' => 'Select district...']) }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{-- {{ dd($roles) }} --}}
                                    {{ Form::label('thana_id', 'Select Thana', ['class' => 'form-control-label']) }}
                                    {{ Form::select('thana_id', $thanaList, null, ['class' => 'form-control', 'placeholder' => 'Select thana...']) }}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="status" value="1" class="custom-control-input"
                                        id="status">
                                    {{ Form::label('status', 'Status', ['class' => 'custom-control-label']) }}
                                </div>
                            </div>
                            <div class="col-md-12">
                                {{ Form::submit('Submit', ['class' => 'mt-5 btn btn-primary']) }}
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
