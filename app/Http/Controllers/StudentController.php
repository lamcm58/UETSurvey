<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\StudentSubject;
use App\Models\Subject;
use App\Models\History;
use Illuminate\Support\Facades\Auth;
use Excel;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\PasswordRequest;
use Mockery\Generator\StringManipulation\Pass\Pass;

class StudentController extends Controller
{
    public function add()
    {
        return view('admin.student.add');
    }

    /**
     * Thêm danh sách sinh viên và thông tin đăng ký môn học
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function importList(Request $request)
    {
        if ($request->hasFile('student_file')) {
            $path = $request->file('student_file')->getRealPath();

            $data = Excel::load($path, function ($reader) {
            })->get();

            if (!empty($data) && $data->count()) {
                foreach ($data as $student) {
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

                $data = [];
                $data['time'] = date('Y-m-d H:i:s');
                $data['ip_address'] = \Request::getClientIp();
                $data['actions'] = 'Admin '. Auth::guard('admin')->user()->username .' imported list students successfully.';
                History::insert($data);

                return back()->with('success','Thêm danh sách sinh viên thành công.');
            }
        }

        if ($request->hasFile('data_file')) {
            $path = $request->file('data_file')->getRealPath();

            $data = Excel::load($path, function ($reader) {
            })->get();

            if (!empty($data) && $data->count()) {
                $subjects = Subject::all();
                foreach ($data as $item) {
                    $class_code = $item['course1'];
                    $_student = Student::where('student_code', (string)$item['username'])->first();
                    foreach ($subjects as $subject) {
                        $data_code = $subject->course_id . '_' . formatSubjectCode($subject->subject_class_code);
                        if (strpos($class_code, $data_code) !== false) {
                            $datas[] = [
                                'student_id' => $_student->id,
                                'subject_id' => $subject->id
                            ];
                        }
                    }
                }
                if (!empty($datas)) {
                    StudentSubject::insert($datas);
                }

                $data = [];
                $data['time'] = date('Y-m-d H:i:s');
                $data['ip_address'] = \Request::getClientIp();
                $data['actions'] = 'Admin ' . Auth::guard('admin')->user()->username . ' imported list students and their subjects successfully.';
                History::insert($data);

                return back()->with('success', 'Thêm dữ liệu đăng ký môn học thành công.');
            }

            return back()->with('error', 'Có lỗi xảy ra. Vui lòng kiểm tra lại file của bạn.');
        }
    }

    public function index()
    {
        $students = Student::paginate(20);

        return view('admin.student.list', compact('students'));
    }

    public function changePass()
    {
        return view('pages.password.changePass');
    }

    /**
     * Đổi mật khẩu tài khoản quản trị
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function updatePass(PasswordRequest $request)
    {
        if (Auth::check()) {
            $current_password = Auth::User()->password;
            if (Hash::check($request->current_password, $current_password)) {
                $user_id = Auth::id();
                $obj_user = Student::find($user_id);
                $obj_user->password = Hash::make($request->password);
                $obj_user->save();
                $message = "Thay đổi mật khẩu thành công !";

                $data = [];
                $data['time'] = date('Y-m-d H:i:s');
                $data['ip_address'] = \Request::getClientIp();
                $data['actions'] = 'Student ' . Auth::user()->username . ' updated password successfully.';
                History::insert($data);

                return redirect()->back()->with('success', $message);
            } else {
                $error = [
                    'current-password' => 'Bạn phải nhập đúng mật khẩu cũ'
                ];
                return redirect()->back()->with('error', $error);
            }
        } else {
            return redirect()->to('/');
        }
    }

}
