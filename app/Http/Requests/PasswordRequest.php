<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PasswordRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'current_password' => 'required',
            'password' => 'required|same:password|min:8',
            'password_confirmation' => 'required|same:password'
        ];
    }

    public function messages()
    {
        return [
            'current_password.required' => 'Bạn phải nhập mật khẩu hiện tại',
            'password.required' => 'Bạn phải nhập mật khẩu mới',
            'password.min' => 'Mật khẩu phải từ 8 ký tự trở lên',
            'password_confirmation.required' => 'Bạn phải nhập mật khẩu xác nhận',
            'password_confirmation.same' => 'Mật khẩu mới và mật khẩu xác nhận phải giống nhau'
        ];
    }
}
