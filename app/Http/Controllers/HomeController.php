<?php

namespace App\Http\Controllers;

use App\User;
use App\Range;
use App\Garden;
use App\WoodLot;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $gardenCount = Garden::count();
        $woodLotCount = WoodLot::count();
        $userCount = User::count();
        $rangeCount = Range::count();

        return view('home', compact('gardenCount', 'woodLotCount', 'userCount', 'rangeCount'));
    }
}
