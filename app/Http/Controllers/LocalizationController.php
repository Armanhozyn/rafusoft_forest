<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;

class LocalizationController extends Controller
{
    public function lang_change($lang)
    {
        $lang = trim($lang);

        if (Session::has('language')) {
            Session::forget('language');
        }
        Session::put('language', $lang);
        // print_r($lang);
        // dd('');
        // App::setLocale($lang);
        // session()->put('locale', $lang);
        // dd(app()->setLocale($lang));
        // App::setLocale($lang);
        /*         $data = [
            'success' => 'true',
        ];

        return response()->json($data); */
        return redirect()->back();


        // session()->put('locale', $request->lang);
        // return view('welcome');
    }
}
