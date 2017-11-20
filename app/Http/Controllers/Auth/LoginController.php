<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use App\Models\History;

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

    /**
     * Login for user
     * @param LoginRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postLogin(LoginRequest $request)
    {
        try {
            $login = [
                'email' => $request->email,
                'password' => $request->password
            ];

            if (Auth::attempt($login))
            {
                $data = [];
                $data['time'] = date('Y-m-d H:i:s');
                $data['ip_address'] = \Request::getClientIp();
                $data['actions'] = 'Student '. Auth::user()->username .' with email ' . Auth::user()->email . ' signed in successfully into the system.';
                History::insert($data);

                return redirect()->route('home');
            }
            else {
                return redirect()->back()->with(['err' => 'Thông tin đăng nhập không hợp lệ, vui lòng đăng nhập lại.']);
            }
        } catch (\Exception $e) {
            echo $e->getMessage();
        }
    }

    /**
     * Login for admin
     * @param LoginRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function postLoginAdmin(LoginRequest $request)
    {
        try {
            $login = [
                'email' => $request->email,
                'password' => $request->password
            ];

            if (Auth::guard('admin')->attempt($login))
            {
                $data = [];
                $data['time'] = date('Y-m-d H:i:s');
                $data['ip_address'] = \Request::getClientIp();
                $data['actions'] = 'Admin '. Auth::guard('admin')->user()->username .' with email ' . Auth::guard('admin')->user()->email . ' signed in successfully into the system.';
                History::insert($data);

                return redirect()->route('admin.home');
            }
            else {
                return redirect()->back()->with(['err' => 'Thông tin đăng nhập không hợp lệ, vui lòng đăng nhập lại.']);
            }
        } catch (\Exception $e) {
            echo $e->getMessage();
        }
    }

    /**
     * User logout
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function logout()
    {
        $data = [];
        $data['time'] = date('Y-m-d H:i:s');
        $data['ip_address'] = \Request::getClientIp();
        $data['actions'] = 'Student '. Auth::user()->username .' with email ' . Auth::user()->email . ' signed out successfully.';
        History::insert($data);

        Auth::logout();

        return redirect($this->redirectAfterLogout);
    }

    /**
     * Admin logout
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function logoutAdmin()
    {
        $data = [];
        $data['time'] = date('Y-m-d H:i:s');
        $data['ip_address'] = \Request::getClientIp();
        $data['actions'] = 'Admin '. Auth::guard('admin')->user()->username .' with email ' . Auth::guard('admin')->user()->email . ' signed out successfully.';
        History::insert($data);

        Auth::guard('admin')->logout();

        return redirect('/loginAdmin');
    }
}
