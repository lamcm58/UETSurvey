<?php

namespace App\Http\Controllers;

use App\Models\Subject;
use App\Models\Survey;
use Illuminate\Http\Request;
use App\Models\SubjectSurvey;
use App\Models\StudentSubject;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class SubjectController extends Controller
{
    public function index()
    {
        $subjects = Subject::paginate(20);

        return view('admin.subject.list', compact('subjects'));
    }

    public function add()
    {
        return view('admin.subject.add');
    }

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
                                'student_quantity' => $v['student_quantity'],
                                'teacher_name' => $v['teacher_name'],
                                'category_id' => getCategoryId($v['category'])
                            ];
                        }
                    }
                }
                if(!empty($insert)){
                    Subject::insert($insert);

                    Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_access.log');
                    Log::info('Admin '.Auth::guard('admin')->user()->username.' added list subjects successfully.');

                    return back()->with('success','Thêm môn học thành công.');
                }
            }
        }

        Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_error.log');
        Log::error('Admin '.Auth::guard('admin')->user()->username.' added the file of list subjects but there is something wrong.');

        return back()->with('error', 'Có lỗi xảy ra. Vui lòng kiểm tra lại file của bạn.');
    }

    public function detail($id)
    {
        $subject = Subject::find($id);
        $selected = SubjectSurvey::select('survey_id', 'survey_name')
                    ->join('surveys', 'subjects_surveys.survey_id', '=', 'surveys.id')
                    ->where('subject_id', $id)
                    ->get();
        $surveys = Survey::all();
        $students = StudentSubject::select('student_id', 'full_name', 'student_code')
                    ->join('students', 'students_subjects.student_id', '=', 'students.id')
                    ->where('subject_id', $id)
                    ->get();

        Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_access.log');
        Log::info('Admin '.Auth::guard('admin')->user()->username.' accesses to detail page of '.$subject->name.'.');

        return view('admin.subject.detail', compact('subject','selected', 'surveys', 'students'));
    }

}
