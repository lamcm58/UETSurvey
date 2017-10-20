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
                    ->where('surveys.expired_day', '>=', date('Y-m-d H:i:s'))
                    ->get();

        return view('pages.subject.detail', compact('subject','selected'));
    }

    public function preview($subject_id, $id)
    {
        $subject = Subject::find($subject_id);
    	$item = Survey::find($id);
        $question_categories = Question::select('question_category')
            ->where('survey_id', $id)
            ->groupBy('question_category')
            ->orderBy('id')
            ->get();
        $detail = SurveyDetail::join('surveys', 'surveys_details.survey_id', '=', 'surveys.id')
            ->where('survey_id', $id)
            ->where('subject_id', $subject_id)
            ->where('student_id', Auth::id())
            ->where('surveys.expired_day', '>=', date('Y-m-d H:i:s'))
            ->where('is_done', 1)->first();

        if (count($detail)>0) {
            $check = true;
        } else {
            $check = false;
        }

        $student_code = Student::find(Auth::id())->student_code;
        $result = Result::where('survey_id', $id)
            ->where('subject_id', $subject_id)
            ->where('student_code', $student_code)
            ->get();

        return view('pages.survey.preview', compact('item', 'question_categories', 'subject', 'check', 'result'));
    }

    public function doSurvey(Request $request, $subject_id, $id)
    {
        $student = Student::find(Auth::id());
        $subject = Subject::find($subject_id);
        $data = $request->all();

        unset($data['_token']);
        $items = [];
        $items['student_code'] = $student->student_code;
        $items['student_name'] = $student->full_name;
        $items['subject_class_code'] = $subject->subject_class_code;
        $items['subject_name'] = $subject->name;
        $items['subject_id'] = $subject_id;
        $items['survey_id'] = $id;
        $items['student_answers'] = serialize($data);

        Result::create($items);

        // update survey_detail property
        $result = SurveyDetail::join('surveys', 'surveys_details.survey_id', '=', 'surveys.id')
            ->where('survey_id', $id)
            ->where('subject_id', $subject_id)
            ->where('student_id', Auth::id())
            ->where('surveys.expired_day', '>=', date('Y-m-d H:i:s'))
            ->first();
        $result->is_done = 1;
        $result->save();

        return redirect()->route('subjectDetail', $subject_id)->with('success', 'Cảm ơn các phản hồi của bạn.');
    }

    public function viewCate($id)
    {
        $cate_id = Category::find($id)->id;
        $subjects = Subject::where('category_id', $id)->paginate(20);
        $surveys = Survey::where('expired_day', '>=', date('Y-m-d H:i:s'))->get();
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

                return back()->with('error', 'Khảo sát này đã được thêm cho tất cả các môn học này.');
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

                return back()->with('success', 'Thêm khảo sát thành công.');
            }
        }
    }
}
