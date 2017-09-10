<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\StudentSurvey
 *
 * @property int $id
 * @property int $student_id
 * @property int $survey_id
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\StudentSurvey whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\StudentSurvey whereStudentId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\StudentSurvey whereSurveyId($value)
 * @mixin \Eloquent
 */
class StudentSurvey extends Model
{
    protected $table = 'students_surveys';

    protected $fillable = ['student_id', 'survey_id'];

    public $timestamps = false;
}
