<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class QuestionRequest extends FormRequest
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
            'question_type' => 'required',
            'question_content' => 'required',
            'question_category' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'question_type.required' => 'Bạn phải chọn loại câu hỏi',
            'question_content.required' => 'Bạn phải nhập nội dung câu hỏi',
            'question_category.required' => 'Bạn phải nhập danh mục câu hỏi',
        ];
    }
}
