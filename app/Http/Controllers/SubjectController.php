<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Subject;
use App\Models\Survey;
use Illuminate\Http\Request;
use App\Models\SubjectSurvey;
use App\Models\StudentSubject;
use App\Models\History;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\SubjectRequest;

class SubjectController extends Controller
{
    public function index()
    {
        $subjects = Subject::paginate(20);

        return view('admin.subject.list', compact('subjects'));
    }

    public function add()
    {
        $categories = Category::all();
        return view('admin.subject.add', compact('categories'));
    }

    /**
     * Import list subjects from excel file
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function importExcel(Request $request)
    {
        if ($request->hasFile('subject_file')) {
            $path = $request->file('subject_file')->getRealPath();

            $data = Excel::load($path, function ($reader) {
            })->get();

            if (!empty($data) && $data->count()) {
                foreach ($data->toArray() as $key => $value) {
                    if (!empty($value)) {
                        foreach ($value as $v) {
                            $insert[] = [
                                'code' => $v['code'], 
                                'name' => $v['name'],
                                'subject_class_code' => $v['subject_class_code'],
                                'course_id' => $v['course_id'],
                                'teacher_name' => $v['teacher_name'],
                                'category_id' => getCategoryId($v['category'])
                            ];
                        }
                    }
                }
                if(!empty($insert)){
                    Subject::insert($insert);

                    $data = [];
                    $data['time'] = date('Y-m-d H:i:s');
                    $data['ip_address'] = \Request::getClientIp();
                    $data['actions'] = 'Admin '. Auth::guard('admin')->user()->username .' imported list subjects successfully.';
                    History::insert($data);

                    return back()->with('success','Thêm danh sách môn học thành công.');
                }
            }
        }

        return back()->with('error', 'Có lỗi xảy ra. Vui lòng kiểm tra lại file của bạn.');
    }

    /**
     * Subject details(survey list and students list)
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function detail($id)
    {
        $subject = Subject::find($id);
        $selected = SubjectSurvey::select('survey_id', 'survey_name')
                    ->join('surveys', 'subjects_surveys.survey_id', '=', 'surveys.id')
                    ->where('subject_id', $id)
                    ->get();
        $surveys = Survey::all();
        $students = StudentSubject::select('student_id', 'full_name', 'student_code', 'email')
                    ->join('students', 'students_subjects.student_id', '=', 'students.id')
                    ->where('subject_id', $id)
                    ->paginate(20);

        return view('admin.subject.detail', compact('subject','selected', 'surveys', 'students'));
    }

    /**
     * Add subject
     * @param SubjectRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function addSubject(SubjectRequest $request)
    {
        $subject = [];
        $subject['code'] = $request->code;
        $subject['name'] = $request->name;
        $subject['subject_class_code'] = formatClassCode($request->code);
        $subject['teacher_name'] = $request->teacher_name;
        $subject['category_id'] = $request->category_id;

        Subject::insert($subject);

        $sbj = Subject::orderBy('id', 'DESC')->first();
        $last_id = $sbj->id;
        $tmp_subject = Subject::find($last_id-1);
        $sbj->course_id = $tmp_subject->course_id;
        $sbj->save();

        $data = [];
        $data['time'] = date('Y-m-d H:i:s');
        $data['ip_address'] = \Request::getClientIp();
        $data['actions'] = 'Admin '. Auth::guard('admin')->user()->username .' added subject '.$subject['name'].'_'.$subject['subject_class_code'].' successfully.';
        History::insert($data);

        return back()->with('success', 'Thêm môn học thành công.');
    }
}
