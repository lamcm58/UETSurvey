<?php
use App\Models\Category;
use App\Models\Subject;

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

function formatSubjectCode($code) {
    $result = substr($code,0,3).'_'.substr($code,3,4).'_'.substr($code, 8);

    return $result;
}

function formatClassCode($code) {
    $subjects = Subject::where('code', $code)->orderBy('subject_class_code', 'DESC')->get();

    if (count($subjects) > 0) {
        $num = (int) substr($subjects[0]['subject_class_code'], (strlen($subjects[0]['subject_class_code'])-1));
        $num += 1;
        $result = $code.' '.$num;
    } else {
        $result = $code.' 1';
    }

    return $result;
}
