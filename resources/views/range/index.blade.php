@extends('layouts.app')
@push('pg_btn')
@can('create-range')
<a href="{{ route('range.create') }}" class="btn btn-sm btn-neutral">Create New Range</a>
@endcan
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-header bg-transparent">
                <div class="row">
                    <div class="col-lg-8">
                        <h3 class="mb-0">All Range</h3>
                    </div>
                </div>
            </div>
            <div class="card-body px-2">
                <div class="table-responsive">
                    <div>
                        <table id="rangetable" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>{{trans('lang.serial_no')}}</th>
                                    <th>{{trans('lang.districts')}}</th>
                                    <th>{{trans('lang.name')}}</th>
                                    <th>{{trans('lang.name_in_english')}}</th>
                                    <th>{{trans('lang.office_head_designation')}}</th>
                                    <th>{{trans('lang.created_at')}}</th>
                                    <th>{{trans('lang.Action')}}</th>
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

$('#rangetable').DataTable({
processing: true,
serverSide: true,
responsive: true,
ajax: `{{ route('range.index') }}`,
columns: [
    { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false },
    { data: 'district_name', name: 'district_name' },
    { data: 'name', name: 'name' },
    { data: 'name_english', name: 'name_english' },
    { data: 'office_head_designation', name: 'office_head_designation' },
    {
        data: 'created_at_read',
        name: 'created_at_read'
    }, {
        data: 'actions',
        name: 'actions'
    },
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
