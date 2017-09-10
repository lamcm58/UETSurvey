<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Survey
 *
 * @property int $id
 * @property string $survey_code
 * @property string $survey_name
 * @property string $expired_day
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\Question[] $Question
 * @property-read \App\Models\Subject $Subject
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Survey whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Survey whereExpiredDay($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Survey whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Survey whereSurveyCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Survey whereSurveyName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Survey whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Survey extends Model
{
    protected $table = 'surveys';

    protected $fillable = ['survey_code', 'survey_name', 'subject_id', 'expired_day'];

    public $timestamps = true;

    public function Question() {
        return $this->hasMany('App\Models\Question');
    }

    public function Subject() {
        return $this->belongsTo('App\Models\Subject');
    }
}
