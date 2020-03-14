<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model\Artist;
use Faker\Generator as Faker;

$factory->define(Artist::class, function (Faker $faker) {
    return [
        'profile' => 'https://scontent.frgn3-1.fna.fbcdn.net/v/t1.0-9/60480260_310501419849805_377761404683288576_n.jpg?_nc_cat=106&_nc_sid=174925&_nc_ohc=yANGiWE2pUEAX-kSp3h&_nc_ht=scontent.frgn3-1.fna&oh=c02385e97aa6f078cc627194bee05dfe&oe=5E90B6A6',
        'name' => $faker->firstNameMale
    ];
});
