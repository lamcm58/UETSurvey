<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\SurveyDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Student;
use App\Models\StudentSubject;
use App\Models\Survey;
use App\Models\Question;
use App\Models\Subject;
use App\Models\SubjectSurvey;
use App\Models\Result;
use Illuminate\Support\Facades\DB;


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
        $selected = SurveyDetail::select('survey_id', 'survey_name')
                    ->join('surveys', 'surveys_details.survey_id', '=', 'surveys.id')
                    ->where('subject_id', $id)
                    ->where('student_id', Auth::id())
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
        $student = Student::find(Auth::id());
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

            // update survey_detail property
            $result = SurveyDetail::where('survey_id', $id)
                                    ->where('subject_id', $subject_id)
                                    ->where('student_id', Auth::id())
                                    ->first();
            $result->is_done = 1;
            $result->save();

            return redirect()->route('subjectDetail', $subject_id)->with('success', 'Thanks for your responses.');
        } else {
            return back()->with('error', 'You need to answer all questions.');
        }
    }

    public function viewCate($id)
    {
        $cate_id = Category::find($id)->id;
        $subjects = Subject::where('category_id', $id)->paginate(20);
        $surveys = Survey::all();
        if (Auth::guard('admin')->check()) {
            return view('admin.subject.list', compact('cate_id', 'subjects', 'surveys'));
        }
        return view('pages.subject.list', compact('cate_id', 'subjects', 'surveys'));
    }

    public function addSurvey(Request $request, $id)
    {
        if (Auth::guard('admin')->check()) {
            $survey_id = $request->survey_id;
            $item = DB::table('categories_surveys')->where('category_id', $id)
                ->where('survey_id', $survey_id)
                ->first();
            if (isset($item)) {
                return back()->with('error', 'Current survey has been added for all subjects.');
            } else {
                $data = [];
                $data['category_id'] = $id;
                $data['survey_id'] = $survey_id;
                $save = DB::table('categories_surveys')->insert($data);

                if ($save) {
                    $subjects = Subject::where('category_id', $id)->get();
                    foreach ($subjects as $subject) {
                        SubjectSurvey::create(['subject_id' => $subject->id, 'survey_id' => $survey_id]);
                        $items = StudentSubject::where('subject_id', $subject->id)->get();
                        foreach ($items as $item) {
                            $dat = [];
                            $dat['survey_id'] = $survey_id;
                            $dat['subject_id'] = $item->subject_id;
                            $dat['student_id'] = $item->student_id;

                            SurveyDetail::create($dat);
                        }
                    }
                }
                return back()->with('success', 'Add survey successfully.');
            }
        }
    }
}
