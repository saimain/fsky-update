<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model\Album;
use App\Model\Artist;
use Faker\Generator as Faker;

$factory->define(Album::class, function (Faker $faker) {
    return [
        'artist_id' => function () {
            return Artist::all()->random();
        },
        'cover' => 'album-cover.jpg',
        'name' => $faker->firstNameMale,
        'about' => $faker->text($maxNbChars = 200),
    ];
});
