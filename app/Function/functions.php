<?php
use App\Models\Category;

/**
 * Created by PhpStorm.
 * User: admin
 * Date: 9/6/2017
 * Time: 10:40 PM
 */

function getCategoryId($cate_name) {
    $category = Category::where('category_name', '=', trans("translation.$cate_name"))->first();

    return $category->id;
}