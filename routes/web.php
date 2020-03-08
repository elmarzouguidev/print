<?php

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

Route::get('/',['uses'=>'SiteController@index','as'=>'home']);
Route::get('/about',['uses'=>'SiteController@about','as'=>'about']);
Route::get('/promos',['uses'=>'SiteController@promos','as'=>'promos']);
Route::get('/products',['uses'=>'SiteController@products','as'=>'products']);
Route::get('/portfolio',['uses'=>'SiteController@portfolio','as'=>'portfolio']);
Route::get('/portfolio/{slug}',['uses'=>'SiteController@portfolioSingle','as'=>'portfolioSingle']);

Route::get('/contact',['uses'=>'SiteController@contact','as'=>'contact']);




Route::group(['prefix' => 'theadmin'], function () {
    Voyager::routes();
});
