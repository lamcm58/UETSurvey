<?php

use Illuminate\Database\Seeder;
use App\Models\Student;
use App\Models\Subject;
use App\Models\StudentSubject;

class StudentSubjectTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $students = Student::all();
        $subjects = Subject::all();

        foreach ($students as $student) {
        	for ($i=0; $i<6; $i++) {
        		$item = new StudentSubject();
        		$item->student_id = $student->id;
        		$item->subject_id = rand(1, count($subjects));
        		$item->save();
        	}
        }
    }
}
