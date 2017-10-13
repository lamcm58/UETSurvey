<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\StudentSubject;
use App\Models\Subject;
use App\Models\History;
use Illuminate\Support\Facades\Auth;
use Excel;

class StudentController extends Controller
{
    public function add()
    {
        return view('admin.student.add');
    }

    public function importList(Request $request)
    {
        if ($request->hasFile('student_file')) {
            $path = $request->file('student_file')->getRealPath();

            $data = Excel::load($path, function ($reader) {
            })->get();

            if (!empty($data) && $data->count()) {
                foreach ($data[0] as $student) {
                    $students[] = [
                        'username' => (string)$student['username'],
                        'password' => bcrypt('123456'),
                        'student_code' => (string)$student['username'],
                        'email' => $student['email'],
                        'full_name' => $student['firstname'].' '.$student['lastname']
                    ];
                }
                if(!empty($students)){
                    Student::insert($students);
                }

                $subjects = Subject::all();
                foreach ($data[1] as $item) {
                    $class_code = substr($item['course1'], 6);
                    $_student = Student::where('student_code', (string)$item['username'])->first();
                    foreach ($subjects as $subject) {
                        if (strpos($class_code, formatSubjectCode($subject->subject_class_code)) !== false) {
                            $datas[] = [
                                'student_id' => $_student->id,
                                'subject_id' => $subject->id
                            ];
                        }
                    }
                }
                if(!empty($datas)){
                    StudentSubject::insert($datas);
                }

                $data = [];
                $data['time'] = date('Y-m-d H:i:s');
                $data['ip_address'] = \Request::getClientIp();
                $data['actions'] = 'Admin '. Auth::guard('admin')->user()->username .' imported list students successfully.';
                History::insert($data);

                return back()->with('success','Thêm danh sách sinh viên thành công.');
            }
        }

        return back()->with('error', 'Có lỗi xảy ra. Vui lòng kiểm tra lại file của bạn.');
    }
}
