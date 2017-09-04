<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SurveyDetail extends Model
{
    protected $table = 'surveys_details';

    protected $fillable = ['survey_id', 'subject_id', 'student_id'];

    public $timestamps = false;
}
