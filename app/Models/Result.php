<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Result
 *
 * @property int $id
 * @property string $student_code
 * @property string $student_name
 * @property string $subject_class_code
 * @property string $subject_name
 * @property int $survey_id
 * @property string $student_answers
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Result whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Result whereStudentAnswers($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Result whereStudentCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Result whereStudentName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Result whereSubjectClassCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Result whereSubjectName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Result whereSurveyId($value)
 * @mixin \Eloquent
 */
class Result extends Model
{
    protected $table = 'results';

    protected $fillable = ['student_code', 'student_name', 'subject_class_code', 'subject_name', 'survey_id', 'student_answers'];

    public $timestamps = false;
}
