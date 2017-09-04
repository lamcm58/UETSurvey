<?php

namespace App\Http\Controllers;

use App\Models\Question;
use App\Models\Subject;
use App\Models\Survey;
use App\Models\SubjectSurvey;
use App\Models\Student;
use App\Models\StudentSubject;
use App\Models\SurveyDetail;
use App\Models\StudentSurvey;
use Illuminate\Http\Request;

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
                    $questions['survey_id'] = $id;

                    Question::create($questions);
                }

                // update subject
                // if ($request->all == "on") {
                //     $subjects = Subject::all();
                //     foreach ($subjects as $subject) {
                //         $data = [];
                //         $data['subject_id'] = $subject->id;
                //         $data['survey_id'] = $id;
                //         SubjectSurvey::create($data);
                //     }
                // }
            }
            return back()->with('success', 'Add survey successful.');
        }
        return back()->with('error', 'Please Check your file, Something is wrong there.');
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
            // $id = $save->id;
            // if ($request->check_all == "on") {
            //     $subjects = Subject::all();
            //     foreach ($subjects as $subject) {
            //         $data = [];
            //         $data['subject_id'] = $subject->id;
            //         $data['survey_id'] = $id;
            //         SubjectSurvey::create($data);
            //     }
            // } elseif (is_numeric($request->subject_id)) {
            //     $data = [];
            //     $data['subject_id'] = $request->subject_id;
            //     $data['survey_id'] = $id;
            //     SubjectSurvey::create($data);
            // }
            return back()->with('success', 'Add survey successful.');
        } else {
            return back()->with('error', 'Please Check your file, Something is wrong there.');
        }
    }

    public function preview($id)
    {
        $item = Survey::find($id);
        $questions = Question::where('survey_id', $id)->get();
        $students = Student::all();
        $subjects = Subject::all();

        return view('admin.survey.preview', compact('item', 'questions','students', 'subjects'));
    }

    public function grantUser(Request $request, $id)
    {
        $student_id = $request->student_id;
        $item = StudentSurvey::where('survey_id', $id)
                    ->where('student_id', $student_id)
                    ->get();

        if (count($item) > 0) {
            return back()->with('error', 'Curent survey has been added to this student.');
        } else {
            $data = [];
            $data['survey_id'] = $id;
            $data['student_id'] = $student_id;
            StudentSurvey::create($data);

            $subject_details = StudentSubject::where('student_id', $student_id)
                    ->get();
            foreach ($subject_details as $subject_detail) {
                $details = SurveyDetail::where('survey_id', $id)
                    ->where('subject_id', $subject_detail->subject_id)
                    ->where('student_id', $student_id)
                    ->get();

                if (count($details) > 0) {
                    foreach ($details as $detail) {
                        $detail->delete();
                    }
                }

                $data = [];
                $data['survey_id'] = $id;
                $data['subject_id'] = $subject_detail->subject_id;
                $data['student_id'] = $student_id;
                SurveyDetail::create($data);
            }
            return back()->with('success', 'Add survey successfully.');
        }
    }

    public function grantSubject(Request $request, $id)
    {
        $subject_id = $request->subject_id;
        $subjects = SubjectSurvey::where('survey_id', $id)
                    ->where('subject_id', $subject_id)
                    ->get();
        $details = SurveyDetail::where('survey_id', $id)
                    ->where('subject_id', $subject_id)
                    ->get();

        if (count($subjects) > 0) {
            return back()->with('error', 'Curent survey has been added to this subject.');
        } else {
            if (count($details) > 0) {
                foreach ($details as $detail) {
                    $detail->delete();
                }
            }

            $data = [];
            $data['subject_id'] = $subject_id;
            $data['survey_id'] = $id;
            SubjectSurvey::create($data);

            $subject_detail = StudentSubject::where('subject_id', $subject_id)->get();

            foreach ($subject_detail as $value) {
                $data = [];
                $data['survey_id'] = $id;
                $data['subject_id'] = $subject_id;
                $data['student_id'] = $value->student_id;

                SurveyDetail::create($data);
            }
            return back()->with('success', 'Add survey successfully.');
        }
    }
}
