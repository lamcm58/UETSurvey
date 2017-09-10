<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\SubjectSurvey
 *
 * @property int $id
 * @property int $subject_id
 * @property int $survey_id
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SubjectSurvey whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SubjectSurvey whereSubjectId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\SubjectSurvey whereSurveyId($value)
 * @mixin \Eloquent
 */
class SubjectSurvey extends Model
{
    protected $table = 'subjects_surveys';

    protected $fillable = ['subject_id', 'survey_id'];

    public $timestamps = false;
}
