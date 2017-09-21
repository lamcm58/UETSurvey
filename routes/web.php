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

    Route::group(['prefix' => 'subject'], function () {
        Route::get('/list', ['as' => 'subject.list', 'uses' => 'SubjectController@index']);
        Route::get('/add', ['as' => 'subject.add', 'uses' => 'SubjectController@add']);
        Route::post('/importExcel', ['as' => 'subject.importExcel', 'uses' => 'SubjectController@importExcel']);
        Route::get('/{id}/detail', ['as' => 'subject.detail', 'uses' => 'SubjectController@detail']);
        Route::post('/{id}/addSurvey', ['as' => 'subject.addSurvey', 'uses' => 'SubjectController@addSurvey']);
    });

    Route::group(['prefix' => 'survey'], function () {
        Route::get('/list', ['as' => 'survey.list', 'uses' => 'SurveyController@index']);
        Route::get('/add', ['as' => 'survey.add', 'uses' => 'SurveyController@add']);
        Route::post('/importFile', ['as' => 'survey.import', 'uses' => 'SurveyController@importFile']);
        Route::post('/create', ['as' => 'survey.create', 'uses' => 'SurveyController@create']);
        Route::get('/{id}/preview', ['as' => 'survey.preview', 'uses' => 'SurveyController@preview']);
        Route::post('/{id}/grantSubject', ['as' => 'survey.grantCategory', 'uses' => 'SurveyController@grantCategory']);
        Route::get('/{id}/statistic', ['as' => 'survey.statistic', 'uses' => 'SurveyController@statistic']);
        Route::get('/{id}/statistic/subject/{subject_id}', ['as' => 'survey.subjectStatistic', 'uses' => 'SurveyController@subjectStatistic']);
    });
    
});

Route::group(['domain' => 'my-survey.com', 'middleware' => 'checkAuthUser'], function () {
    Route::get('/', ['as' => 'home', 'uses' => 'PageController@index']);
    Route::get('/home', ['as' => 'home', 'uses' => 'PageController@index']);

    Route::get('/subject/{id}', ['as' => 'subjectDetail', 'uses' => 'PageController@detail']);
    Route::get('/subject/{subject_id}/survey/{id}', ['as' => 'preview', 'uses' => 'PageController@preview']);
    Route::post('/subject/{subject_id}/survey/{id}', ['as' => 'doSurvey', 'uses' => 'PageController@doSurvey']);
});

Route::get('/login', ['as' => 'getLogin', 'uses' => 'Auth\LoginController@getLogin']);
Route::post('/login', ['as' => 'postLogin', 'uses' => 'Auth\LoginController@postLogin']);
Route::get('/logout', ['as' => 'logout', 'uses' => 'Auth\LoginController@logout']);

Route::get('/loginAdmin', ['as' => 'user.getLoginAdmin', 'uses' => 'Auth\LoginController@getLoginAdmin']);
Route::post('/loginAdmin', ['as' => 'user.postLoginAdmin', 'uses' => 'Auth\LoginController@postLoginAdmin']);
Route::get('/logoutAdmin', ['as' => 'user.logoutAdmin', 'uses' => 'Auth\LoginController@logoutAdmin']);
