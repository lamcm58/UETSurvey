<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'categories';

    protected $fillable = ['category_name'];

    public $timestamps = false;

    public function Subject() {
        return $this->hasMany('App\Models\Subject');
    }

    public static function listCategory() {
        $result = Category::all();

        return $result;
    }
}
