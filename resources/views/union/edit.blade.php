@extends('layouts.app')
@push('pg_btn')
<a href="{{route('union.index')}}" class="btn btn-sm btn-neutral">সব ইউনিয়ন</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                @can('update-union')
                {!! Form::open(['route' => ['union.update', $union], 'method'=>'put']) !!}
                @endcan
                <h6 class="heading-small text-muted mb-4">ইউনিয়ন</h6>
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                {{ Form::label('name', 'ইউনিয়নের নাম', ['class' => 'form-control-label']) }}
                                {{ Form::text('name', $union->name, ['class' => 'form-control']) }}
                            </div>
                        </div>

                    </div>

                </div>

                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                                {{-- {{ dd($roles) }} --}}
                                <label for="district_id" class="form-control-label">
                                    জেলা নির্বাচন করুন</label>
                                <select id="district_id" name="district_id" class="form-control form-control-sm">
                                    <option value="">
                                        জেলা নির্বাচন করুন...</option>

                                    @foreach ($districts as $district)

                                    <option {{$district->id == $union->district_id ? 'selected' : ''}} value="{{
                                        $district->id }}">{{ $district->name }}
                                    </option>
                                    @endforeach


                                </select>
                        </div>
                    </div>
                </div>
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                                {{-- {{ dd($roles) }} --}}
                                {{-- {{ Form::label('thana_id', 'থানা নির্বাচন করুন', ['class' => 'form-control-label'])
                                }}
                                {{ Form::select('thana_id', $thanaList, null, ['class' => 'form-control', 'placeholder'
                                => 'থানা নির্বাচন করুন...']) }} --}}

                                <label for="thana_id" class="form-control-label">থানা নির্বাচন করুন</label>
                                <select id="thana_id" name="thana_id" class="form-control form-control-sm">
                                    <option value="">থানা নির্বাচন করুন...</option>

                                    @foreach ($thanas as $thana)

                                    <option {{$union->thana_id == $thana->id ? 'selected' : ''}} value="{{ $thana->id
                                        }}">{{ $district->name }}
                                    </option>
                                    @endforeach


                                </select>
                        </div>
                    </div>
                </div>


                <hr class="my-4" />
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="custom-control custom-checkbox">
                                {!! Form::hidden('status', 0) !!}
                                <input type="checkbox" name="status" value="1" {{ $union->status ? 'checked' : ''}}
                                class="custom-control-input" id="status">
                                {{ Form::label('status', 'Status', ['class' => 'custom-control-label']) }}
                            </div>
                        </div>
                        @can('update-user')
                        <div class="col-md-12">
                            {{ Form::submit('Submit', ['class'=> 'mt-5 btn btn-primary']) }}
                        </div>
                        @endcan
                    </div>
                </div>

                @can('update-union')
                {!! Form::close() !!}
                @endcan
            </div>
        </div>
    </div>
</div>
</div>
@endsection
