<?php

use Illuminate\Http\Request;

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

/**
 * Projects
 */
Route::resource('projects','Project\ProjectController',['except'=>['create','edit']]);
Route::resource('projects.events','Project\ProjectEventController',['only'=>['index']]);
/**
 * Events
 */
Route::resource('events','Event\EventController',['except'=>['create','edit']]);
/**
 * Users
 */
Route::resource('users','User\UserController',['except'=>['create','edit']]);

Route::post('oauth/token', '\Laravel\Passport\Http\Controllers\AccessTokenController@issueToken');
