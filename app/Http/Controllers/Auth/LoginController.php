<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Log;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Where to redirect users after logout
     *
     * @var string
     */
    protected $redirectAfterLogout = '/login';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    /**
     * @return mixed
     */
    public function getLogin()
    {
        return view('pages.login');
    }

    public function getLoginAdmin()
    {
        return view('admin.login');
    }

    public function postLogin(LoginRequest $request)
    {
        try {
            $login = [
                'email' => $request->email,
                'password' => $request->password
            ];

            if (Auth::attempt($login))
            {
                Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_access.log');
                Log::info('User '.Auth::user()->username.' log in successful with email '.Auth::user()->email.' using IP:'.$request->ip().'.');
                return redirect()->route('home');
            }
            else {
                Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_error.log');
                Log::error('Log in fail with IP:'.$request->ip().'.');
                return redirect()->back()->with(['err' => 'Thông tin đăng nhập không hợp lệ, vui lòng đăng nhập lại.']);
            }
        } catch (\Exception $e) {
            echo $e->getMessage();
        }
    }

    public function postLoginAdmin(LoginRequest $request)
    {
        try {
            $login = [
                'email' => $request->email,
                'password' => $request->password
            ];

            if (Auth::guard('admin')->attempt($login))
            {
                Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_access.log');
                Log::info('Admin '.Auth::guard('admin')->user()->username.' log in successful with email '.Auth::guard('admin')->user()->email.' using IP:'.$request->ip().'.');
                return redirect()->route('admin.home');
            }
            else {
                Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_error.log');
                Log::error('Log in fail with IP:'.$request->ip().'.');
                return redirect()->back()->with(['err' => 'Thông tin đăng nhập không hợp lệ, vui lòng đăng nhập lại.']);
            }
        } catch (\Exception $e) {
            echo $e->getMessage();
        }
    }

    public function logout()
    {
        Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_access.log');
        Log::info('User '.Auth::user()->username.' log out successful.');

        Auth::logout();

        return redirect($this->redirectAfterLogout);
    }

    public function logoutAdmin()
    {
        Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_access.log');
        Log::info('Admin '.Auth::guard('admin')->user()->username.' log out successful.');

        Auth::guard('admin')->logout();

        return redirect($this->redirectAfterLogout);
    }
}
