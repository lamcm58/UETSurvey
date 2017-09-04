<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StudentSurvey extends Model
{
    protected $table = 'students_surveys';

    protected $fillable = ['student_id', 'survey_id'];

    public $timestamps = false;
}
