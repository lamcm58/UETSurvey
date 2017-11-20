<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Question;
use App\Models\Survey;
use App\Http\Requests\QuestionRequest;
use Illuminate\Support\Facades\Auth;
use App\Models\History;

class QuestionController extends Controller
{
    public function add($survey_id)
    {
        $survey = Survey::find($survey_id);

        return view('admin.question.add', compact('survey'));
    }

    /**
     * Tạo câu hỏi mới
     * @param $survey_id
     * @param QuestionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function create($survey_id, QuestionRequest $request)
    {
        $survey = Survey::find($survey_id);
        $last = Question::where('survey_id', $survey_id)
            ->orderBy('id', 'DESC')
            ->first();

        if (isset($last)) {
            $last_code = $last->question_code;
            $ordinal = (int)(substr($last_code, strlen($last_code)-2)) + 1;
        } else {
            $ordinal = 1;
        }

        $data = [
            'question_code' => $survey->survey_code . '_' . str_pad($ordinal, 2, '0', STR_PAD_LEFT),
            'question_type' => $request->question_type,
            'question_content' => $request->question_content,
            'question_category' => $request->question_category,
            'survey_id' => $survey_id
        ];
        Question::create($data);

        $data = [];
        $data['time'] = date('Y-m-d H:i:s');
        $data['ip_address'] = \Request::getClientIp();
        $data['actions'] = 'Admin '. Auth::guard('admin')->user()->username .' create new question successfully.';
        History::insert($data);

        return redirect(route('survey.edit', $survey_id))->with('success', 'Thêm câu hỏi thành công');
    }

    public function edit($survey_id, $question_id)
    {
        $survey = Survey::find($survey_id);
        $question = Question::find($question_id);

        return view('admin.question.edit', compact('survey', 'question'));
    }

    /**
     * Chỉnh sửa thông tin của câu hỏi
     * @param $survey_id
     * @param $question_id
     * @param QuestionRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update($survey_id, $question_id, QuestionRequest $request)
    {
        $question = Question::find($question_id);
        $data = [
            'question_type' => $request->question_type,
            'question_content' => $request->question_content,
            'question_category' => $request->question_category,
        ];
        $question->update($data);

        $data = [];
        $data['time'] = date('Y-m-d H:i:s');
        $data['ip_address'] = \Request::getClientIp();
        $data['actions'] = 'Admin '. Auth::guard('admin')->user()->username .' update question no '. $question_id .' successfully.';
        History::insert($data);

        return redirect(route('survey.edit', $survey_id))->with('success', 'Sửa câu hỏi thành công');
    }

    /**
     * Xóa một câu hỏi của khảo sát
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function delete($id)
    {
        $item = Question::find($id);
        $survey_id = $item->survey_id;

        Question::destroy($id);

        $questions = Question::where('survey_id', $survey_id)->get();
        $survey = Survey::find($survey_id);
        foreach ($questions as $index => $question) {
            $question->question_code = $survey->survey_code . '_' . str_pad($index+1, 2, '0', STR_PAD_LEFT);
            $question->save();
        }

        $data = [];
        $data['time'] = date('Y-m-d H:i:s');
        $data['ip_address'] = \Request::getClientIp();
        $data['actions'] = 'Admin '. Auth::guard('admin')->user()->username .' delete question no '. $id .' successfully.';
        History::insert($data);

        return redirect()->back()->with('success', 'Xóa câu hỏi thành công');
    }
}
