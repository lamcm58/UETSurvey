<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Question
 *
 * @property int $id
 * @property string $question_code
 * @property int $question_type
 * @property string $question_content
 * @property string|null $answer
 * @property int $survey_id
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \App\Models\Survey $Survey
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereAnswer($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereQuestionCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereQuestionContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereQuestionType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereSurveyId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Question extends Model
{
    protected $table = 'questions';

    protected $fillable = ['question_code', 'question_type', 'question_category', 'question_content', 'answer', 'survey_id'];

    public $timestamps = true;

    public function Survey() {
        return $this->belongsTo('App\Models\Survey');
    }
}
