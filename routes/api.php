<?php

use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Request;

Route::apiResource('/song', 'Api\SongController');

Route::apiResource('/artist', 'Api\ArtistController');

Route::apiResource('/category', 'Api\CategoryController');

Route::apiResource('/album', 'Api\AlbumController');

Route::apiResource('/banner', 'Api\BannerController');



Route::post('login', 'Api\UserController@login');
Route::group(['middleware' => 'auth:api'], function () {
    Route::post('details', 'Api\UserController@details');
});
