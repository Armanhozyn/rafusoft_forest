<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;

class SetLanguage
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // dd(Session::get('locale'));
        if ($request->has('lang')) {
            $lang = $request->input('lang');
            Session::put('locale', $lang);
            App::setLocale($lang);
        } else {
            $lang = Session::get('locale', config('app.locale'));
            App::setLocale($lang);
        }

        return $next($request);
    }
}
