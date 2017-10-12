<?php

use Illuminate\Support\Facades\Auth;
use App\Models\StudentSubject;
use App\Models\SurveyDetail;
use App\Models\Question;

/**
 * summary
 */
class ListProperty {
	public static function getListSubjects()
	{
		$data = StudentSubject::join('subjects', 'students_subjects.subject_id', '=', 'subjects.id')->where('student_id', Auth::user()->id)->get();

		return $data;
	}

	public static function getTotalStudentDoSurvey($survey_id, $subject_id, $isDone='')
    {
        if (!is_numeric($isDone)) {
            $count = SurveyDetail::where('survey_id', $survey_id)
                ->where('subject_id', $subject_id)
                ->count();
        } else {
            $count = SurveyDetail::where('survey_id', $survey_id)
                ->where('subject_id', $subject_id)
                ->where('is_done', $isDone)
                ->count();
        }

	    return $count;
    }

    public static function getQuestionByCategory($category)
    {
        $result = Question::where('question_category', '=', $category)->get();

        return $result;
    }
}
