<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Result extends Model
{
    protected $table = 'results';

    protected $fillable = ['student_code', 'student_name', 'subject_class_code', 'subject_name', 'survey_id', 'student_answers'];

    public $timestamps = false;
}
