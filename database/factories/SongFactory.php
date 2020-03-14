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
        'cover' => 'https://cdn.wildstream.ng/storage/jungle/crop/500/01A9U829At.jpg',
        'lyric' => $faker->paragraph,
        'source' => 'storage/mp3/naruto-shippuden-songs_naruto-shippuden-opening-01-hero-s-come-back.mp3'
    ];
});
