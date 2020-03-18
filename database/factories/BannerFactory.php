<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model\Banner;
use Faker\Generator as Faker;

$factory->define(Banner::class, function (Faker $faker) {
    return [
        'path' => 'https://i.imgur.com/oozlNAE.png',
    ];
});
