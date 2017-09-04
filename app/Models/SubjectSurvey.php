<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SubjectSurvey extends Model
{
    protected $table = 'subjects_surveys';

    protected $fillable = ['subject_id', 'survey_id'];

    public $timestamps = false;
}
