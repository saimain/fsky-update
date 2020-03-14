<?php

use Symfony\Component\HttpFoundation\Request;

Route::apiResource('/song', 'Api\SongController');

Route::apiResource('/artist', 'Api\ArtistController');

Route::apiResource('/category', 'Api\CategoryController');

Route::apiResource('/album', 'Api\AlbumController');
