@extends('layouts.app')
@push('pg_btn')
<a href="{{ route('range.index') }}" class="btn btn-sm btn-neutral">সব রেঞ্জ</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                {!! Form::open(['route' => 'range.store']) !!}
                <h6 class="heading-small text-muted mb-4">রেঞ্জ</h6>
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-lg-6">
                            {{-- <div class="form-group">
                                <label for="district_id" class="form-control-label">{{ trans('lang.districts') }} নির্বাচন করুন</label>
                                <select id="district_id" name="district_id" class="form-control form-control-sm">
                                    <option selected="selected" value="">{{ trans('lang.districts') }} নির্বাচন করুন...</option>

                                    @foreach ($districts as $district)
                                    <option {{$district->id == old('district_id') ? 'selected' : ''}} value="{{ $district->id }}">{{ $district->name }}
                                    </option>
                                    @endforeach


                                </select>
                            </div> --}}
                            <div class="form-group">
                                <label for="name" class="form-control-label">{{trans('lang.name')}}</label>
                                <input class="form-control" name="name" value="{{old('name')}}" type="text" id="name">
                            </div>
                            <div class="form-group">
                                {{ Form::label('district', 'জেলা', ['class' => 'form-control-label']) }}
                                {{ Form::select('district_id', $districts, null, ['class' => 'form-control', 'placeholder' => 'বাগানের ধরন নির্বাচন করুন...', 'id' => 'district']) }}
                            </div>

                            <div class="form-group">
                                {{ Form::label('thana', 'উপজেলা', ['class' => 'form-control-label']) }}
                                {{ Form::select('thana_id', [], null, ['class' => 'form-control', 'placeholder' => 'উপজেলা নির্বাচন করুন...', 'id' => 'thana']) }}
                            </div>

                            <div class="form-group">
                                {{ Form::label('union', 'ইউনিয়ন পরিষদ', ['class' => 'form-control-label']) }}
                                {{ Form::select('union_parishad_id[]', [], null, ['multiple'=> 'multiple','class' => 'form-control', 'placeholder' => 'ইউনিয়ন পরিষদ নির্বাচন করুন...', 'id' => 'union']) }}
                            </div>

                            <div class="form-group">
                                <label for="name_english" class="form-control-label">{{trans('lang.name_english')}}</label>
                                <input class="form-control" name="name_english" value="{{old('name_english')}}" type="text" id="name_english">
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

@push('scripts')

<script>

$('#district').change(function() {
    debugger;
    $('#thana').html('');
    $('#union').html('');
    var dropdown = $('#thana'); // Assuming you have a dropdown with id "myDropdown"
        dropdown.html('');
    let disctrictId = $(this).val();
    console.log(disctrictId);

    // debugger;
    var routeUrl = "{{ route('upozila_by_district',0) }}";
    var generatedUrl = routeUrl.replace('0', disctrictId);

    $.get(generatedUrl, function(response) {
        // Success callback
        console.log("Response:", response);
        dropdown.append($('<option></option>').attr('value', '').text('উপজেলা নির্বাচন করুন...'));
        $.each(response.data, function(key, value) {
            dropdown.append($('<option></option>').attr('value', key).text(value));
        });
    }).fail(function(jqXHR, textStatus, errorThrown) {
        // Error callback
        console.error("Error:", errorThrown);
    });

});


$('#thana').change(function(){
    $('#union').html('');
    var dropdown = $('#union'); // Assuming you have a dropdown with id "myDropdown"
        dropdown.html('');
    let unionId = $(this).val();
    console.log(unionId);
    var routeUrl = "{{ route('union_by_thana',0) }}";
    var generatedUrl = routeUrl.replace('0', unionId);
    $.get(generatedUrl, function(response) {
        // Success callback
        console.log("Response:", response);
        dropdown.append($('<option></option>').attr('value', '').text('ইউনিয়ন নির্বাচন করুন...'));
        $.each(response.data, function(key, value) {
            dropdown.append($('<option></option>').attr('value', key).text(value));
        });
    }).fail(function(jqXHR, textStatus, errorThrown) {
        // Error callback
        console.error("Error:", errorThrown);
    });

});
</script>

@endpush
