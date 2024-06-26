<?php

namespace App\Http\Controllers;

use App\Project;
use App\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\CategoryRequest;
use App\Http\Requests\ProjectRequest;

class ProjectController extends Controller
{
    public function __construct()
    {

        $this->middleware('permission:view-category');
        $this->middleware('permission:create-category', ['only' => ['create', 'store']]);
        $this->middleware('permission:update-category', ['only' => ['edit', 'update']]);
        $this->middleware('permission:destroy-category', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->has('search')) {
            $projects = Project::where('category_name', 'like', '%' . $request->search . '%')->paginate(setting('record_per_page', 15));
        } else {
            $projects = Project::paginate(setting('record_per_page', 15));
        }
        $title = 'প্রকল্পগুলি পরিচালনা করুন';
        return view('projects.index', compact('projects', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'প্রকল্প তৈরি করুন';
        return view('projects.create', compact('title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProjectRequest $request)
    {
        $request->merge(['user_id' => Auth::user()->id]);
        Project::create($request->except('_token'));
        flash('প্রকল্প created successfully!')->success();
        return redirect()->route('projects.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Project  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Project $category)
    {
        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Project  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Project $project)
    {
        $title = "প্রকল্পের বিস্তারিত বিবরণ";
        $project->with('user');
        return view('projects.edit', compact('title', 'project'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(ProjectRequest $request, Project $project)
    {
        $project->update($request->all());
        flash('প্রকল্প updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Project $project)
    {
        $project->delete();
        flash('Project deleted successfully!')->info();
        return back();
    }
}
