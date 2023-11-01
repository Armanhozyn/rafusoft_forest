<?php
$users = [
    "name",
    "email",
    "status",
    "email_verified_at",
    "profile_photo"
];

$dataArray = $users;

$model = "bit";
$UModel = ucfirst($model);

$fh = fopen("./view/table.php", 'w') or die("can't open file");
$stringData = <<<CODE
            @extends('layouts.app')
            @push('pg_btn')
            @can('create-$model')
            <a href="{{ route('$model.create') }}" class="btn btn-sm btn-neutral">Create New $UModel</a>
            @endcan
            @endpush
            @section('content')
            <div class="row">
                <div class="col-md-12">
                    <div class="card mb-5">
                        <div class="card-header bg-transparent">
                            <div class="row">
                                <div class="col-lg-8">
                                    <h3 class="mb-0">All $UModel</h3>
                                </div>
                            </div>
                        </div>
                        <div class="card-body px-2">
                            <div class="table-responsive">
                                <div>
                                    <table id="$model" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>{{trans('lang.serial_no')}}</th>
            CODE;
for ($i=0; $i < count($dataArray); $i++) {
    $lang = "lang.";

    $formName = $dataArray[$i];
    $formNameLang = $lang . $formName;
    $UFormName = ucfirst($dataArray[$i]);



    $stringData .= <<<CODE
                <th>{{trans('$formNameLang')}}</th>
    CODE;
}

$stringData .= <<<CODE
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

            $('#$model').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: `{{ route('$model.index') }}`,
            columns: [
                { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false },
            CODE;

            for ($i=0; $i < count($dataArray); $i++) {
                $lang = "lang.";

                $formName = $dataArray[$i];
                $formNameLang = $lang . $formName;
                $UFormName = ucfirst($dataArray[$i]);



                $stringData .= <<<CODE
                            { data: '$formName', name: '$formName' },
                CODE;
            }
            $stringData .= <<<CODE
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

            CODE;
fwrite($fh, $stringData);

fclose($fh);
