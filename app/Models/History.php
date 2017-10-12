<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class History extends Model
{
    protected $table = 'histories';

    protected $fillable = ['time', 'ip_address', 'actions'];

    public $timestamps = false;
}
