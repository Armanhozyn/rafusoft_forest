@extends('layouts.app')
@push('pg_btn')
{{-- @can('create-beneficiary') --}}
<a href="{{ route('garden.bikrito.list') }}" class="btn btn-sm btn-neutral">All Bikrito Garden</a>
{{-- @endcan --}}
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-header bg-transparent">
                <div class="row">
                    <div class="col-lg-8">
                        <h3 class="mb-0">All Sold Garden</h3>
                    </div>
                </div>
            </div>
            <div class="card-body px-2">

                <div class="table-responsive">
                    <div>
                        <table id="gardenBikritoTable" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>Serial No</th>
                                    <th>{{ __('garden.garden_id') }}</th>
                                    <th>{{ __('sold_garden.dorpotro_biggopti_no') }}</th>
                                    <th>{{ __('sold_garden.bikrito_date') }}</th>
                                    <th>{{ __('sold_garden.total_lot_count') }}</th>
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

        let table = $('#gardenBikritoTable').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            // ajax: `{{ route('lot_payment') }}`,
            ajax: {
                url:`{{ route('garden.bikrito.list') }}`,
                data: function (data) {
                    data.garden_id = $('#garden_id').val()
                    data.bit_id = $('#bit_id').val()
                }
            },
            columns: [
                { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false },
                { data: 'garden_id', name: 'garden_id' },
                { data: 'dorpotro_biggopti_no', name: 'dorpotro_biggopti_no' },
                { data: 'bikrito_date', name: 'bikrito_date' },
                { data: 'total_lot_count', name: 'total_lot_count' },
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


        $('#bit_id').change(function() {
            debugger;
            $('#garden_id').html('');
            var dropdown = $('#garden_id'); // Assuming you have a dropdown with id "myDropdown"
                dropdown.html('');
            let bit_id = $(this).val();

            // debugger;
            var routeUrl = "{{ route('garden_by_bit',0) }}";
            var generatedUrl = routeUrl.replace('0', bit_id);

            $.get(generatedUrl, function(response) {
                // Success callback
                console.log("Response:", response);
                dropdown.append($('<option></option>').attr('value', '').text('সৃজিত বাগানের আইডি নির্বাচন করুন ...'));
                $.each(response.data, function(key, value) {
                    dropdown.append($('<option></option>').attr('value', key).text(value));
                });
                table.draw();
            }).fail(function(jqXHR, textStatus, errorThrown) {
                // Error callback
                console.error("Error:", errorThrown);
            });

        });

        $('#garden_id').on('change', function () {
                table.draw();
        });
});




</script>
@endpush
