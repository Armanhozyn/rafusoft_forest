@extends('layouts.app')
@push('pg_btn')
@can('create-district')
<a href="{{ route('district.create') }}" class="btn btn-sm btn-neutral">নতুন জেলা তৈরি করুন</a>
@endcan
@endpush
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card mb-5">
            <div class="card-header bg-transparent">
                <div class="row">
                    <div class="col-lg-8">
                        <h3 class="mb-0">সব জেলা</h3>
                    </div>
                </div>
            </div>
            <div class="card-body px-2">
                <div class="table-responsive">
                    <div>
                        <table id="districttable" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>{{trans('lang.serial_no')}}</th>
                                    <th>{{trans('lang.country_division')}}</th>
                                    {{-- <th>{{trans('lang.circle_id')}}</th> --}}
                                    <th>{{trans('lang.name')}}</th>
                                    <th>{{trans('lang.created_at')}}</th>
                                    <th>{{trans('lang.actions')}}</th>
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

        $('#districttable').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: '{{ route('district.index') }}',
            columns: [{
                data: 'DT_RowIndex',
                name: 'DT_RowIndex',
                orderable: false,
                searchable: false
            }, {
                data: 'country_division_name',
                name: 'country_division_name'
            },
            // {
            //     data: 'circle_id',
            //     name: 'circle_id'
            // },
            {
                data: 'name',
                name: 'name'
            },
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
