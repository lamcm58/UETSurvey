<?php
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['domain' => 'admin.my-survey.com', 'middleware' => 'checkAuth'], function () {
    Route::get('/', ['as' => 'admin.home', 'uses' => 'HomeController@index']);
    Route::get('/home', ['as' => 'admin.home', 'uses' => 'HomeController@index']);

    Route::get('/category/{id}', ['as' => 'category.view', 'uses' => 'PageController@viewCate']);
    Route::post('/category/{id}/addSurvey', ['as' => 'category.addSurvey', 'uses' => 'PageController@addSurvey']);

    Route::post('/admin/updatePass', ['as' => 'admin.updatePass', 'uses' => 'HomeController@updatePass']);

    Route::group(['prefix' => 'subject'], function () {
        Route::get('/list', ['as' => 'subject.list', 'uses' => 'SubjectController@index']);
        Route::get('/add', ['as' => 'subject.add', 'uses' => 'SubjectController@add']);
        Route::post('/importExcel', ['as' => 'subject.importExcel', 'uses' => 'SubjectController@importExcel']);
        Route::get('/{id}/detail', ['as' => 'subject.detail', 'uses' => 'SubjectController@detail']);
        Route::post('/{id}/addSurvey', ['as' => 'subject.addSurvey', 'uses' => 'SubjectController@addSurvey']);
        Route::post('/addSubject', ['as' => 'subject.addSubject', 'uses' => 'SubjectController@addSubject']);
    });

    Route::group(['prefix' => 'survey'], function () {
        Route::get('/list', ['as' => 'survey.list', 'uses' => 'SurveyController@index']);
        Route::get('/add', ['as' => 'survey.add', 'uses' => 'SurveyController@add']);
        Route::post('/importFile', ['as' => 'survey.import', 'uses' => 'SurveyController@importFile']);
        Route::post('/create', ['as' => 'survey.create', 'uses' => 'SurveyController@create']);
        Route::get('/{id}/preview', ['as' => 'survey.preview', 'uses' => 'SurveyController@preview']);
        Route::post('/{id}/grantSubject', ['as' => 'survey.grantCategory', 'uses' => 'SurveyController@grantCategory']);
        Route::get('/{id}/statistic', ['as' => 'survey.statistic', 'uses' => 'SurveyController@statistic']);
        Route::get('/{id}/statistic/category/{cat_id}/subjects', ['as' => 'survey.statisticCategory.subjects', 'uses' => 'SurveyController@statisticCategorySubjects']);
        Route::get('/{id}/statistic/category/{cat_id}', ['as' => 'survey.statisticCategory', 'uses' => 'SurveyController@statisticCategory']);
        Route::get('/{id}/statistic/subject/{subject_id}', ['as' => 'survey.subjectStatistic', 'uses' => 'SurveyController@subjectStatistic']);
        Route::get('/export/{survey_id}/{subject_id}', ['as' => 'survey.export', 'uses' => 'SurveyController@export']);
        Route::get('/exportStat/{survey_id}/{cat_id}', ['as' => 'survey.exportStat', 'uses' => 'SurveyController@exportStat']);
        Route::get('/{id}/statistic/subject/{subject_id}/studentsNotDone', ['as' => 'survey.subject.studentsNotDone', 'uses' => 'SurveyController@studentsNotDone']);
        Route::get('/{id}/statistic/subject/{subject_id}/studentsDone', ['as' => 'survey.subject.studentsDone', 'uses' => 'SurveyController@studentsDone']);
        Route::get('/exportList/{survey_id}/{subject_id}', ['as' => 'survey.exportList', 'uses' => 'SurveyController@exportList']);
    });
    Route::group(['prefix' => 'student'], function () {
        Route::get('/list', ['as' => 'student.list', 'uses' => 'StudentController@index']);
        Route::get('/add', ['as' => 'student.add', 'uses' => 'StudentController@add']);
        Route::post('/importList', ['as' => 'student.importList', 'uses' => 'StudentController@importList']);
    });
});

Route::group(['domain' => 'my-survey.com', 'middleware' => 'checkAuthUser'], function () {
    Route::get('/', ['as' => 'home', 'uses' => 'PageController@index']);
    Route::get('/home', ['as' => 'home', 'uses' => 'PageController@index']);

    Route::get('/subject/{id}', ['as' => 'subjectDetail', 'uses' => 'PageController@detail']);
    Route::get('/subject/{subject_id}/survey/{id}', ['as' => 'preview', 'uses' => 'PageController@preview']);
    Route::post('/subject/{subject_id}/survey/{id}', ['as' => 'doSurvey', 'uses' => 'PageController@doSurvey']);

    Route::post('/student/updatePass', ['as' => 'student.updatePass', 'uses' => 'StudentController@updatePass']);
});

Route::get('/login', ['as' => 'getLogin', 'uses' => 'Auth\LoginController@getLogin']);
Route::post('/login', ['as' => 'postLogin', 'uses' => 'Auth\LoginController@postLogin']);
Route::get('/logout', ['as' => 'logout', 'uses' => 'Auth\LoginController@logout']);

Route::get('/loginAdmin', ['as' => 'user.getLoginAdmin', 'uses' => 'Auth\LoginController@getLoginAdmin']);
Route::post('/loginAdmin', ['as' => 'user.postLoginAdmin', 'uses' => 'Auth\LoginController@postLoginAdmin']);
Route::get('/logoutAdmin', ['as' => 'user.logoutAdmin', 'uses' => 'Auth\LoginController@logoutAdmin']);
