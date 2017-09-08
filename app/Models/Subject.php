<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    protected $table = 'subjects';

    protected $fillable = ['code', 'name', 'subject_class_code', 'student_quantity', 'teacher_name'];

    public $timestamps = true;

    public function Category()
    {
        return $this->belongsTo('App\Models\Category');
    }

    public function StudentSubject() {
        return $this->hasMany('App\Models\StudentSubject');
    }

    public function SubjectSurvey() {
        return $this->hasOne('App\Models\SubjectSurvey');
    }
}
