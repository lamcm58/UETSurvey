<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SubjectRequest extends FormRequest
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
            'code' => 'required',
            'name' => 'required',
            'category_id' => 'required',
            'teacher_name' =>'required'
        ];
    }

    public function messages()
    {
        return [
            'code.required' => 'Mã môn học không được để trống.',
            'name.required' => 'Tên môn học không được để trống.',
            'category_id.required' => 'Bạn phải chọn khoa cho môn học này.',
            'teacher_name.required' => 'Tên giảng viên không được để trống.',
        ];
    }
}
