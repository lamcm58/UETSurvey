<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Student;
use App\Models\StudentSubject;
use App\Models\Survey;
use App\Models\Question;
use App\Models\Subject;
use App\Models\SubjectSurvey;
use App\Models\Result;


class PageController extends Controller
{
    public function index()
    {
    	$data = StudentSubject::join('subjects', 'students_subjects.subject_id', '=', 'subjects.id')->where('student_id', Auth::user()->id)->get();
    	if (Auth::check()) {
            return view('pages.layouts.index', compact('data'));
        }
    }

    public function detail($id)
    {
    	$subject = Subject::find($id);
        $selected = SubjectSurvey::select('survey_id', 'survey_name')
                    ->join('surveys', 'subjects_surveys.survey_id', '=', 'surveys.id')
                    ->where('subject_id', $id)
                    ->get();

        return view('pages.subject.detail', compact('subject','selected'));
    }

    public function preview($subject_id, $id)
    {
        $subject = Subject::find($subject_id);
    	$item = Survey::find($id);
        $questions = Question::where('survey_id', $id)->get();

        return view('pages.survey.preview', compact('item', 'questions', 'subject'));
    }

    public function doSurvey(Request $request, $subject_id, $id)
    {
        $student = Student::find(Auth::user()->id);
        $subject = Subject::find($subject_id);
        $data = $request->all();
        $count = 0;
        foreach ($data as $item) {
            if ($item != null) {
                $count += 1;
            }
        }

        if ($count == count($data)) {
            unset($data['_token']);
            $items = [];
            $items['student_code'] = $student->student_code;
            $items['student_name'] = $student->full_name;
            $items['subject_class_code'] = $subject->subject_class_code;
            $items['subject_name'] = $subject->name;
            $items['survey_id'] = $id;
            $items['student_answers'] = serialize($data);

            Result::create($items);
            return redirect()->route('subjectDetail', $subject_id)->with('success', 'Thanks for your responses.');
        } else {
            return back()->with('error', 'You need to answer all questions.');
        }
    }
}
