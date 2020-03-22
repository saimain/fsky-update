<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model\Album;
use App\Model\Song;
use App\Model\Artist;
use App\Model\Category;
use Faker\Generator as Faker;

$factory->define(Song::class, function (Faker $faker) {
    return [
        'name' => $faker->firstNameMale,
        'artist_id' => function () {
            return Artist::all()->random();
        },
        'category_id' => function () {
            return Category::all()->random();
        },
        'album_id' => function () {
            return Album::all()->random();
        },
        'cover' => 'song-cover.jpg',
        'lyric' => $faker->paragraph,
        'source' => '849234502.mp3'
    ];
});
