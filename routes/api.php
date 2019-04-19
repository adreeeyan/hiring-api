<?php

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['prefix' => 'v1'], function () {
    Route::get('applicants', 'ApplicantsController@index');
    Route::get('applicant/{applicant}', 'ApplicantsController@get');
    Route::post('applicant', 'ApplicantsController@create');
    Route::put('applicant', 'ApplicantsController@update');
    Route::delete('applicant/{applicant}', 'ApplicantsController@delete');
});