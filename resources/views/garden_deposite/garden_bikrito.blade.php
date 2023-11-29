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
                        <h3 class="mb-0">All Garden</h3>
                    </div>
                </div>
            </div>
            <div class="card-body px-2">

                <div class="row">

                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="bit_id" class="form-control-label">{{trans('navbar.bit')}} নির্বাচন
                                করুন</label>
                            <select id="bit_id" name="bit_id" class="form-control form-control-sm">
                                <option selected="selected" value="">{{trans('navbar.bit')}} নির্বাচন
                                    করুন</option>

                                @foreach ($bitList as $bit)
                                <option {{$bit->id == old('bit_id') ? 'selected' : ''}} value="{{ $bit->id }}">{{ $bit->name }}
                                </option>
                                @endforeach


                            </select>
                        </div>
                    </div>
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

                </div>

                <div class="table-responsive">
                    <div>
                        <table id="gardenBikritoTable" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>Serial No</th>
                                    <th>{{ __('garden.project_id') }}</th>
                                    <th>{{ __('garden.forest_type_id') }}</th>
                                    <th>{{ __('garden.creation_year') }}</th>
                                    <th>{{ __('garden.garden_size') }}</th>
                                    <th>{{ __('garden.rotation') }}</th>
                                    <th>{{ __('garden.location') }}</th>
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
                url:`{{ route('garden.bikrito') }}`,
                data: function (data) {
                    data.garden_id = $('#garden_id').val()
                    data.bit_id = $('#bit_id').val()
                }
            },
            columns: [
                { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false },
                { data: 'project_name', name: 'project_name' },
                { data: 'forest_type_name', name: 'forest_type_name' },
                { data: 'creation_year', name: 'creation_year' },
                { data: 'garden_size', name: 'garden_size' },
                { data: 'rotation', name: 'rotation' },
                { data: 'location', name: 'location' },
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
