@extends('layouts.app')
@push('pg_btn')
    @can('create-category')
        <a href="{{ route('category.create') }}" class="btn btn-sm btn-neutral">Create New Category</a>
    @endcan
@endpush
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-5">
                <div class="card-header bg-transparent">
                    <div class="row">
                        <div class="col-lg-8">
                            <h3 class="mb-0">রিপোর্ট</h3>
                        </div>
                        <div class="col-lg-4">
                            {!! Form::open(['route' => 'users.index', 'method' => 'get']) !!}
                            <div class="form-group mb-0">
                                {{ Form::text('search', request()->query('search'), ['class' => 'form-control form-control-sm', 'placeholder' => 'Search users']) }}
                            </div>
                            {!! Form::close() !!}
                        </div>
                    </div>
                </div>
                <div class="card-body p-0">


                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">

                                <div class="form-group">
                                    {{-- {{ dd($roles) }} --}}
                                    {{ Form::label('garden_id', 'একটি প্রতিবেদন নির্বাচন করুন', ['class' => 'form-control-label']) }}
                                    {{ Form::select('garden_id', $reportList, null, ['class' => 'form-control form-control-sm', 'placeholder' => __('sold_garden.select_a_garden'), 'id' => 'report-dropdown']) }}
                                </div>
                                <fieldset style="display: none">
                                    <legend>বাগান সৃজনের প্রতিবেদন</legend>
                                    {{--                                 <div class="form-group">
                                  
                                    {{ Form::label('garden_creation_year', __('sold_garden.select_graden_creation_year'), ['class' => 'form-control-label']) }}
                                    {{ Form::select('garden_creation_year', $creationYears, @$_GET['year'], ['class' => 'form-control form-control-sm', 'placeholder' => __('sold_garden.select_graden_creation_year'), 'id' => 'garden-year']) }}
                                </div> --}}



                                    <div class="form-group">
                                        {{-- {{ dd($roles) }} --}}
                                        {{ Form::label('garden_id', 'বাগানের প্রকৃতি', ['class' => 'form-control-label']) }}
                                        {{ Form::select('garden_id', $gardenTypes, null, ['class' => 'form-control form-control-sm', 'placeholder' => __('sold_garden.select_a_garden'), 'id' => 'garden-dropdown']) }}
                                    </div>

                                    <div class="form-group">
                                        {{ Form::label('office_order_date', 'অফিস আদেশ তারিখ', ['class' => 'form-control-label']) }}
                                        {{ Form::date('office_order_date', null, ['class' => 'form-control form-control-sm', 'id' => 'InvoiceDate', 'value' => date('Y-m-d')]) }}
                                    </div>

                                    <div class="form-group">
                                        {{ Form::label('office_order_no', 'অফিস আদেশ নং', ['class' => 'form-control-label']) }}
                                        {{ Form::text('office_order_no', null, ['class' => 'form-control form-control-sm', 'id' => 'invoiceNo']) }}
                                    </div>


                                </fieldset>
                            </div>

                            <div class="col-lg-6">
                              
                                <fieldset style="display: none;" id="garden-creation">
                                    {!! Form::open(['url' => 'report/garden-creation', 'method' => 'get']) !!}
                                    <legend>বাগান সৃজন</legend>

{{-- 
                                    <div class="form-group">
                                        {{ Form::label('district', 'জেলা', ['class' => 'form-control-label']) }}
                                        {{ Form::select('district', $districtList, null, ['class' => 'form-control form-control-sm', 'id' => 'district-dropdown']) }}
                                    </div> --}}

                                    <div class="form-group">
                                     
                                        {{ Form::label('range', 'রেঞ্জ', ['class' => 'form-control-label']) }}
                                        {{ Form::select('range', $rangeList, null, ['class' => 'form-control form-control-sm', 'id' => 'range']) }}
                                    </div>


                                    {{-- <div class="form-group">
                                      
                                        {{ Form::label('thana', 'উপজেলা', ['class' => 'form-control-label']) }}
                                        {{ Form::select('thana', [], null, ['class' => 'form-control form-control-sm', 'id' => 'thana-dropdown']) }}
                                    </div> --}}

                                    <div class="form-group">
                                        {{-- {{ dd($roles) }} --}}
                                        {{ Form::label('creation_year', 'তৈরীর বছর', ['class' => 'form-control-label']) }}
                                        {{ Form::select('creation_year', $creationYears, null, ['class' => 'form-control form-control-sm', 'id' => 'year-dropdown']) }}
                                    </div>
                                    <button class="btn btn-sm btn-primary" type="submit">Get Report</button>

                                    {!! Form::close() !!}
                                </fieldset>

                                


                                <fieldset style="display: none;" id="sold-garden">
                                    <legend>বিক্রিত বাগান</legend>






                                </fieldset>

                                <fieldset style="display: none;" id="profit-distribution">
                                    <legend>লভ্যাংশ বিতরন</legend>




                                </fieldset>




                                {{--                             <fieldset>
                                    <legend>টিএফএফ</legend>
                                    <div class="form-group">
                                        {{ Form::label('tff_invoice_date', 'রশিদের তারিখ', ['class' => 'form-control-label']) }}
                                        {{ Form::date('tff_invoice_date', null, ['class' => 'form-control form-control-sm', 'id' => 'tff_invoice_date', 'value' => date('Y-m-d')]) }}
                                    </div>
    
                                    <div class="form-group">
                                        {{ Form::label('tff_invoice_no', 'রশিদ নং', ['class' => 'form-control-label']) }}
                                        {{ Form::text('tff_invoice_no', null, ['class' => 'form-control form-control-sm', 'id' => 'tff_invoice_no']) }}
                                    </div>
                                    <div class="form-group">
                                        {{ Form::label('tff_share_amount', 'টিএফএফ এর অংশের পরিমান (টাকা)', ['class' => 'form-control-label']) }}
                                        {{ Form::text('tff_share_amount', null, ['class' => 'form-control form-control-sm', 'id' => 'beneficiary_share_amount']) }}
                                    </div>
                                </fieldset> --}}
                            </div>


                            <div class="col-lg-6">


                            </div>

                        </div>
                    </div>




                </div>
            </div>
        </div>
    </div>
@endsection
@push('scripts')
    <script>
        jQuery(document).ready(function() {
            $('.delete').on('click', function(e) {
                e.preventDefault();
                let that = jQuery(this);
                jQuery.confirm({
                    icon: 'fas fa-wind-warning',
                    closeIcon: true,
                    title: 'Are you sure!',
                    content: 'You can not undo this action.!',
                    type: 'red',
                    typeAnimated: true,
                    buttons: {
                        confirm: function() {
                            that.parent('form').submit();
                            //$.alert('Confirmed!');
                        },
                        cancel: function() {
                            //$.alert('Canceled!');
                        }
                    }
                });
            })
        })


        $("#report-dropdown").on('change', function() {
            $("#garden-creation").hide();
            $("#sold-garden").hide();
            $("#profit-distribution").hide();
            console.log($(this).val());
            if ($(this).val() == 1) {
                $('#district-dropdown')
                $("#garden-creation").show();
            }
            if ($(this).val() == 2) {
                $("#sold-garden").show();
            }
            if ($(this).val() == 3) {
                $("#profit-distribution").show();
            }


        });

        $('#district-dropdown').on('change', function() {
            var dropdown = $(
                    '#thana-dropdown'); // Assuming the dropdown has an ID "thana-dropdown"
            $.ajax({
                url: '/ajax/upazilla-by-district/' + $(this).val(),
                type: 'GET',
                success: function(response) {

                    dropdown.html('');

                    // Iterate over the thanaData object
                    $.each(response.data, function(key, value) {
                        // Create an option element for each entry in the data
                        var option = $('<option></option>').attr('value', key).text(value);

                        // Append the option to the dropdown
                        dropdown.append(option);
                    });
                    // Handle the successful response here
                    console.log(response);
                },
                error: function(xhr, status, error) {
                    // Handle any errors that occur during the request
                    console.log('Error:', error);
                }
            });

        });
    </script>
@endpush
