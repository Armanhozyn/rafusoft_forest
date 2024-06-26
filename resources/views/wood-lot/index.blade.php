@extends('layouts.app')
@push('pg_btn')
@can('create-beneficiary')
<a href="{{ route('woodlot.create') }}" class="btn btn-sm btn-neutral">Create New Wood Lot</a>
@endcan
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-header bg-transparent">
                <div class="row">
                    <div class="col-lg-8">
                        <h3 class="mb-0">All Woodlot</h3>
                    </div>
                </div>
            </div>
            <div class="card-body px-2">
                <div class="table-responsive">
                    <div>
                        <table id="lotTable" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>Serial No</th>
                                    <th>{{trans('garden.garden_id')}}</th>
                                    <th>{{ __('sold_garden.division_group_no_year') }}</th>
                                    <th>{{ __('sold_garden.range_lot_no_year') }}</th>
                                    <th>{{ __('sold_garden.info_of_lot') }}</th>
                                    <th>{{ __('sold_garden.tenderer_name_address') }}</th>
                                    <th>{{ __('sold_garden.quoted_rate') }}</th>
                                    <th>{{ __('sold_garden.advance_details') }}</th>
                                    <th>{{ __('sold_garden.collateral_details') }}</th>
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

$('#lotTable').DataTable({
processing: true,
serverSide: true,
responsive: true,
ajax: `{{ route('garden.woodlot.index') }}`,
columns: [
    { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false },
    { data: 'garden_id', name: 'garden_id' },
    { data: 'division_group_no_year', name: 'division_group_no_year' },
    { data: 'range_lot_no_year', name: 'range_lot_no_year' },
    { data: 'info_of_lot', name: 'info_of_lot' },
    { data: 'tenderer_name_address', name: 'tenderer_name_address' },
    { data: 'quoted_rate', name: 'quoted_rate' },
    { data: 'advance_details', name: 'advance_details' },
    { data: 'collateral_details', name: 'collateral_details' },
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
});




</script>
@endpush
