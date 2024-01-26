@extends('layouts.app')
@push('pg_btn')
<a href="{{route('users.index')}}" class="btn btn-sm btn-neutral">সকল ব্যবহারকারী</a>
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-body">
                {!! Form::open(['route' => 'users.store', 'files' => true]) !!}
                <h6 class="heading-small text-muted mb-4">ব্যবহারকারীর তথ্য</h6>
                <div class="pl-lg-4">
                    <div class="row">

                        <div class="col-lg-6">
                            <div class="form-group">
                                {{ Form::label('name', 'নাম', ['class' => 'form-control-label']) }}
                                {{ Form::text('name', null, ['class' => 'form-control']) }}
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                {{ Form::label('designation', 'উপাধি', ['class' => 'form-control-label']) }}
                                {{ Form::text('designation', null, ['class' => 'form-control']) }}
                            </div>
                        </div>



                        <div class="col-lg-6">
                            <div class="form-group">
                                {{ Form::label('email', 'ই-মেইল', ['class' => 'form-control-label']) }}
                                {{ Form::email('email', null, ['class' => 'form-control']) }}
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                {{ Form::label('phone_number', 'ফোন নম্বর', ['class' => 'form-control-label']) }}
                                {{ Form::text('phone_number', null, ['class' => 'form-control']) }}
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                {{ Form::label('profile_photo', 'ছবি', ['class' => 'form-control-label']) }}
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <a id="uploadFile" data-input="thumbnail" data-preview="holder"
                                            class="btn btn-secondary">
                                            <i class="fa fa-picture-o"></i> ছবি নির্বাচন করুন
                                        </a>
                                    </span>
                                    <input id="thumbnail" class="form-control d-none" type="text" name="profile_photo">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                {{ Form::label('role', 'ভূমিকা নির্বাচন করুন', ['class' => 'form-control-label']) }}
                                <select class="form-control" id="role" name="role">
                                    <option selected="selected" value="">ভূমিকা নির্বাচন করুন'...</option>
                                    @foreach ($roles as $role )
                                        <option value="{{$role->name}}">{{$role->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col-lg-6" id="range_wrap">
                            <div class="form-group">
                                {{ Form::label('range_id', 'Select Range', ['class' => 'form-control-label']) }}
                                {{ Form::select('range_id', $ranges, null, [ 'class'=> 'form-control', 'placeholder' =>
                                'Select Range...']) }}
                            </div>
                        </div>

                        <div class="col-lg-8" id='district_wrap'>
                            <div class="form-group">
                                {{ Form::label('district', 'জেলা', ['class' => 'form-control-label']) }}
                                {{ Form::select('district_id', [], null, ['class' => 'form-control', 'placeholder' => 'বাগানের ধরন নির্বাচন করুন...', 'id' => 'district']) }}
                            </div>


                        </div>
                        <div class="col-lg-8" id='thana_wrap'>

                            <div class="form-group">
                                {{ Form::label('thana', '
                                থানা', ['class' => 'form-control-label']) }}
                                {{ Form::select('thana_id[]', [], null, ['multiple'=> 'multiple','class' => 'form-control', 'placeholder' => '
                                থানা নির্বাচন করুন...', 'id' => 'thana']) }}
                            </div>
                        </div>
                        <div class="col-lg-8" id='union_wrap'>
                            <div class="form-group">
                                {{ Form::label('union', 'ইউনিয়ন পরিষদ', ['class' => 'form-control-label']) }}
                                {{ Form::select('union_parishad_id[]', [], null, ['multiple'=> 'multiple','class' => 'form-control', 'placeholder' => 'ইউনিয়ন পরিষদ নির্বাচন করুন...', 'id' => 'union']) }}
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="my-4" />
                <!-- Address -->
                <h6 class="heading-small text-muted mb-4">Password information</h6>
                <div class="pl-lg-4">
                    <div class="row">

                        <div class="col-md-6">
                            <div class="form-group">
                                {{ Form::label('username', 'User Name', ['class' => 'form-control-label']) }}

                                {{ Form::text('username', null, ['class' => 'form-control']) }}
                            </div>
                        </div>


                        <div class="col-md-6">
                            <div class="form-group">
                                {{ Form::label('password', 'Password', ['class' => 'form-control-label']) }}
                                {{ Form::password('password', ['class' => 'form-control']) }}
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                {{ Form::label('password_confirmation', 'Confirm password', ['class' =>
                                'form-control-label']) }}
                                {{ Form::password('password_confirmation', ['class' => 'form-control']) }}
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="my-4" />
                <div class="pl-lg-4">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" name="status" value="1" class="custom-control-input" id="status">
                                {{ Form::label('status', 'Status', ['class' => 'custom-control-label']) }}
                            </div>
                        </div>
                        <div class="col-md-12">
                            {{ Form::submit('Submit', ['class'=> 'mt-5 btn btn-primary']) }}
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
<script src="{{ asset('vendor/laravel-filemanager/js/stand-alone-button.js') }}"></script>
<script>
    jQuery(document).ready(function(){
            jQuery('#uploadFile').filemanager('file');
        })
        if($('#range_id').val() == ""){
            $("#range_wrap").hide();
            $("#district_wrap").hide();
            $("#thana_wrap").hide();
            $("#union_wrap").hide();
        }
        $("#role").change(function(){
            debugger;
            if ($(this).val() == 'এসএফপিসি' || $(this).val() == "বীট" || $(this).val() == "তথ্য প্রদানকারী (রেঞ্জ/কেন্দ্র)" )  {
                $("#range_wrap").show('slow');
                return;
            }

            $("#range_wrap").hide();
            return;
        });

        $('#range_id').change(function(){
            if($('#role').val() == 'বীট'){
                $("#district_wrap").show();
                $("#thana_wrap").show();
                $("#union_wrap").show();


                debugger;
                $('#thana').html('');
                $('#union').html('');
                $('#district').html('');
                let rangeId = $(this).val();

                // debugger;
                var routeUrl = "{{ route('get_range_by_id',0) }}";
                var generatedUrl = routeUrl.replace('0', rangeId);

                $.get(generatedUrl, function(response) {
                    // Success callback
                    console.log("Response:", response);


                    $('#district').append($('<option></option>').attr('value', '').text('জেলা নির্বাচন করুন...'));
                    $.each(response.districts, function(key, value) {
                        $('#district').append($('<option selected></option>').attr('value', key).text(value));
                    });

                    $('#thana').append($('<option></option>').attr('value', '').text('থানা নির্বাচন করুন...'));
                    $.each(response.thanas, function(key, value) {
                        $('#thana').append($('<option selected></option>').attr('value', key).text(value));
                    });

                    $('#union').append($('<option></option>').attr('value', '').text('ইউনিয়ন পরিষদ নির্বাচন করুন...'));
                    $.each(response.unions, function(key, value) {
                        $('#union').append($('<option selected></option>').attr('value', key).text(value));
                    });


                }).fail(function(jqXHR, textStatus, errorThrown) {
                    // Error callback
                    console.error("Error:", errorThrown);
                });
                return;
            }

            $("#district_wrap").hide();
            $("#thana_wrap").hide();
            $("#union_wrap").hide();
            return;
        })
</script>
@endpush
