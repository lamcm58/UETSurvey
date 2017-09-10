<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Category
 *
 * @property int $id
 * @property string $category_name
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\Subject[] $Subject
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Category whereCategoryName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Category whereId($value)
 * @mixin \Eloquent
 */
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
