@extends('layouts.app')
@push('pg_btn')
    <a href="{{ route('garden-information.index') }}" class="btn btn-sm btn-neutral">সব বাগান</a>
@endpush
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-5">
                <div class="card-body">
                    {!! Form::open(['route' => 'garden-information.store']) !!}
                    <h6 class="heading-small text-muted mb-4">বাগানের তথ্য</h6>
                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{ Form::label('forest_type_id', 'বাগানের ধরন', ['class' => 'form-control-label']) }}
                                    {{ Form::select('forest_type_id', $forestTypes, null, ['id'=>'forest_type_id','class' => 'form-control', 'placeholder' => 'বাগানের ধরন নির্বাচন করুন...']) }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{ Form::label('district', 'জেলা', ['class' => 'form-control-label']) }}
                                    {{ Form::select('district_id', $districtInRange, null, ['class' => 'form-control', 'placeholder' => 'বাগানের ধরন নির্বাচন করুন...', 'id' => 'district']) }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{ Form::label('thana', 'উপজেলা', ['class' => 'form-control-label']) }}
                                    {{ Form::select('thana_id', [], null, ['class' => 'form-control', 'placeholder' => 'উপজেলা নির্বাচন করুন...', 'id' => 'thana']) }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{ Form::label('union', 'ইউনিয়ন পরিষদ', ['class' => 'form-control-label']) }}
                                    {{ Form::select('union_parishad_id[]', [], null, ['multiple'=> 'multiple','class' => 'form-control', 'placeholder' => 'ইউনিয়ন পরিষদ নির্বাচন করুন...', 'id' => 'union']) }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{ Form::label('details', 'বাগানের বিস্তারিত তথ্য (যদি থাকে)', ['class' => 'form-control-label']) }}
                                    {{ Form::textarea('details', null, ['class' => 'form-control','id'=> 'details', 'rows'=> 2]) }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{ Form::label('garden_area', 'বাগানের আয়তন', ['class' => 'form-control-label']) }}
                                    {{ Form::text('garden_area', null, ['class' => 'form-control','id'=> 'garden_area']) }}
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
@push('scripts')
    <script>
        jQuery(document).ready(function() {

        });

        $('#district').change(function() {
            $('#thana').html('');
            $('#union').html('');
            var dropdown = $('#thana'); // Assuming you have a dropdown with id "myDropdown"
                dropdown.html('');
            let disctrictId = $(this).val();
            console.log(disctrictId);
            $.get("/ajax/upazilla-by-district/" + disctrictId, function(response) {
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

            $.get("/ajax/union-by-thana/" + unionId, function(response) {
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

        $('#forest_type_id').change(function(){
            console.log($(this).val());

            if($(this).val() == 1){
                $('label[for="garden_area"]').text("বাগানের পরিমান (কি.মি.)");
            }else{
                $('label[for="garden_area"]').text("বাগানের পরিমান (হেক্টর)");
            }


        });

    </script>
@endpush
