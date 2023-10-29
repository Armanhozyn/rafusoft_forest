<?php
// Replace # to $ after generate
// Change zero space from UModel
// remove front space from -> symbol object

$model = "thana";
$models = "thanas";
$UModel = ucfirst($model);
$code = "CODE;";
$controller = 'ThanaController';


$fh = fopen("./view/controller.php", 'w') or die("can't open file");
$stringData =
<<<CODE
                    <?php

                    namespace App\Http\Controllers;
                    use App\ $UModel;
                    use Illuminate\Http\Request;
                    use DataTables;

                    class $controller extends Controller
                    {
                        /**
                        * Display a listing of the resource.
                        *
                        * @return \Illuminate\Http\Response
                        */
                        public function index(Request #request)
                        {
                            $$models = $UModel::latest()->get();

                            if (request()->ajax()) {
                                return DataTables::of($$models)
                                ->addIndexColumn()
                                ->addColumn('created_at_read',function(#row){
                                    return #row->created_at->diffForHumans();

                                })
                                ->addColumn('actions',function(#row){
                                    #delete_api = route('$model.destroy',#row->id);
                                    #edit_api = route('$model.edit',#row->id);
                                    #csrf = csrf_token();
                                    #action = <<<CODE
                                    <form method='POST' action='#delete_api' accept-charset='UTF-8' class='d-inline-block dform'>

                                        <input name='_method' type='hidden' value='DELETE'><input name='_token' type='hidden' value='#csrf'>
                                        <a class='btn btn-info btn-sm m-1' data-toggle='tooltip' data-placement='top' title='' href='#edit_api' data-original-title='Edit category details'>
                                            <i class='fa fa-edit' aria-hidden='true'></i>
                                        </a>
                                        <button type='submit' class='btn delete btn-danger btn-sm m-1' data-toggle='tooltip' data-placement='top' title='' href='' data-original-title='Delete category'>
                                            <i class='fas fa-trash'></i>
                                        </button>
                                    </form>
                                    $code

                                    return #action;

                                })
                                ->rawColumns(['created_at_read','actions'])
                                ->make(true);
                            }
                            #title = 'Manage $UModel';
                            return view('$model.index', compact('$models', 'title'));
                        }

                        /**
                        * Show the form for creating a new resource.
                        *
                        * @return \Illuminate\Http\Response
                        */
                        public function create()
                        {
                            #title = 'Create  $UModel';
                            return view('$model.create', compact('title'));
                        }

                        /**
                        * Store a newly created resource in storage.
                        *
                        * @param  \Illuminate\Http\Request  #request
                        * @return \Illuminate\Http\Response
                        */
                        public function store(Request #request)
                        {
                            // #request->merge(['user_id' => Auth::user()->id]);
                            $UModel::create(#request->except('_token'));
                            flash('$UModel created successfully!')->success();
                            return redirect()->route('$model.index');
                        }

                        /**
                        * Show the form for editing the specified resource.
                        *
                        * @param  \App\ $UModel  $$model
                        * @return \Illuminate\Http\Response
                        */
                        public function edit($UModel $$model)
                        {
                            #title = "$UModel Details";
                            return view('$model.edit', compact('title', '$model'));
                        }

                        /**
                        * Update the specified resource in storage.
                        *
                        * @param  \Illuminate\Http\Request  #request
                        * @param  \App\Category  $$model
                        * @return \Illuminate\Http\Response
                        */
                        public function update(Request #request, $UModel $$model)
                        {
                            $$model ->update(#request->all());
                            flash('$UModel updated successfully!')->success();
                            return back();
                        }

                        /**
                        * Remove the specified resource from storage.
                        *
                        * @param  \App\ $UModel  $model
                        * @return \Illuminate\Http\Response
                        */
                        public function destroy($UModel $$model)
                        {
                            $$model ->delete();
                            flash('$UModel deleted successfully!')->info();
                            return back();
                        }
                    }

            CODE;
fwrite($fh, $stringData);

fclose($fh);
