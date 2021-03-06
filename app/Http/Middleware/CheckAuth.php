<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Contracts\Auth\Guard;

class CheckAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $guard=null)
    {
        if (Auth::guard('admin')->guest()) {
            if ($request->ajax() || $request->wantsJson()) {
                return response('Unauthorize', 401);
            } else {
                return redirect()->guest('/loginAdmin');
            }
        }
        $response = $next($request);

        return $response->header('Cache-Control', 'nocache, no-store, max-age=0, must-revalidate')
            ->header('Pragma', 'no-cache')
            ->header('Expires', 'Sat, 01 Jan 1990 00:00:00 GMT');
    }
}
