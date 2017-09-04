<?php

namespace App\Http\Controllers;

use App\Models\Subject;
use App\Models\Survey;
use Illuminate\Http\Request;
use App\Models\SubjectSurvey;
use App\Models\StudentSubject;
use Maatwebsite\Excel\Facades\Excel;

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
                                'teacher_name' => $v['teacher_name']
                            ];
                        }
                    }
                }
                if(!empty($insert)){
                    Subject::insert($insert);
                    return back()->with('success','Insert Record successfully.');
                }
            }
        }
        return back()->with('error', 'Please Check your file, Something is wrong there.');
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

        return view('admin.subject.detail', compact('subject','selected', 'surveys', 'students'));
    }

    public function addSurvey($id, Request $request)
    {
        $survey_id = $request->survey_id;
        $item = SubjectSurvey::where('subject_id', $id)
                    ->where('survey_id', $survey_id)
                    ->first();
        if (isset($item)) {
            return back()->with('error', 'Current survey has been added to this subject.');
        } else {
            $data = [];
            $data['subject_id'] = $id;
            $data['survey_id'] = $survey_id;
            SubjectSurvey::create($data);
            return back()->with('success', 'Add survey successfully.');
        }
    }
}
