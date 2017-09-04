<?php

use Illuminate\Support\Facades\Auth;
use App\Models\StudentSubject;

/**
 * summary
 */
class ListProperty {
	public static function getListSubjects()
	{
		$data = StudentSubject::join('subjects', 'students_subjects.subject_id', '=', 'subjects.id')->where('student_id', Auth::user()->id)->get();

		return $data;
	}
}
