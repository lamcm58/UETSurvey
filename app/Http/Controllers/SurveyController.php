<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Question;
use App\Models\Result;
use App\Models\Subject;
use App\Models\Survey;
use App\Models\SubjectSurvey;
use App\Models\Student;
use App\Models\StudentSubject;
use App\Models\SurveyDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Excel;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class SurveyController extends Controller
{
    public function index()
    {
        $surveys = Survey::all();

        Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_access.log');
        Log::info('Admin '.Auth::guard('admin')->user()->username.' accesses to the list surveys page.');

        return view('admin.survey.list', compact('surveys'));
    }

    public function add()
    {
        $subjects = Subject::all();

        Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_access.log');
        Log::info('Admin '.Auth::guard('admin')->user()->username.' accesses to the add survey page.');

        return view('admin.survey.add', compact('subjects'));
    }

    public function importFile(Request $request)
    {
        if ($request->hasFile('text_file')) {
            $file = $request->file('text_file');
            $content = file_get_contents($file);
            $str = explode(';', $content);

            // Create survey
            $survey = [];
            $survey['survey_code'] = $str[0];
            $survey['survey_name'] = $str[1];
            $survey['expired_day'] = date('Y-m-d 23:59:59', strtotime($str[2]));
            $save = Survey::create($survey);
            if ($save) {
                $id = $save->id;
                // Create questions
                for ($i = 3; $i < sizeof($str); $i++) {
                    $questions = [];
                    $temp = substr($str[$i], 3, (strlen($str[$i]) - 4));
                    $result = explode('-', $temp);
                    $questions['question_code'] = $result[0];
                    $questions['question_type'] = (integer)$result[1];
                    $questions['question_content'] = $result[2];
                    $questions['answer'] = isset($result[3]) ? $result[3] : null;
                    $questions['question_category'] = $result[4];
                    $questions['survey_id'] = $id;

                    Question::create($questions);
                }
            }

            Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_access.log');
            Log::info('Admin '.Auth::guard('admin')->user()->username.' had imported the file of survey and questions into database.');

            return back()->with('success', 'Thêm khảo sát thành công.');
        }

        Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_error.log');
        Log::error('Admin '.Auth::guard('admin')->user()->username.' had imported the file of survey and questions but there was something wrong.');

        return back()->with('error', 'Có lỗi xảy ra. Vui lòng kiểm tra lại file của bạn.');
    }

    public function create(Request $request)
    {
        $survey = Survey::orderBy('id', 'DESC')->first();
        if (isset($survey)) {
            $ordinal = $survey->id + 1;
        } else {
            $ordinal = 1;
        }
        $surveys = [];
        $surveys['survey_code'] = 'SS' . str_pad($ordinal, 4, '0', STR_PAD_LEFT);
        $surveys['survey_name'] = $request->survey_name;
        $surveys['expired_day'] = date('Y-m-d 23:59:59', strtotime($request->expired_day));
        $save = Survey::create($surveys);

        if ($save) {
            return back()->with('success', 'Add survey successful.');
        } else {
            return back()->with('error', 'Please Check your file, Something is wrong there.');
        }
    }

    public function preview($id)
    {
        $item = Survey::find($id);
        $question_categories = Question::select('question_category')
            ->where('survey_id', $id)
            ->groupBy('question_category')
            ->orderBy('id')
            ->get();
        $students = Student::all();
        $categories = Category::all();

        Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_access.log');
        Log::info('Admin '.Auth::guard('admin')->user()->username.' accesses to the preview page of '.$item->survey_name.'.');

        return view('admin.survey.preview', compact('item', 'question_categories', 'students', 'categories'));
    }

    public function grantCategory(Request $request, $id)
    {
        $category_id = $request->cat_id;
        $categories = DB::table('categories_surveys')->where('survey_id', $id)
            ->where('category_id', $category_id)
            ->get();
        $details = SurveyDetail::where('survey_id', $id)
            ->where('subject_id', $category_id)
            ->get();

        if (count($categories) > 0) {
            Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_error.log');
            Log::error('Admin '.Auth::guard('admin')->user()->username.' had added '.Survey::find($id)->survey_name.' to '.Category::find($category_id)->category_name.' but it was already added to this faculty.');

            return back()->with('error', 'Xin lỗi. Khảo sát đã được thêm cho tất cả các môn học này.');
        } else {
            if (count($details) > 0) {
                foreach ($details as $detail) {
                    $detail->delete();
                }
            }

            $data = [];
            $data['category_id'] = $category_id;
            $data['survey_id'] = $id;
            DB::table('categories_surveys')->insert($data);

            $subjects = Subject::where('category_id', $category_id)->get();
            foreach ($subjects as $subject) {
                SubjectSurvey::create(['subject_id' => $subject->id, 'survey_id' => $id]);

                $items = StudentSubject::where('subject_id', $subject->id)->get();
                foreach ($items as $item) {
                    $dat = [];
                    $dat['survey_id'] = $id;
                    $dat['subject_id'] = $item->subject_id;
                    $dat['student_id'] = $item->student_id;

                    SurveyDetail::create($dat);
                }
            }

            Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_access.log');
            Log::info('Admin '.Auth::guard('admin')->user()->username.' had added '.Survey::find($id)->survey_name.' to all subjects of '.Category::find($category_id)->category_name.' .');

            return back()->with('success', 'Thêm khảo sát thành công.');
        }
    }

    public function statistic($id)
    {
        $survey = Survey::find($id);
        $categories = Category::all();
        $subjects = SubjectSurvey::join('subjects', 'subjects.id', '=', 'subjects_surveys.subject_id')
            ->where('survey_id', $id)->paginate(20);

        Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_access.log');
        Log::info('Admin '.Auth::guard('admin')->user()->username.' accesses to statistic page of '.Survey::find($id)->survey_name.' .');

        return view('admin.survey.statistic', compact('survey', 'subjects', 'categories'));
    }

    public function statisticCategory($id, $cat_id)
    {
        $survey = Survey::find($id);
        $subjects = SubjectSurvey::join('subjects', 'subjects.id', '=', 'subjects_surveys.subject_id')
            ->where('survey_id', $id)
            ->where('subjects.category_id', $cat_id)->paginate(20);

        return view('admin.survey.statisticCategory', compact('survey', 'subjects', 'categories'));
    }

    public function subjectStatistic($id, $subject_id)
    {
        $question_categories = Question::select('question_category')
            ->where('survey_id', $id)
            ->groupBy('question_category')
            ->orderBy('id')
            ->get();
        $survey = Survey::find($id);
        $subject = Subject::find($subject_id);

        $studentsNotDone = Student::join('surveys_details', 'students.id', '=', 'surveys_details.student_id')
            ->where('survey_id', $id)->where('subject_id', $subject_id)
            ->where('is_done', 0)->get();

        $results = Result::where('survey_id', $id)
            ->where('subject_id', $subject_id)
            ->get();

        Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_access.log');
        Log::info('Admin '.Auth::guard('admin')->user()->username.' accesses to statistic page of '.$survey->survey_name.' and '.$subject->name.' .');

        return view('admin.survey.subjectStatistic', compact('question_categories', 'survey', 'subject', 'results', 'studentsNotDone'));
    }

    public function export($id, $subject_id)
    {
        $question_categories = Question::select('question_category')
            ->where('survey_id', $id)
            ->groupBy('question_category')
            ->orderBy('id')
            ->get();

        $subject = Subject::find($subject_id);

        $results = Result::where('survey_id', $id)
            ->where('subject_id', $subject_id)
            ->get();

        Excel::create($subject->subject_class_code.' - '.$subject->name, function ($excel) use ($subject, $question_categories, $results) {
            // Build the spreadsheet, passing in the payments array
            $excel->sheet($subject->subject_class_code, function ($sheet) use ($question_categories, $results) {
                $sheet->loadView('admin.layouts.surveyTable', ['question_categories' => $question_categories, 'results' => $results]);
            });

        })->download('xlsx');
    }

    public function exportStat($id, $cat_id)
    {
        $category = Category::find($cat_id);
        $subjects = SubjectSurvey::join('subjects', 'subjects.id', '=', 'subjects_surveys.subject_id')
            ->where('survey_id', $id)
            ->where('subjects.category_id', $cat_id)->get();

        Excel::create($category->category_name, function ($excel) use ($subjects, $id) {
            foreach ($subjects as $subject) {
                $question_categories = Question::select('question_category')
                    ->where('survey_id', $id)
                    ->groupBy('question_category')
                    ->orderBy('id')
                    ->get();

                $results = Result::where('survey_id', $id)
                    ->where('subject_id', $subject->id)
                    ->get();
                // Build the spreadsheet, passing in the payments array
                $excel->sheet($subject->subject_class_code, function ($sheet) use ($question_categories, $results) {
                    $sheet->loadView('admin.layouts.surveyTable', ['question_categories' => $question_categories, 'results' => $results]);
                });
            }
        })->download('xlsx');
    }
}
