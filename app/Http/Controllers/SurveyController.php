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
use Illuminate\Support\Facades\Auth;
use App\Models\History;

class SurveyController extends Controller
{
    public function index()
    {
        $surveys = Survey::all();

        return view('admin.survey.list', compact('surveys'));
    }

    public function add()
    {
        $subjects = Subject::all();

        return view('admin.survey.add', compact('subjects'));
    }

    /**
     * Thêm khảo sát bằng file
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function importFile(Request $request)
    {
        if ($request->hasFile('text_file')) {
            $file = $request->file('text_file');
            $content = file_get_contents($file);
            $str = explode(';', $content);

            $survey_data = Survey::orderBy('id', 'DESC')->first();
            if (isset($survey_data)) {
                $ordinal = $survey_data->id + 1;
            } else {
                $ordinal = 1;
            }
            // Create survey
            $survey = [];
            $survey['survey_code'] = 'SS' . str_pad($ordinal, 4, '0', STR_PAD_LEFT);
            $survey['survey_name'] = $str[0];
            $survey['expired_day'] = date('Y-m-d 23:59:59', strtotime($str[1]));
            $save = Survey::create($survey);
            if ($save) {
                $id = $save->id;
                // Create questions
                for ($i = 2; $i < sizeof($str); $i++) {
                    $questions = [];
                    $temp = substr($str[$i], 2, (strlen($str[$i])-3));
                    $result = explode('-', $temp);
                    $questions['question_code'] = $survey['survey_code'] . '_' . str_pad($i-1, 2, '0', STR_PAD_LEFT);
                    $questions['question_type'] = (integer)$result[0];
                    $questions['question_content'] = $result[1];
                    $questions['answer'] = isset($result[2]) ? $result[2] : null;
                    $questions['question_category'] = $result[3];
                    $questions['survey_id'] = $id;

                    Question::create($questions);
                }
            }

            $data = [];
            $data['time'] = date('Y-m-d H:i:s');
            $data['ip_address'] = \Request::getClientIp();
            $data['actions'] = 'Admin '. Auth::guard('admin')->user()->username .' added survey successfully.';
            History::insert($data);

            return redirect(route('survey.list'))->with('success', 'Thêm khảo sát thành công.');
        }

        return back()->with('error', 'Có lỗi xảy ra. Vui lòng kiểm tra lại file của bạn.');
    }

    /**
     * Xem trước khảo sát
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function preview($id)
    {
        $survey = Survey::find($id);
        $question_categories = Question::select('question_category')
            ->where('survey_id', $id)
            ->groupBy('question_category')
            ->orderBy('id')
            ->get();
        $students = Student::all();
        $categories = Category::all();

        return view('admin.survey.preview', compact('survey', 'question_categories', 'students', 'categories'));
    }

    /**
     * Phân quyền những môn nào được làm khảo sát
     * @param Request $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
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

            return back()->with('error', 'Xin lỗi. Khảo sát đã được thêm cho tất cả các môn học của khoa này.');
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

            return back()->with('success', 'Thêm khảo sát thành công.');
        }
    }

    /**
     * Danh sách thống kê các khoa
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function statistic($id)
    {
        $survey = Survey::find($id);
        $categories = Category::all();
        $subjects = SubjectSurvey::join('subjects', 'subjects.id', '=', 'subjects_surveys.subject_id')
            ->where('survey_id', $id)->paginate(20);

        return view('admin.survey.statistic', compact('survey', 'subjects', 'categories'));
    }

    /**
     * Danh sách thống kê các môn trong khoa
     * @param $id
     * @param $cat_id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function statisticCategorySubjects($id, $cat_id)
    {
        $survey = Survey::find($id);
        $subjects = SubjectSurvey::join('subjects', 'subjects.id', '=', 'subjects_surveys.subject_id')
            ->where('survey_id', $id)
            ->where('subjects.category_id', $cat_id)->paginate(20);

        return view('admin.survey.statisticCategorySubjects', compact('survey', 'subjects', 'categories'));
    }

    /**
     * Xem thống kê khảo sát theo môn
     * @param $id
     * @param $subject_id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
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
            ->where('is_done', 0)->paginate(10);

        $results = Result::where('survey_id', $id)
            ->where('subject_id', $subject_id)
            ->get();

        return view('admin.survey.subjectStatistic', compact('question_categories', 'survey', 'subject', 'results', 'studentsNotDone'));
    }

    /**
     * Xuất thống kê khảo sát theo môn ra file
     * @param $id
     * @param $subject_id
     */
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
            $excel->sheet($subject->subject_class_code, function ($sheet) use ($question_categories, $results, $subject) {
                $sheet->loadView('admin.layouts.surveyTable', ['question_categories' => $question_categories, 'results' => $results, 'subject' => $subject]);
            });

        })->download('xlsx');
    }

    /**
     * Xuất thống kê khảo sát theo khoa ra file
     * @param $id
     * @param $cat_id
     */
    public function exportStat($id, $cat_id)
    {
        $category = Category::find($cat_id);
        $subjects = SubjectSurvey::join('subjects', 'subjects.id', '=', 'subjects_surveys.subject_id')
            ->where('survey_id', $id)
            ->where('subjects.category_id', $cat_id)->get();

        Excel::create('Thống kê '.$category->category_name, function ($excel) use ($subjects, $id, $cat_id) {
            $question_categories = Question::select('question_category')
                ->where('survey_id', $id)
                ->groupBy('question_category')
                ->orderBy('id')
                ->get();
            $category = Category::find($cat_id);
            $results = Result::join('subjects', 'subjects.id', '=', 'results.subject_id')
                ->where('survey_id', $id)
                ->where('subjects.category_id', $cat_id)
                ->get();

            $excel->sheet('Thống kê', function ($sheet) use ($question_categories, $results, $category) {
                $sheet->loadView('admin.layouts.surveyTable', ['question_categories' => $question_categories, 'results' => $results, 'category' => $category]);
            });

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
                $excel->sheet($subject->subject_class_code, function ($sheet) use ($question_categories, $results, $subject) {
                    $sheet->loadView('admin.layouts.surveyTable', ['question_categories' => $question_categories, 'results' => $results, 'subject' => $subject]);
                });
            }
        })->download('xlsx');
    }

    /**
     * Xem thống kê khảo sát theo khoa
     * @param $id
     * @param $category_id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function statisticCategory($id, $category_id)
    {
        $question_categories = Question::select('question_category')
            ->where('survey_id', $id)
            ->groupBy('question_category')
            ->orderBy('id')
            ->get();
        $survey = Survey::find($id);
        $category = Category::find($category_id);

        $results = Result::join('subjects', 'subjects.id', '=', 'results.subject_id')
            ->where('survey_id', $id)
            ->where('subjects.category_id', $category_id)
            ->get();

        return view('admin.survey.categoryStatistic', compact('question_categories', 'survey', 'category', 'results'));
    }

    /**
     * Xem danh sách sinh viên đã làm khảo sát
     * @param $id
     * @param $subject_id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function studentsNotDone($id, $subject_id)
    {
        $survey = Survey::find($id);
        $subject = Subject::find($subject_id);

        $studentsNotDone = Student::join('surveys_details', 'students.id', '=', 'surveys_details.student_id')
            ->where('survey_id', $id)->where('subject_id', $subject_id)
            ->where('is_done', 0)->paginate(20);

        return view('admin.survey.studentsNotDone', compact('survey', 'subject', 'studentsNotDone'));
    }

    /**
     * Xem danh sách sinh viên đã làm khảo sát
     * @param $id
     * @param $subject_id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function studentsDone($id, $subject_id)
    {
        $survey = Survey::find($id);
        $subject = Subject::find($subject_id);

        $studentsDone = Student::join('surveys_details', 'students.id', '=', 'surveys_details.student_id')
            ->where('survey_id', $id)->where('subject_id', $subject_id)
            ->where('is_done', 1)->paginate(20);

        return view('admin.survey.studentsDone', compact('survey', 'subject', 'studentsDone'));
    }

    /**
     * Xuất danh sách sinh viên chưa làm khảo sát ra file
     * @param $id
     * @param $subject_id
     */
    public function exportList($id, $subject_id)
    {
        $survey = Survey::find($id);
        $subject = Subject::find($subject_id);

        $studentsNotDone = Student::join('surveys_details', 'students.id', '=', 'surveys_details.student_id')
            ->where('survey_id', $id)->where('subject_id', $subject_id)
            ->where('is_done', 0)->get();

        Excel::create('Danh sách sinh viên chưa làm khảo sát - '.$subject->subject_class_code.' - '.$subject->name, function ($excel) use ($survey, $subject, $studentsNotDone) {
            // Build the spreadsheet, passing in the payments array
            $excel->sheet($subject->subject_class_code, function ($sheet) use ($survey, $subject, $studentsNotDone) {
                $sheet->loadView('admin.layouts.studentsTable', ['survey' => $survey, 'subject' => $subject, 'subject' => $subject, 'studentsNotDone' => $studentsNotDone]);
            });

        })->download('xlsx');
    }

    public function edit($id)
    {
        $survey = Survey::find($id);
        $questions = Question::where('survey_id', $id)->get();

        return view('admin.survey.edit', compact('survey', 'questions'));
    }

    /**
     * Chỉnh sửa thông tin khảo sát
     * @param $id
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update($id, Request $request)
    {
        $survey = Survey::find($id);
        $survey->survey_name = $request->survey_name;
        $survey->expired_day = date('Y-m-d 23:59:59', strtotime($request->expired_day));
        $survey->save();

        $data = [];
        $data['time'] = date('Y-m-d H:i:s');
        $data['ip_address'] = \Request::getClientIp();
        $data['actions'] = 'Admin '. Auth::guard('admin')->user()->username .' update survey no '. $id .' successfully.';
        History::insert($data);

        return redirect(route('survey.preview', $id))->with('success', 'Cập nhật khảo sát thành công');
    }
}
