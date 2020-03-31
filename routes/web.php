<?php


Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');


Route::get('/login/admin', 'Auth\LoginController@showAdminLoginForm');

Route::post('/login/admin', 'Auth\LoginController@adminLogin');

Route::view('/home', 'home')->middleware('auth:web');

Route::group(['middleware' => ['auth:admin']], function () {
    Route::get('/dashboard', 'Admin\AdminController@dashboard');
    Route::group(['prefix' => '/dashboard'], function () {
        Route::resource('/songs', 'SongController');
        Route::resource('/albums', 'AlbumController');
        Route::resource('/artists', 'ArtistController');
        Route::resource('/users', 'UserController');
        Route::post('/search', 'Admin\AdminController@search');
    });
});
