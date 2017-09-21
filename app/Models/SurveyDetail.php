<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\SurveyDetail
 *
 * @property int $id
 * @property int $survey_id
 * @property int $subject_id
 * @property int $student_id
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SurveyDetail whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SurveyDetail whereStudentId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SurveyDetail whereSubjectId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SurveyDetail whereSurveyId($value)
 * @mixin \Eloquent
 */
class SurveyDetail extends Model
{
    protected $table = 'surveys_details';

    protected $fillable = ['survey_id', 'subject_id', 'student_id', 'is_done'];

    public $timestamps = false;
}
