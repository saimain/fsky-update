<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Model\Artist::class, 15)->create();
        factory(App\Model\Category::class, 10)->create();
        factory(App\Model\Album::class, 20)->create();
        factory(App\Model\Song::class, 50)->create();
        factory(App\Model\Banner::class, 1)->create();
    }
}
