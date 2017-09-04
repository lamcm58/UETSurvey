<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Student extends Authenticatable
{
    protected $table = 'students';

    protected $fillable = ['username', 'password', 'student_code', 'class', 'email', 'full_name'];

    public $timestamps = true;

    protected $hidden = [
        'password', 'remember_token',
    ];

}
