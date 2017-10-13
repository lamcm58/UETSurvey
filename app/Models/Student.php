<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

/**
 * App\Models\Student
 *
 * @property int $id
 * @property string $username
 * @property string $password
 * @property string $student_code
 * @property string $class
 * @property string $email
 * @property string $full_name
 * @property string|null $remember_token
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Student whereClass($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Student whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Student whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Student whereFullName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Student whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Student wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Student whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Student whereStudentCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Student whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Student whereUsername($value)
 * @mixin \Eloquent
 */
class Student extends Authenticatable
{
    protected $table = 'students';

    protected $fillable = ['username', 'password', 'student_code', 'email', 'full_name'];

    public $timestamps = true;

    protected $hidden = [
        'password', 'remember_token',
    ];

}
