@extends('layouts.app')
@push('pg_btn')
{{-- @can('create-beneficiary') --}}
<a href="{{ route('all_lot_payment') }}" class="btn btn-sm btn-neutral">WoodLot DepositePayment</a>
{{-- @endcan --}}
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-header bg-transparent">
                <div class="row">
                    <div class="col-lg-8">
                        <h3 class="mb-0">Woodlot Deposite </h3>
                    </div>
                </div>
            </div>
            <div class="card-body px-2">

                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="garden_id" class="form-control-label">{{trans('garden.garden_id')}} নির্বাচন
                                করুন</label>
                            <select id="garden_id" name="garden_id" class="form-control form-control-sm">
                                <option selected="selected" value="">{{trans('garden.garden_id')}} নির্বাচন
                                    করুন</option>

                                @foreach ($gardens as $garden)
                                <option {{$garden->id == old('garden_id') ? 'selected' : ''}} value="{{ $garden->id
                                    }}">{{ $garden->id }}
                                </option>
                                @endforeach


                            </select>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="range_or_center_lot_no_and_year" class="form-control-label">{{trans('sold_garden.range_or_center_lot_no_and_year')}} নির্বাচন
                                করুন</label>
                            <select id="range_or_center_lot_no_and_year" name="range_or_center_lot_no_and_year" class="form-control form-control-sm">
                                <option selected="selected" value="">{{trans('sold_garden.range_or_center_lot_no_and_year')}} নির্বাচন
                                    করুন</option>

                                @foreach ($woodlots as $woodlot)
                                <option {{$woodlot->range_lot_no_year == old('range_or_center_lot_no_and_year') ? 'selected' : ''}} value="{{ $woodlot->range_lot_no_year
                                    }}">{{ $woodlot->range_lot_no_year }}
                                </option>
                                @endforeach


                            </select>
                        </div>
                    </div>
                </div>

                <div class="table-responsive">
                    <div>
                        <table id="lotTable" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>Serial No</th>
                                    <th>{{ __('sold_garden.garden_location') }}</th>
                                    <th>{{ __('sold_garden.range_lot_no_year') }}</th>
                                    <th>{{ __('sold_garden.money_collection_slip_no') }}</th>
                                    <th>{{ __('sold_garden.total_money_recoverd') }}</th>
                                    <th>{{ __('garden.garden_size') }}</th>
                                    <th>{{ __('sold_garden.division_group_no_year') }}</th>
                                    <th>{{ __('sold_garden.tenderer_name_address') }}</th>
                                    <th>{{ __('sold_garden.quoted_rate') }}</th>
                                    <th>Created At</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@push('scripts')
<script>
    $(document).ready(function() {

        let table = $('#lotTable').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            // ajax: `{{ route('lot_payment') }}`,
            ajax: {
                url:`{{ route('garden.deposite') }}`,
                data: function (data) {
                    data.garden_id = $('#garden_id').val()
                    data.range_or_center_lot_no_and_year = $('#range_or_center_lot_no_and_year').val()
                }
            },
            columns: [
                { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false },
                { data: 'garden_location', name: 'garden_location' },
                { data: 'range_lot_no_year', name: 'range_lot_no_year' },
                { data: 'money_collection_slip_no', name: 'money_collection_slip_no' },
                { data: 'total_money_recoverd', name: 'total_money_recoverd' },
                { data: 'garden_size', name: 'garden_size' },
                { data: 'division_group_no_year', name: 'division_group_no_year' },
                { data: 'tenderer_name_address', name: 'tenderer_name_address' },
                { data: 'quoted_rate', name: 'quoted_rate' },
                { data: 'created_at_read', name: 'created_at_read' },
                { data: 'actions', name: 'actions' }
            ],
            initComplete: function(settings, json) {
                debugger;
                $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
                });
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
            },
            error: function(jqXHR, textStatus, errorThrown) {
            // Handle the error your own way here
            console.error("Ajax error: ", textStatus, errorThrown);
            }
        });

        // $('#garden_id').on('change', function () {
        //         table.draw();
        // });


        $('#garden_id').change(function() {
            debugger;
            $('#range_or_center_lot_no_and_year').html('');
            var dropdown = $('#range_or_center_lot_no_and_year'); // Assuming you have a dropdown with id "myDropdown"
                dropdown.html('');
            let garden_id = $(this).val();

            // debugger;
            var routeUrl = "{{ route('wood_lot_by_garden',0) }}";
            var generatedUrl = routeUrl.replace('0', garden_id);

            $.get(generatedUrl, function(response) {
                // Success callback
                console.log("Response:", response);
                dropdown.append($('<option></option>').attr('value', '').text('রেঞ্জ/কেন্দ্রের লট নং ও সন নির্বাচন করুন...'));
                $.each(response.data, function(key, value) {
                    dropdown.append($('<option></option>').attr('value', key).text(value));
                });
                table.draw();
            }).fail(function(jqXHR, textStatus, errorThrown) {
                // Error callback
                console.error("Error:", errorThrown);
            });

        });

        $('#range_or_center_lot_no_and_year').on('change', function () {
                table.draw();
        });
});




</script>
@endpush
