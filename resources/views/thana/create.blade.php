@extends('layouts.app')
@push('pg_btn')
<a href="{{ route('thana.index') }}" class="btn btn-sm btn-neutral">সব থানা</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                {!! Form::open(['route' => 'thana.store']) !!}
                <h6 class="heading-small text-muted mb-4">থানা</h6>
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
                                {{ Form::label('district_id', 'জেলা নির্বাচন করুন', ['class' => 'form-control-label']) }}
                                {{ Form::select('district_id', $districtList, null, ['class' => 'form-control', 'placeholder' => 'জেলা নির্বাচন করুন...']) }}
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
