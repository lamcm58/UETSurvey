<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Subject
 *
 * @property int $id
 * @property string $code
 * @property string $name
 * @property string $subject_class_code
 * @property string $student_quantity
 * @property string $teacher_name
 * @property int $category_id
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \App\Models\Category $Category
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\StudentSubject[] $StudentSubject
 * @property-read \App\Models\SubjectSurvey $SubjectSurvey
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Subject whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Subject whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Subject whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Subject whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Subject whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Subject whereStudentQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Subject whereSubjectClassCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Subject whereTeacherName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Subject whereUpdatedAt($value)
 * @mixin \Eloquent
 */
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
