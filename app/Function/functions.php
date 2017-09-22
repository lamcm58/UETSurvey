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

function getScoreForOneSubject($result = []) {
    $total = 0;
    for ($i = 1; $i <= count($result); $i++) {
        if ((int)$result["question-$i"] == 1) {
            $total += 1;
        } elseif ((int)$result["question-$i"] == 2) {
            $total += 2;
        } elseif ((int)$result["question-$i"] == 3) {
            $total += 3;
        } elseif ((int)$result["question-$i"] == 4) {
            $total += 4;
        } elseif ((int)$result["question-$i"] == 5) {
            $total += 5;
        }
    }

    return $total;
}
