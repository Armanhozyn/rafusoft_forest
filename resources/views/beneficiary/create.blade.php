@extends('layouts.app')
@push('pg_btn')
<a href="{{ route('beneficiary.index') }}" class="btn btn-sm btn-neutral">All Beneficiary</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                {!! Form::open(['route' => 'beneficiary.store']) !!}
                <h6 class="heading-small text-muted mb-4">Beneficiary information</h6>
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="garden_id" class="form-control-label">{{ trans('lang.garden_id') }} নির্বাচন
                                    করুন</label>
                                <select id="garden_id" name="garden_id" class="form-control form-control-sm">
                                    <option selected="selected" value="">{{ trans('lang.garden_id') }} নির্বাচন করুন...
                                    </option>

                                    @foreach ($gardens as $garden)
                                    <option {{$garden->id == old('garden_id') ? 'selected' : ''}} value="{{ $garden->id
                                        }}">{{ $garden->id }}
                                    </option>
                                    @endforeach


                                </select>
                            </div>
                            {{-- <div class="form-group">
                                <label for="voter_id" class="form-control-label">{{ trans('lang.voter_id') }} নির্বাচন
                                    করুন</label>
                                <select id="voter_id" name="voter_id" class="form-control form-control-sm">
                                    <option selected="selected" value="">{{ trans('lang.voter_id') }} নির্বাচন করুন...
                                    </option>

                                    @foreach (#forms as #form)
                                    <option {{#form->id == old('voter_id') ? 'selected' : ''}} value="{{ #form->id
                                        }}">{{ #form->name }}
                                    </option>
                                    @endforeach


                                </select>
                            </div> --}}
                            <div class="form-group">
                                <label for="mobile" class="form-control-label">{{trans('lang.mobile')}}</label>
                                <input class="form-control" name="mobile" value="{{old('mobile')}}" type="text"
                                    id="mobile">
                            </div>
                            <div class="form-group">
                                <label for="details" class="form-control-label">{{trans('lang.details')}}</label>
                                <input class="form-control" name="details" value="{{old('details')}}" type="text"
                                    id="details">
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
