<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use App\Models\History;
use App\Http\Requests\PasswordRequest;

class HomeController extends Controller
{
    public function index()
    {
        if (Auth::guard('admin')->check()) {
            return view('admin.layouts.index');
        }
    }

    public function changePass()
    {
        if (Auth::guard('admin')->check()) {
            return view('admin.password.changePass');
        }
    }

    /**
     * Đổi mật khẩu tài khoản sinh viên
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function updatePass(PasswordRequest $request)
    {
        if (Auth::guard('admin')->check()) {
            $current_password = Auth::guard('admin')->user()->password;
            if (Hash::check($request->current_password, $current_password)) {
                $user_id = Auth::guard('admin')->id();
                $obj_user = User::find($user_id);
                $obj_user->password = Hash::make($request->password);
                $obj_user->save();
                $message = "Thay đổi mật khẩu thành công !";

                $data = [];
                $data['time'] = date('Y-m-d H:i:s');
                $data['ip_address'] = \Request::getClientIp();
                $data['actions'] = 'Admin ' . Auth::guard('admin')->user()->username . ' updated password successfully.';
                History::insert($data);

                return redirect()->back()->with('success', $message);
            } else {
                return redirect()->back()->with('error', 'Mật khẩu hiện tại không chính xác');
            }
        } else {
            return redirect()->to('/');
        }
    }
}
