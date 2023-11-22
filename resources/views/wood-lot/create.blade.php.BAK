@extends('layouts.app')
@push('pg_btn')
    <a href="{{ route('country.index') }}" class="btn btn-sm btn-neutral">{{ __('sold_garden.all_lots') }}</a>
@endpush
@section('content')

    <style>
        .wmd-view-topscroll,
        .wmd-view {
            overflow-x: scroll;
            overflow-y: scroll;
            width: 100%;
            border: none 0px RED;
        }

        .wmd-view-topscroll {
            height: 20px;
        }

        .wmd-view {
            height: auto;
        }

        .scroll-div1 {
            /*border: 1px solid red;*/
            /*width:100%;*/
            overflow-x: scroll;
            overflow-y: hidden;
            height: 20px;
        }

        .scroll-div2 table {
            width: 100%;
            height: 20px;
        }

        .fa-tree {
            color: #1a724c;
        }

        input[name="tenderer_name_address"] {
            width: 100% !important;
        }
    </style>

    <div class="row" id="app">
        <div class="col-md-12">
            <div class="card mb-5">
                <div class="card-body">


                    <h6 class="heading-small text-muted mb-4">{{ __('') }}</h6>

                    @if (session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif



                    {!! Form::open(['url' => 'test/excel', 'files' => true, 'id' => 'importForm']) !!}
                    <div class="pl-lg-4">
                        <div class="row">

                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{-- {{ dd($roles) }} --}}
                                    {{ Form::label('garden_creation_year', __('sold_garden.select_graden_creation_year'), ['class' => 'form-control-label']) }}
                                    {{ Form::select('garden_creation_year', $creationYears, @$_GET['year'], ['class' => 'form-control form-control-sm', 'placeholder' => __('sold_garden.select_graden_creation_year'), 'id' => 'garden-year']) }}
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{-- {{ dd($roles) }} --}}
                                    {{ Form::label('garden_id', __('sold_garden.select_garden'), ['class' => 'form-control-label']) }}
                                    {{ Form::select('garden_id', $gardens, @$_GET['garden_id'], ['class' => 'form-control form-control-sm', 'placeholder' => __('sold_garden.select_a_garden'), 'id' => 'garden-dropdown']) }}
                                </div>
                            </div>

                            <!--                            <div class="col-lg-6">
                                        <div class="form-group">
                                            {{ Form::label('lot_no', __('sold_garden.lot_no'), ['class' => 'form-control-label', 'id' => 'lot-no-textbox']) }}
                                            {{ Form::text('lot_no', null, ['class' => 'form-control form-control-sm']) }}
                                        </div>
                                    </div>-->

                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{ Form::label('excel', 'Excel file to import', ['class' => 'form-control-label', 'id' => 'excel-import-file']) }}
                                    {{ Form::file('excel', ['class' => 'form-control-file form-control-sm  border']) }}
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-sm">Import</button>
                                </div>

                            </div>


                        </div>
                    </div>
                    {!! Form::close() !!}

                    {!! Form::open(['url' => 'wood-lot/ajax-save', 'files' => false, 'id' => 'entryForm']) !!}
                    <div class="wmd-view-topscroll">
                        <div class="scroll-div1">
                        </div>
                    </div>

                    <div class="wmd-view">
                        <div class="scroll-div2">
                            <table class="table" id="pending-wood-lot-list">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>{{ __('sold_garden.division_group_no_year') }}</th>
                                        <th>{{ __('sold_garden.range_lot_no_year') }}</th>
                                        <th>{{ __('sold_garden.fuel') }}</th>
                                        <th>{{ __('sold_garden.bolli_count') }}</th>
                                        <th>{{ __('sold_garden.tenderer_name_address') }}</th>
                                        <th>{{ __('sold_garden.quoted_rate') }}</th>
                                        {{--                                    <th>{{ __('sold_garden.total_tree_count') }}</th> --}}
                                        <th>{{ __('sold_garden.total_number_of_trees') }}</th>
                                        <th>{{ __('sold_garden.total_wood_amount') }}</th>
                                        <th>Species</th>

                                        {{--
                                                                        <th>Collection Date</th>
                                                                        <th>Collection Slip No</th>
                                                                        <th>Deposit</th>
                                                                        <th>Deposit Slip No</th> --}}
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($woodlots as $row)
                                        <tr>
                                            <td>{{ $row->id }}</td>
                                            {{-- <td>{{ $row->garden->location }}</td> --}}
                                            <td>{{ $row->division_group_no_year }}</td>
                                            <td>{{ $row->range_lot_no_year }}</td>
                                            <td>{{ $row->fuel }}</td>
                                            <td>{{ $row->bolli_count }}</td>
                                            <td>{{ $row->tenderer_name_address }}</td>
                                            <td>{{ $row->quoted_rate }}</td>
                                            {{--                                        <td>{{ $row->total_tree_count }}</td> --}}
                                            <td>{{ $row->total_number_of_trees }}</td>
                                            <td>{{ $row->total_wood_amount }}</td>
                                            <td><button title="View Species" data-id="{{ $row->id }}" type="button"
                                                    class="species-view-btn btn-success btn-sm"><i
                                                        class="fa fa-eye"></i></button></td>
                                            {{--                                         <td>{{ $row->money_collection_date }}</td>
                                                                                <td>{{ $row->money_collection_slip_no }}</td>

                                                                                <td>{{ $row->money_deposit }}</td>
                                                                                <td>{{ $row->money_deposit_slip_no }}</td> --}}
                                            <td>x</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>

                                        <td>-</td>
                                        {{-- <td>{{ Form::select('garden_id', $gardens, null, ['class' => 'form-control-sm', 'placeholder' => 'Select garden...', 'required'=> 'required']) }} --}}
                                        </td>
                                        <td>
                                            {{ Form::text('division_group_no_year', null, ['class' => 'form-control-sm', 'placeholder' => __('sold_garden.division_group_no_year'), 'required' => 'required']) }}
                                        </td>
                                        <td>
                                            {{ Form::text('range_lot_no_year', null, ['class' => 'form-control-sm', 'placeholder' => __('sold_garden.range_lot_no_year'), 'required' => 'required']) }}
                                        </td>

                                        <td>
                                            {{ Form::number('fuel', null, ['class' => 'form-control-sm', 'placeholder' => __('sold_garden.fuel'), 'required' => 'required', 'min' => '0', 'max' => '9999999999.99', 'step' => '0.01']) }}
                                        </td>

                                        <td>
                                            {{ Form::number('bolli_count', null, ['class' => 'form-control-sm', 'placeholder' => __('sold_garden.bolli_count'), 'required' => 'required', 'min' => '0', 'max' => '9999999999.99']) }}
                                        </td>
                                        <td>
                                            {{ Form::text('tenderer_name_address', null, ['class' => 'form-control-sm', 'placeholder' => __('sold_garden.tenderer_name_address'), 'required' => 'required']) }}
                                        </td>
                                        <td>
                                            {{ Form::number('quoted_rate', null, ['class' => 'form-control-sm', 'placeholder' => __('sold_garden.quoted_rate'), 'required' => 'required', 'min' => '0', 'max' => '9999999999.99', 'step' => '0.01']) }}
                                        </td>

                                        <td>
                                            {{ Form::number('total_number_of_trees', null, ['class' => 'form-control-sm', 'placeholder' => __('sold_garden.total_number_of_trees'), 'required' => 'required', 'min' => '0', 'max' => '9999999999.99']) }}
                                        </td>


                                        <td>
                                            {{ Form::number('total_wood_amount', null, ['class' => 'form-control-sm', 'placeholder' => __('sold_garden.total_wood_amount'), 'required' => 'required', 'min' => '0', 'max' => '9999999999.99', 'step' => '0.01']) }}
                                        </td>
                                        <td>
                                            <span id="speciesCount" class="badge badge-danger">0</span>&nbsp;
                                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal"
                                                data-target="#speciesAddModal"><i class="fa fa-plus-square"></i></button>
                                        </td>


                                        {{--                                     <td>
                                                                            {{ Form::date('money_collection_date', null, ['class' => 'form-control-sm', 'placeholder' => 'Collection Date', 'required'=> 'required']) }}
                                                                        </td>
                                                                        <td>
                                                                            {{ Form::text('money_collection_slip_no', null, ['class' => 'form-control-sm', 'placeholder' => 'Collection Slip No', 'required'=> 'required']) }}
                                                                        </td>
                                                                        <td>
                                                                            {{ Form::text('money_deposit', null, ['class' => 'form-control-sm', 'placeholder' => 'Money Deposit', 'required'=> 'required']) }}
                                                                        </td>

                                                                        <td>
                                                                            {{ Form::text('money_deposit_slip_no', null, ['class' => 'form-control-sm', 'placeholder' => 'Deposit Slip No', 'required'=> 'required']) }}
                                                                        </td>
                                     --}}



                                        <td><button class="btn btn-primary btn-sm" type="submit"
                                                id="entrySaveBtn">Save</button></td>

                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                    </div>


                    {{--

                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">

                                    {{ Form::label('garden', 'Select Garden', ['class' => 'form-control-label']) }}
                                    {{ Form::select('garden', $gardens, null, ['class' => 'form-control', 'placeholder' => 'Select garden...']) }}
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    {{ Form::label('name', 'Location', ['class' => 'form-control-label']) }}
                                    {{ Form::text('location', null, ['class' => 'form-control']) }}
                                </div>
                            </div>
                        </div>

                    </div>




                    <div class="pl-lg-4">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" name="status" value="1" class="custom-control-input"
                                        id="status">
                                    {{ Form::label('status', 'Status', ['class' => 'custom-control-label']) }}
                                </div>
                            </div>
                            <div class="col-md-12">
                                {{ Form::submit('Submit', ['class' => 'mt-5 btn btn-primary']) }}
                            </div>
                        </div>
                    </div>


 --}}
                    @csrf

                    {!! Form::close() !!}


                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="speciesAddModal" tabindex="-1" role="dialog" aria-labelledby="speciesAddModal"
        aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="speciesAddModalLabel">Species Add Modal</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <table id="treeTable" class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Species</th>
                                <th>Number of Trees</th>
                                <th>Wood Amount</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>

                            <!-- Add more rows here if needed -->
                        </tbody>
                        <tfoot>
                            <tr>
                                <td>
                                    <div class="form-group">
                                        <select id="speciesInput" class="selectpicker" data-live-search="true"
                                            title="Please select a tree ...">
                                            <option value="">Select a species</option>
                                            <option value="ইউক্যা" data-icon="fa fa-tree">ইউক্যা (Eucalyptus)</option>
                                            <option value="বকাইন" data-icon="fa fa-tree">বকাইন (Bakain)</option>
                                            <option value="আকাশমনি" data-icon="fa fa-tree">আকাশমনি (Akashmoni)</option>
                                            <option value="জারুল" data-icon="fa fa-tree">জারুল (Jarul)</option>
                                            <option value="মেহগুনী" data-icon="fa fa-tree">মেহগুনী (Mahogany)</option>
                                            <option value="গামার" data-icon="fa fa-tree">গামার (Gamar)</option>
                                            <option value="চিতরাশি" data-icon="fa fa-tree">চিতরাশি (Chitroshi)</option>
                                            <option value="মিনজিরী" data-icon="fa fa-tree">মিনজিরী (Minjiri)</option>
                                            <option value="ইপিল ইপিল" data-icon="fa fa-tree">ইপিল ইপিল (Ipil Ipil)</option>
                                            <option value="কড়াই" data-icon="fa fa-tree">কড়াই (Kadai)</option>
                                            <option value="অর্জুন" data-icon="fa fa-tree">অর্জুন (Arjun)</option>
                                            <option value="ডাউয়া" data-icon="fa fa-tree">ডাউয়া (Dhawa)</option>
                                            <option value="পিটালী" data-icon="fa fa-tree">পিটালী (Pitalee)</option>
                                            <option value="সেগুন" data-icon="fa fa-tree">সেগুন (Segun)</option>
                                            <option value="আগর" data-icon="fa fa-tree">আগর (Agar)</option>
                                            <option value="কাঁঠাল" data-icon="fa fa-tree">কাঁঠাল (Kathal)</option>
                                            <option value="জিগনী" data-icon="fa fa-tree">জিগনী (Jigni)</option>
                                            <option value="লোহা কাঠ" data-icon="fa fa-tree">লোহা কাঠ (Loha Kath)</option>
                                            <option value="বেলজিয়াম" data-icon="fa fa-tree">বেলজিয়াম (Belgium)</option>
                                            <option value="শীল কড়ই" data-icon="fa fa-tree">শীল কড়ই (Shil Kari)</option>
                                            <option value="শাল" data-icon="fa fa-tree">শাল (Sh

                                        </select>
                                    </div>

                                </td>
                                <td>
                                    <input id="treeInput" type="number" class="form-control"
                                        placeholder="Number of Trees">
                                </td>
                                <td>
                                    <input id="woodInput" type="number" class="form-control" placeholder="Wood Amount"
                                        step="0.01">
                                </td>
                                <td>
                                    <button id="addRowBtn" class="btn btn-success btn-sm" title="Add Row"><i
                                            class="fas fa-plus"></i></button>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal">Done</button>
                    {{--                    <button id="saveBtn" class="btn btn-primary">Save</button> --}}
                    <button id="clearBtn" class="btn btn-danger">Clear</button>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="speciesInfoModal" tabindex="-1" role="dialog" aria-labelledby="speciesInfoModal"
        aria-hidden="true" data-backdrop="static">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="speciesInfoModalLabel">Species Info</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <table id="speciesInfoTable" class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Species</th>
                                <th>Number of Trees</th>
                                <th>Wood Amount</th>

                            </tr>
                        </thead>
                        <tbody>

                            <!-- Add more rows here if needed -->
                        </tbody>
                        <tfoot>
                            <tr>
                                <td></td>
                                <td id="treeCountTotal" style="font-weight: bold"></td>
                                <td id="woodTotal" style="font-weight: bold"></td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
                    {{--                    <button id="saveBtn" class="btn btn-primary">Save</button> --}}
                    {{--                    <button id="clearBtn" class="btn btn-danger">Clear</button> --}}
                </div>
            </div>
        </div>
    </div>



@endsection

@push('scripts')
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.js"></script>


    <script>
        var gardens = JSON.parse('{!! json_encode($gardens, true) !!}');
        console.log(gardens);
    </script>
    {{--    <script src="/js/app.js"></script> --}}
    <script src="/js/notify.min.js"></script>
    <script src="{{ asset('vendor/laravel-filemanager/js/stand-alone-button.js') }}"></script>

    <script>
        var currenSpecies = null;
        var speciesCount = 0;

        jQuery(document).ready(function() {
            jQuery('#uploadFile').filemanager('file');
        });

        $("#entrySaveBtn").click(function() {
            console.log('#entrySaveBtn clicked');


        });


        function addRow() {
            var species = $('#speciesInput').val();
            var trees = $('#treeInput').val();
            var wood = $('#woodInput').val();

            if (species && trees && wood) {
                var exists = false;
                var existingSpecies = [];
                $('#treeTable tbody tr').each(function(index, row) {
                    existingSpecies.push($(row).find('td:eq(0)').text());
                    /*                      var existingSpecies = $(this).find('td:eq(0)').text();
                                          console.log('existingSpecies: ', existingSpecies);
                                          console.log('species: ', species);
                                          if (existingSpecies === species) {
                                              exists = true;
                                              return false; // Exit the loop if a match is found
                                          }*/
                });

                console.log('exist list: ', existingSpecies);

                if (existingSpecies.indexOf(species) !== -1) {
                    exists = true;
                }

                if (exists) {
                    // Display an error message or perform other actions as needed
                    console.log('Species already exists in the table.');
                    notify('error', 'Wood lot add!', 'Species already exists in the table.');
                } else {
                    var row = '<tr>' +
                        '<td>' + species + '</td>' +
                        '<td>' + trees + '</td>' +
                        '<td>' + wood + '</td>' +
                        '<td>' +

                        '<button class="btn btn-danger btn-sm delete-row" title="Delete Row"><i class="fas fa-trash"></i></button>' +
                        '</td>' +
                        '</tr>';

                    $('#treeTable tbody').append(row);

                    // Clear input fields
                    $('#speciesInput').val('');
                    $('#treeInput').val('');
                    $('#woodInput').val('');
                    speciesCount += 1;
                    $('#speciesCount').text(speciesCount);
                    $('#speciesCount').removeClass('badge-danger');
                    $('#speciesCount').addClass('badge-success');
                    // $(this).children('i').removeClass('fa-plus-square');
                    // $(this).children('i').addClass('fa-edit');

                    // Reset the Selectpicker
                    $('.selectpicker').selectpicker('val', '');

                    // Refresh the Selectpicker to update the UI
                    $('.selectpicker').selectpicker('refresh');
                    $('#speciesInput + button').removeClass('btn-light');
                }


            }
        }

        $(document).ready(function() {

            $('#speciesAddModal').on('show.bs.modal', function() {
                // Function to execute when the modal is opened
                console.log('Modal opened');

                $('#speciesInput + button').click();
                $('#speciesInput + button').removeClass('btn-light');
                // Add your code here
            });



            // Add Row button click event
            $('#addRowBtn').on('click', function() {
                addRow();
            });

            // Delete Row button click event
            $('#treeTable').on('click', '.delete-row', function() {
                $(this).closest('tr').remove();
                speciesCount -= 1;
                $('#speciesCount').text(speciesCount);
                if (speciesCount < 1) {
                    $('#speciesCount').removeClass('badge-success');
                    $('#speciesCount').addClass('badge-danger');
                    // $('#addRowBtn').children('i').removeClass('fa-edit');
                    // $('#addRowBtn').children('i').addClass('fa-plus-square');
                }
            });

            // Save button click event
            $('#saveBtn').on('click', function() {
                var data = [];

                $('#treeTable tbody tr').each(function() {
                    var species = $(this).find('td:eq(0)').text();
                    var trees = $(this).find('td:eq(1)').text();
                    var wood = $(this).find('td:eq(2)').text();

                    var row = {
                        species_name: species,
                        tree_count: trees,
                        wood_amount: wood
                    };

                    data.push(row);
                });

                // Convert data to JSON
                // var jsonData = JSON.stringify(data);
                // console.log(jsonData);
                speechSynthesis = data;
                // $('#treeTable tbody tr').html("");
            });

            $('#clearBtn').on('click', function() {
                $('#treeTable tbody tr').html("");
                speciesCount = 0;
                $('#speciesCount').text(speciesCount);
                $('#speciesCount').removeClass('badge-success');
                $('#speciesCount').addClass('badge-danger');
            });


            // Keypress event on input fields
            $('#speciesInput, #treeInput, #woodInput').on('keypress', function(event) {
                if (event.which === 13) {
                    addRow();
                    event.preventDefault();
                }
            });



            $('.scroll-div1').width($('.scroll-div2 table').width());

            console.log('.scroll-div1 width: ', $('.scroll-div1').width());
            console.log('.scroll-div2 table: ', $('.scroll-div2 table').width());

            $(".wmd-view-topscroll").scroll(function() {
                $(".wmd-view")
                    .scrollLeft($(".wmd-view-topscroll").scrollLeft());
            });
            $(".wmd-view").scroll(function() {
                $(".wmd-view-topscroll")
                    .scrollLeft($(".wmd-view").scrollLeft());
            });





            $('#entryForm').submit(function(event) {

                var speciesData = [];

                $('#treeTable tbody tr').each(function() {
                    var species = $(this).find('td:eq(0)').text();
                    var trees = $(this).find('td:eq(1)').text();
                    var wood = $(this).find('td:eq(2)').text();

                    var row = {
                        species: species,
                        species_count: trees,
                        wood_amount: wood
                    };

                    speciesData.push(row);
                });


                event.preventDefault(); // prevent the form from submitting normally
                let garden_id = $('#garden-dropdown').val();
                if (garden_id == '') {
                    notify('error', 'Wood lot add!', 'Please select a garden');

                    return false;
                }






                let woodLotListTable = $('#pending-wood-lot-list tbody');

                //inputs
                let id = $('input[name="id"]');

                let range_or_center_lot_no_and_year = $('input[name="range_or_center_lot_no_and_year"]');
                let divisional_group_no_and_year = $('input[name="divisional_group_no_and_year"]');
                let lot_buyer_name = $('input[name="lot_buyer_name"]');
                let fuel = $('input[name="fuel"]');
                let bolli_count = $('input[name="bolli_count"]');
                let tenderer_name_address = $('input[name="tenderer_name_address"]');
                let quoted_rate = $('input[name="quoted_rate"]');
                let total_number_of_trees = $('input[name="total_number_of_trees"]');
                let total_wood_amount = $('input[name="total_wood_amount"]');
                /*                 let money_collection_slip_no = $('input[name="money_collection_slip_no"]');
                                let money_collection_date = $('input[name="money_collection_date"]');
                                let money_deposit_slip_no = $('input[name="money_deposit_slip_no"]');
                                let money_deposit = $('input[name="money_deposit"]'); */


                // get the form data
                let form = $(this);
                // form.append('garden_id', id);
                var formData = $(this).serialize();
                formData += '&garden_id=' + garden_id;
                formData += '&species=' + JSON.stringify(speciesData);


                // send an AJAX request to the server
                $.ajax({
                    url: '/garden/wood-lot-ajax-save',
                    type: 'POST',
                    data: formData,
                    success: function(response) {
                        // handle the server response here
                        console.log('received data: ', response);

                        if (response.success == false) {
                            console.log('failue');
                            notify('warning', 'Wood lot add!', response.error);
                        }

                        if (response.success == true) {
                            console.log('success');
                            let newRow = `<tr>
                                        <td>${response.data.id}</td>
                                        <td>${response.data.division_group_no_year}</td>
                                        <td>${response.data.range_lot_no_year}</td>
                                        <td>${response.data.fuel}</td>
                                        <td>${response.data.bolli_count}</td>
                                        <td>${response.data.tenderer_name_address}</td>
                                        <td>${response.data.quoted_rate}</td>
                                        <td>${response.data.total_number_of_trees}</td>
                                        <td>${response.data.total_wood_amount}</td>
                                        <td><button title="View Species" data-id="${response.data.id}" type="button" class="species-view-btn btn-success btn-sm"><i class="fa fa-eye"></i></button></td>
                                        <td>x</td>
                                    </tr>`;

                            // <td>${response.data.money_collection_date}</td>
                            //     <td>${response.data.money_collection_slip_no}</td>
                            //     <td>${response.data.money_deposit}</td>
                            //     <td>${response.data.money_deposit_slip_no}</td>

                            woodLotListTable.append(newRow);

                            $('#treeTable tbody tr').html("");
                            speciesCount = 0;
                            $('#speciesCount').text(speciesCount);
                            $('#speciesCount').removeClass('badge-success');
                            $('#speciesCount').addClass('badge-danger');

                            $("#pending-wood-lot-list tfoot input,#pending-wood-lot-list tfoot select")
                                .val('');

                            notify('success', 'Wood lot add!', response.message);
                        }
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        // handle errors here
                        console.log(textStatus, errorThrown);
                        notify('error', 'Wood lot add!', 'Something error');
                    }
                });
            });



        });

        function notify(type, title, message) {

            //CREATE TOAST CONTAINER IF IT DOESN'T EXIST
            if ($('.toast-container').length == 0) {
                $('<div>', {
                        'class': 'toast-container',
                        'aria-live': 'polite',
                        'aria-atomic': 'true',
                    })
                    .appendTo(document.body);
            }







            //VARIABLES
            var toast_container = $('.toast-container'),
                toast_type = type,
                toast_icon = null,
                toast_title = title,
                toast_message = message,
                toast_btn_close_svg =
                '<svg class="svg-inline--fa fa-times fa-w-11 fa-fw fa-xs" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 352 512" data-fa-i2svg=""><path fill="currentColor" d="M242.72 256l100.07-100.07c12.28-12.28 12.28-32.19 0-44.48l-22.24-22.24c-12.28-12.28-32.19-12.28-44.48 0L176 189.28 75.93 89.21c-12.28-12.28-32.19-12.28-44.48 0L9.21 111.45c-12.28 12.28-12.28 32.19 0 44.48L109.28 256 9.21 356.07c-12.28 12.28-12.28 32.19 0 44.48l22.24 22.24c12.28 12.28 32.2 12.28 44.48 0L176 322.72l100.07 100.07c12.28 12.28 32.2 12.28 44.48 0l22.24-22.24c12.28-12.28 12.28-32.19 0-44.48L242.72 256z"></path></svg>';


            //VARIABLE - ICON
            switch (toast_type) {

                //GENERAL:
                case 'info':
                    toast_icon =
                        '<svg viewBox="0 0 448 512"><path fill="#f8f9fa" d="M400 32H48C21.49 32 0 53.49 0 80v352c0 26.51 21.49 48 48 48h352c26.51 0 48-21.49 48-48V80c0-26.51-21.49-48-48-48zm-176 86c23.196 0 42 18.804 42 42s-18.804 42-42 42-42-18.804-42-42 18.804-42 42-42zm56 254c0 6.627-5.373 12-12 12h-88c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h12v-64h-12c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h64c6.627 0 12 5.373 12 12v100h12c6.627 0 12 5.373 12 12v24z"/></svg>';
                    break;
                case 'warning':
                    toast_icon =
                        '<svg viewBox="0 0 576 512"><path fill="#343a40" d="M569.517 440.013C587.975 472.007 564.806 512 527.94 512H48.054c-36.937 0-59.999-40.055-41.577-71.987L246.423 23.985c18.467-32.009 64.72-31.951 83.154 0l239.94 416.028zM288 354c-25.405 0-46 20.595-46 46s20.595 46 46 46 46-20.595 46-46-20.595-46-46-46zm-43.673-165.346l7.418 136c.347 6.364 5.609 11.346 11.982 11.346h48.546c6.373 0 11.635-4.982 11.982-11.346l7.418-136c.375-6.874-5.098-12.654-11.982-12.654h-63.383c-6.884 0-12.356 5.78-11.981 12.654z"/></svg>';
                    break;
                case 'success':
                    toast_icon =
                        '<svg viewBox="0 0 512 512"><path fill="#f8f9fa" d="M504 256c0 136.967-111.033 248-248 248S8 392.967 8 256 119.033 8 256 8s248 111.033 248 248zM227.314 387.314l184-184c6.248-6.248 6.248-16.379 0-22.627l-22.627-22.627c-6.248-6.249-16.379-6.249-22.628 0L216 308.118l-70.059-70.059c-6.248-6.248-16.379-6.248-22.628 0l-22.627 22.627c-6.248 6.248-6.248 16.379 0 22.627l104 104c6.249 6.249 16.379 6.249 22.628.001z"/></svg>';
                    break;
                case 'error':
                    toast_icon =
                        '<svg viewBox="0 0 512 512"><path fill="#f8f9fa" d="M497.9 150.5c9 9 14.1 21.2 14.1 33.9v143.1c0 12.7-5.1 24.9-14.1 33.9L361.5 497.9c-9 9-21.2 14.1-33.9 14.1H184.5c-12.7 0-24.9-5.1-33.9-14.1L14.1 361.5c-9-9-14.1-21.2-14.1-33.9V184.5c0-12.7 5.1-24.9 14.1-33.9L150.5 14.1c9-9 21.2-14.1 33.9-14.1h143.1c12.7 0 24.9 5.1 33.9 14.1l136.5 136.4zM377.6 338c4.7-4.7 4.7-12.3 0-17l-65-65 65.1-65.1c4.7-4.7 4.7-12.3 0-17L338 134.4c-4.7-4.7-12.3-4.7-17 0l-65 65-65.1-65.1c-4.7-4.7-12.3-4.7-17 0L134.4 174c-4.7 4.7-4.7 12.3 0 17l65.1 65.1-65.1 65.1c-4.7 4.7-4.7 12.3 0 17l39.6 39.6c4.7 4.7 12.3 4.7 17 0l65.1-65.1 65.1 65.1c4.7 4.7 12.3 4.7 17 0l39.4-39.8z"/></svg>';
                    break;
                case 'other':
                    toast_icon =
                        '<svg class="fa-spin" viewBox="0 0 512 512"><path fill="#f8f9fa" d="M304 48c0 26.51-21.49 48-48 48s-48-21.49-48-48 21.49-48 48-48 48 21.49 48 48zm-48 368c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48-21.49-48-48-48zm208-208c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48-21.49-48-48-48zM96 256c0-26.51-21.49-48-48-48S0 229.49 0 256s21.49 48 48 48 48-21.49 48-48zm12.922 99.078c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48c0-26.509-21.491-48-48-48zm294.156 0c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48c0-26.509-21.49-48-48-48zM108.922 60.922c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48-21.491-48-48-48z"/></svg>';
                    break;

                    //BRANDS:
                case 'facebook':
                    toast_icon =
                        '<svg viewBox="0 0 448 512"><path fill="#f8f9fa" d="M400 32H48A48 48 0 0 0 0 80v352a48 48 0 0 0 48 48h137.25V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.27c-30.81 0-40.42 19.12-40.42 38.73V256h68.78l-11 71.69h-57.78V480H400a48 48 0 0 0 48-48V80a48 48 0 0 0-48-48z"/></svg>';
                    break;
                case 'github':
                    toast_icon =
                        '<svg viewBox="0 0 496 512"><path fill="#f8f9fa" d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z"/></svg>';
                    break;
                case 'instagram':
                    toast_icon =
                        '<svg viewBox="0 0 448 512"><path fill="#f8f9fa" d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"/></svg>';
                    break;
                case 'linkedin':
                    toast_icon =
                        '<svg viewBox="0 0 448 512"><path fill="#f8f9fa" d="M416 32H31.9C14.3 32 0 46.5 0 64.3v383.4C0 465.5 14.3 480 31.9 480H416c17.6 0 32-14.5 32-32.3V64.3c0-17.8-14.4-32.3-32-32.3zM135.4 416H69V202.2h66.5V416zm-33.2-243c-21.3 0-38.5-17.3-38.5-38.5S80.9 96 102.2 96c21.2 0 38.5 17.3 38.5 38.5 0 21.3-17.2 38.5-38.5 38.5zm282.1 243h-66.4V312c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9V416h-66.4V202.2h63.7v29.2h.9c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9V416z"/></svg>';
                    break;
                case 'paypal':
                    toast_icon =
                        '<svg viewBox="0 0 384 512"><path fill="#f8f9fa" d="M111.4 295.9c-3.5 19.2-17.4 108.7-21.5 134-.3 1.8-1 2.5-3 2.5H12.3c-7.6 0-13.1-6.6-12.1-13.9L58.8 46.6c1.5-9.6 10.1-16.9 20-16.9 152.3 0 165.1-3.7 204 11.4 60.1 23.3 65.6 79.5 44 140.3-21.5 62.6-72.5 89.5-140.1 90.3-43.4.7-69.5-7-75.3 24.2zM357.1 152c-1.8-1.3-2.5-1.8-3 1.3-2 11.4-5.1 22.5-8.8 33.6-39.9 113.8-150.5 103.9-204.5 103.9-6.1 0-10.1 3.3-10.9 9.4-22.6 140.4-27.1 169.7-27.1 169.7-1 7.1 3.5 12.9 10.6 12.9h63.5c8.6 0 15.7-6.3 17.4-14.9.7-5.4-1.1 6.1 14.4-91.3 4.6-22 14.3-19.7 29.3-19.7 71 0 126.4-28.8 142.9-112.3 6.5-34.8 4.6-71.4-23.8-92.6z"/></svg>';
                    break;
                case 'skype':
                    toast_icon =
                        '<svg viewBox="0 0 448 512"><path fill="#f8f9fa" d="M424.7 299.8c2.9-14 4.7-28.9 4.7-43.8 0-113.5-91.9-205.3-205.3-205.3-14.9 0-29.7 1.7-43.8 4.7C161.3 40.7 137.7 32 112 32 50.2 32 0 82.2 0 144c0 25.7 8.7 49.3 23.3 68.2-2.9 14-4.7 28.9-4.7 43.8 0 113.5 91.9 205.3 205.3 205.3 14.9 0 29.7-1.7 43.8-4.7 19 14.6 42.6 23.3 68.2 23.3 61.8 0 112-50.2 112-112 .1-25.6-8.6-49.2-23.2-68.1zm-194.6 91.5c-65.6 0-120.5-29.2-120.5-65 0-16 9-30.6 29.5-30.6 31.2 0 34.1 44.9 88.1 44.9 25.7 0 42.3-11.4 42.3-26.3 0-18.7-16-21.6-42-28-62.5-15.4-117.8-22-117.8-87.2 0-59.2 58.6-81.1 109.1-81.1 55.1 0 110.8 21.9 110.8 55.4 0 16.9-11.4 31.8-30.3 31.8-28.3 0-29.2-33.5-75-33.5-25.7 0-42 7-42 22.5 0 19.8 20.8 21.8 69.1 33 41.4 9.3 90.7 26.8 90.7 77.6 0 59.1-57.1 86.5-112 86.5z"/></svg>';
                    break;
                case 'twitter':
                    toast_icon =
                        '<svg viewBox="0 0 512 512"><path fill="#f8f9fa" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"/></svg>';
                    break;
                case 'wikipedia':
                    toast_icon =
                        '<svg viewBox="0 0 640 512"><path fill="#f8f9fa" d="M640 51.2l-.3 12.2c-28.1.8-45 15.8-55.8 40.3-25 57.8-103.3 240-155.3 358.6H415l-81.9-193.1c-32.5 63.6-68.3 130-99.2 193.1-.3.3-15 0-15-.3C172 352.3 122.8 243.4 75.8 133.4 64.4 106.7 26.4 63.4.2 63.7c0-3.1-.3-10-.3-14.2h161.9v13.9c-19.2 1.1-52.8 13.3-43.3 34.2 21.9 49.7 103.6 240.3 125.6 288.6 15-29.7 57.8-109.2 75.3-142.8-13.9-28.3-58.6-133.9-72.8-160-9.7-17.8-36.1-19.4-55.8-19.7V49.8l142.5.3v13.1c-19.4.6-38.1 7.8-29.4 26.1 18.9 40 30.6 68.1 48.1 104.7 5.6-10.8 34.7-69.4 48.1-100.8 8.9-20.6-3.9-28.6-38.6-29.4.3-3.6 0-10.3.3-13.6 44.4-.3 111.1-.3 123.1-.6v13.6c-22.5.8-45.8 12.8-58.1 31.7l-59.2 122.8c6.4 16.1 63.3 142.8 69.2 156.7L559.2 91.8c-8.6-23.1-36.4-28.1-47.2-28.3V49.6l127.8 1.1.2.5z"/></svg>';
                    break;
                case 'youtube':
                    toast_icon =
                        '<svg viewBox="0 0 576 512"><path fill="#f8f9fa" d="M549.655 124.083c-6.281-23.65-24.787-42.276-48.284-48.597C458.781 64 288 64 288 64S117.22 64 74.629 75.486c-23.497 6.322-42.003 24.947-48.284 48.597-11.412 42.867-11.412 132.305-11.412 132.305s0 89.438 11.412 132.305c6.281 23.65 24.787 41.5 48.284 47.821C117.22 448 288 448 288 448s170.78 0 213.371-11.486c23.497-6.321 42.003-24.171 48.284-47.821 11.412-42.867 11.412-132.305 11.412-132.305s0-89.438-11.412-132.305zm-317.51 213.508V175.185l142.739 81.205-142.739 81.201z"/></svg>';
                    break;

                    //CUSTOM:
                case 'spinner':
                    toast_icon =
                        '<svg class="fa-spin" viewBox="0 0 512 512"><path fill="#f8f9fa" d="M304 48c0 26.51-21.49 48-48 48s-48-21.49-48-48 21.49-48 48-48 48 21.49 48 48zm-48 368c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48-21.49-48-48-48zm208-208c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48-21.49-48-48-48zM96 256c0-26.51-21.49-48-48-48S0 229.49 0 256s21.49 48 48 48 48-21.49 48-48zm12.922 99.078c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48c0-26.509-21.491-48-48-48zm294.156 0c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48c0-26.509-21.49-48-48-48zM108.922 60.922c-26.51 0-48 21.49-48 48s21.49 48 48 48 48-21.49 48-48-21.491-48-48-48z"/></svg>';
                    break;

                    //DEFAULT
                default:
                    toast_icon = '<i style="width:35px;height:35px" class="fas fa-' + toast_type + '"></i>';
            }


            //CREATE NOTIFICATION
            $('<div>', {
                    'class': 'toast',
                    'data-autohide': 'true',
                    'data-delay': '5000',
                    'data-type': toast_type,
                    'role': 'alert',
                    'aria-live': 'assertive',
                    'aria-atomic': 'true',
                })
                .html('<div class="toast-content"><div class="toast-icon">' + toast_icon +
                    '</div><div class="toast-body"><strong>' + toast_title + '</strong><div>' + toast_message +
                    '</div></div></div><button class="close" type="button" data-dismiss="toast" aria-label="Close"><span aria-hidden="true">' +
                    toast_btn_close_svg + '</span></button>')
                .appendTo(toast_container)
                .toast('show');


            //REMOVE HIDDEN TOAST
            $('.toast').on('hidden.bs.toast', function() {
                $(this).toast('dispose').remove();
            });



        }

        $('#garden-year').on('change', function() {
            $('#garden-dropdown').html('');
            $('#garden-dropdown').append($('<option>', {
                            value: '',
                            text: 'Select a garden'
                        }));
            console.log('year changed');
            $.ajax({
                url: '/ajax/gardens',
                method: 'GET',
                data: {
                    year: $(this).val(),
                    // Add more parameters as needed
                },
                success: function(response) {

                    // Handle the response from the server
                    console.log(response);
                    $.each(response.data, function(key, value) {
                        $('#garden-dropdown').append($('<option>', {
                            value: key,
                            text: value
                        }));
                    });
                },
                error: function(xhr, status, error) {
                    // Handle errors
                    console.error(error);
                }
            });
        });

        $('#garden-dropdown').on('change', function() {
            var currentUrl = window.location.href;
            var urlWithoutQueryString = currentUrl.split('?')[0];

            console.log('garden value changed: ', $(this).val())
            window.location.href = urlWithoutQueryString + '?garden_id=' + $(this).val() + '&year='+  $('#garden-year').val();
        });

        $('input[name="division_group_no_year"], input[name="range_lot_no_year"],input[name="fuel"],input[name="bolli_count"],input[name="tenderer_name_address"],input[name="quoted_rate"],input[name="total_number_of_trees"],input[name="total_wood_amount"]')
            .keypress(function(event) {
                // Your condition to prevent inputting anything
                if ($('#garden-dropdown').val() == '') {
                    event.preventDefault(); // Prevent the input
                    notify('error', 'Wood lot add!', 'Please select a garden first.');
                }
            });

        $('#pending-wood-lot-list tbody').on('click', '.species-view-btn', function() {
            $('#speciesInfoTable tbody').html("");
            console.log('species view button clicked', $(this).data('id'));
            let woodLotId = $(this).data('id');
            $.ajax({
                url: '{{ URL::to('/species-info') }}',
                method: 'GET',
                dataType: 'json',
                data: {
                    wood_lot_id: woodLotId
                },
                success: function(response) {
                    console.log('Response:', response);

                    response.data.forEach(function(row) {
                        $('#speciesInfoTable tbody').append(
                            `<tr><td>${row.species}</td><td>${row.species_count}</td><td>${row.wood_amount}</td></tr>`
                        );
                    });
                    var sumSpeciesCount = response.data.reduce(function(acc, curr) {
                        return acc + curr.species_count;
                    }, 0);

                    var sumWoodAmount = response.data.reduce(function(acc, curr) {
                        return acc + parseFloat(curr.wood_amount);
                    }, 0);

                    $('#treeCountTotal').text(sumSpeciesCount);
                    $('#woodTotal').text(sumWoodAmount);

                    console.log("Sum of species_count:", sumSpeciesCount);
                    console.log("Sum of wood_amount:", sumWoodAmount);


                },
                error: function(xhr, status, error) {
                    console.log('Error:', error);
                }
            });

            $('#speciesInfoModal').modal('show');
        });
    </script>
@endpush
