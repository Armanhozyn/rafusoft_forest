@extends('layouts.app')
@push('pg_btn')
    <a href="{{ route('bit.index') }}" class="btn btn-sm btn-neutral">All Bits</a>
@endpush
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-5">
                <div class="card-body">
                    {!! Form::open(['route' => 'bit.store']) !!}
                    <h6 class="heading-small text-muted mb-4">Bits information</h6>
                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="range_id" class="form-control-label">{{ trans('lang.range') }} নির্বাচন করুন</label>
                                    <select id="range_id" name="range_id" class="form-control form-control-sm">
                                        <option selected="selected" value="">{{ trans('lang.range') }} নির্বাচন করুন...</option>

                                        @foreach ($ranges as $range)
                                            {{-- {{ dd($garden->union) }} --}}

                                            {{-- {{ print_r($garden->union) }} --}}
                                            <option {{$range->id == old('range_id') ? 'selected' : ''}} value="{{ $range->id }}">{{ $range->name }}
                                            </option>
                                        @endforeach


                                    </select>
                                </div>


                                <div class="form-group">
                                    <label for="name" class="form-control-label">{{trans('navbar.bit')}} {{trans('lang.name')}}</label>
                                    <input class="form-control" name="name" value="{{old('name')}}" type="text" id="name">
                                </div>
                                <div class="form-group">
                                    <label for="name_in_english" class="form-control-label">{{trans('navbar.bit')}} {{trans('lang.name_in_english')}}</label>
                                    <input class="form-control" name="name_english" value="{{old('name_english')}}" type="text" id="name_in_english">
                                </div>
                                <div class="form-group">
                                    <label for="office_head_designation" class="form-control-label">{{trans('lang.office_head_designation')}}</label>
                                    <input class="form-control" name="office_head_designation" value="{{old('office_head_designation')}}" type="text" id="office_head_designation">
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
