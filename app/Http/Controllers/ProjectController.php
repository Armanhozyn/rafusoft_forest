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
            $categories = Project::where('category_name', 'like', '%' . $request->search . '%')->paginate(setting('record_per_page', 15));
        } else {
            $categories = Project::paginate(setting('record_per_page', 15));
        }
        $title = 'Manage Projects';
        return view('projects.index', compact('categories', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create Project';
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
        flash('Project created successfully!')->success();
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
    public function edit(Project $category)
    {
        $title = "Project Details";
        $category->with('user');
        return view('projects.edit', compact('title', 'category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(ProjectRequest $request, Project $category)
    {
        $category->update($request->all());
        flash('Project updated successfully!')->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Project $category)
    {
        $category->delete();
        flash('Project deleted successfully!')->info();
        return back();
    }
}
