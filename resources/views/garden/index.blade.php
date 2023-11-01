@extends('layouts.app')
@push('pg_btn')
    @can('create-category')
        <a href="{{ route('garden.create') }}" class="btn btn-sm btn-neutral">নতুন বাগান সৃজন</a>
    @endcan
@endpush
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-5">
                <div class="card-header bg-transparent">
                    <div class="row">
                        <div class="col-lg-8">
                            <h3 class="mb-0">সৃজিত বাগানসমূহ</h3>
                        </div>
                    </div>
                </div>
                <div class="card-body p-0 pt-3">
                    <div class="table-responsive">
                        <div>
                            <table  id="garden" class="table table-striped table-bordered" style="width:100%">
                                <thead class="thead-light">
                                    <tr>
                                        <th scope="col">সনাক্তকরন নম্বর</th>
                                        <th scope="col">বাগানের ধরন</th>
                                        <th scope="col">রেঞ্জ</th>
                                        <th scope="col">জেলা</th>
                                        <th scope="col">উপজেলা</th>
                                        {{-- <th scope="col">ইউনিয়ন</th> --}}

                                        <th scope="col">চুক্তিনামা</th>
                                        {{-- <th scope="col">Status</th> --}}
                                        <th scope="col">Created at</th>
                                        <th scope="col" class="text-center">Action</th>
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

$('#garden').DataTable({
processing: true,
serverSide: true,
responsive: true,
ajax: `{{ route('garden.index') }}`,
columns: [
    // { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false },
    { data: 'id', name: 'id' },
    { data: 'forest_type_name', name: 'forest_type_name' },
    { data: 'range_name', name: 'range_name' },
    { data: 'district_name', name: 'district_name' },
    { data: 'thana_name', name: 'thana_name' },
    { data: 'agreement_attachment', name: 'agreement_attachment' },
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
