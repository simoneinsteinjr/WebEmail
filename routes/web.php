<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/
Route::get('caixa', 'CaixaController@create');
Route::get('caixaLista', 'CaixaController@index');

Route::resource('caixas', 'CaixaController');


Auth::routes();

Route::get('/', 'HomeController@index');

