<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\StudentSubject
 *
 * @property int $id
 * @property int $student_id
 * @property int $subject_id
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\StudentSubject whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\StudentSubject whereStudentId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\StudentSubject whereSubjectId($value)
 * @mixin \Eloquent
 */
class StudentSubject extends Model
{
    protected $table = 'students_subjects';

    protected $fillable = ['student_id', 'subject_id'];

    public $timestamps = false;
}
