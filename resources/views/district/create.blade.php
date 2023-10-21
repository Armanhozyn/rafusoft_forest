@extends('layouts.app')
@push('pg_btn')
<a href="{{ route('district.index') }}" class="btn btn-sm btn-neutral">All District</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                {!! Form::open(['route' => 'district.store']) !!}
                <h6 class="heading-small text-muted mb-4">District information</h6>
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="country_division_id" class="form-control-label">{{ trans('lang.country_division') }} নির্বাচন করুন</label>
                                <select id="country_division_id" name="country_division_id" class="form-control form-control-sm">
                                    <option selected="selected" value="">{{ trans('lang.country_division') }} নির্বাচন করুন...</option>

                                    @foreach ($country_divisions as $country_division)
                                    <option {{$country_division->id == old('country_division_id') ? 'selected' : ''}} value="{{ $country_division->id }}">{{ $country_division->name }}
                                    </option>
                                    @endforeach


                                </select>
                            </div>
                            {{-- <div class="form-group">
                                <label for="circle_id" class="form-control-label">{{ trans('lang.circle_id') }} নির্বাচন করুন</label>
                                <select id="circle_id" name="circle_id" class="form-control form-control-sm">
                                    <option selected="selected" value="">{{ trans('lang.circle_id') }} নির্বাচন করুন...</option>

                                    @foreach ($forms as $form)
                                    <option {{$form->id == old('circle_id') ? 'selected' : ''}} value="{{ $form->id }}">{{ $form->name }}
                                    </option>
                                    @endforeach


                                </select>
                            </div> --}}
                            <div class="form-group">
                                <label for="name" class="form-control-label">{{trans('lang.name')}}</label>
                                <input class="form-control" name="name" value="{{old('name')}}" type="text" id="name">
                            </div>
                            {{-- <div class="form-group">
                                <label for="name_english" class="form-control-label">{{trans('lang.name_english')}}</label>
                                <input class="form-control" name="name_english" value="{{old('name_english')}}" type="text" id="name_english">
                            </div> --}}
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
