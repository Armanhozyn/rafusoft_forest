<?php

namespace App\Http\Controllers;

use App\BitInThana;
use App\BitInUnion;
use App\Http\Requests\UserStoreRequest;
use App\Http\Requests\UserUpdateRequest;
use App\Range;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Spatie\Permission\Models\Role;

class UserController extends Controller
{
    public function __construct()
    {

        $this->middleware('permission:view-user')->except(['profile', 'profileUpdate']);
        $this->middleware('permission:create-user', ['only' => ['create', 'store']]);
        $this->middleware('permission:update-user', ['only' => ['edit', 'update']]);
        $this->middleware('permission:destroy-user', ['only' => ['destroy']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        if ($request->has('search')) {
            $users = User::where('name', 'like', '%' . $request->search . '%')->paginate(setting('record_per_page', 15));
        } else {
            $users = User::paginate(setting('record_per_page', 15));
        }
        $title =  'Manage Users';
        return view('users.index', compact('users', 'title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create user';
        $roles = Role::latest()->get();
        $ranges = Range::join('districts', 'districts.id', '=', 'ranges.district_id')
        ->select('ranges.*','ranges.name as range_name','ranges.id as range_id', 'districts.name as district_name')
        ->latest()
        ->pluck('range_name','range_id');
        // $ranges = Range::pluck('name', 'id');
        // dd($ranges);
        return view('users.create', compact('roles', 'title', 'ranges'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserStoreRequest $request)
    {
        if($request->role == 'বীট' || $request->role == 'এসএফপিসি' || $request->role == 'তথ্য প্রদানকারী (রেঞ্জ/কেন্দ্র)'){
            $request->validate([
                'range_id' => 'required',
            ]);
        }

        $userData = $request->except(['role', 'profile_photo','union_parishad_id','thana_id']);
        if ($request->profile_photo) {
            $userData['profile_photo'] = parse_url($request->profile_photo, PHP_URL_PATH);
        }
        $user = User::create($userData);
        $unions = $request->union_parishad_id;
        $thanas = $request->thana_id;
        if ($user && $request->role == 'বীট') {
            $bitId = $user->id;
            $unions = array_map(function ($value) use ($bitId) {
                return [
                    'bit_id' => $bitId,
                    'union_id' => $value
                ];
            }, $unions);

            // dd($unions);
            if (!empty($unions)) {
                BitInUnion::insert($unions);
            }

            $thanas = array_map(function ($value) use ($bitId) {
                return [
                    'bit_id' => $bitId,
                    'thana_id' => $value
                ];
            }, $thanas);

            if (!empty($thanas)) {
                BitInThana::insert($thanas);
            }

        }
        $user->assignRole($request->role);
        flash('User created successfully!')->success();
        return redirect()->route('users.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        $title = "User Details";
        $roles = Role::pluck('name', 'id');
        return view('users.show', compact('user', 'title', 'roles'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        $title = "User Details";
        $roles = Role::pluck('name', 'id');
        return view('users.edit', compact('user', 'title', 'roles'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(UserUpdateRequest $request, User $user)
    {
        $userData = $request->except(['role', 'profile_photo']);
        if ($request->profile_photo) {
            $userData['profile_photo'] = parse_url($request->profile_photo, PHP_URL_PATH);
        }
        $user->update($userData);
        $user->syncRoles($request->role);
        flash('User updated successfully!')->success();
        return redirect()->route('users.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        if ($user->id == Auth::user()->id || $user->id == 1) {
            flash('You can not delete logged in user!')->warning();
            return back();
        }
        $user->delete();
        flash('User deleted successfully!')->info();
        return back();
    }


    public function profile(User $user)
    {
        $title = __('profile.edit_profile');
        return view('users.profile', compact('title', 'user'));
    }
    public function profileUpdate(UserUpdateRequest $request, User $user)
    {
        $userData = $request->except('profile_photo');
        if ($request->profile_photo) {
            $userData['profile_photo'] = parse_url($request->profile_photo, PHP_URL_PATH);
        }

        $user->update($userData);
        flash('Profile updated successfully!')->success();
        return back();
    }
}
