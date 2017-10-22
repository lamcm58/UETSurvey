<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Models\History;

class HomeController extends Controller
{
    public function index()
    {
        if (Auth::guard('admin')->check()) {
            return view('admin.layouts.index');
        }
    }

    /**
     * Update password
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function updatePass(Request $request)
    {
        if (Auth::guard('admin')->check()) {
            $request_data = $request->all();
            $validator = $this->admin_credential_rules($request_data);
            if ($validator->fails()) {
                $error = $validator->getMessageBag()->toArray();
                return redirect()->back()->with('error', $error);
            } else {
                $current_password = Auth::guard('admin')->user()->password;
                if (Hash::check($request_data['current-password'], $current_password)) {
                    $user_id = Auth::guard('admin')->id();
                    $obj_user = User::find($user_id);
                    $obj_user->password = Hash::make($request_data['password']);
                    $obj_user->save();
                    $message = "Thay đổi mật khẩu thành công !";

                    $data = [];
                    $data['time'] = date('Y-m-d H:i:s');
                    $data['ip_address'] = \Request::getClientIp();
                    $data['actions'] = 'Admin ' . Auth::guard('admin')->user()->username . ' updated password successfully.';
                    History::insert($data);

                    return redirect()->back()->with('success', $message);
                } else {
                    $error = [
                        'current-password' => 'Bạn phải nhập đúng mật khẩu cũ'
                    ];
                    return redirect()->back()->with('error', $error);
                }
            }
        } else {
            return redirect()->to('/');
        }
    }

    /**
     * Rules for update password
     * @param array $data
     * @return \Illuminate\Validation\Validator
     */
    public function admin_credential_rules(array $data)
    {
        $messages = [
            'current-password.required' => 'Bạn phải nhập mật khẩu cũ',
            'password.required' => 'Bạn phải nhập mật khẩu'
        ];
        $validator = Validator::make($data, [
            'current-password' => 'required',
            'password' => 'required|same:password',
            'password_confirmation' => 'required|same:password'
        ], $messages);
        return $validator;
    }
}
