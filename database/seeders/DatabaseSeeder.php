<?php

namespace Database\Seeders;

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
        $this->call([
            UserTableSeeder::class,
            CategoryTableSeeder::class,
            PostTableSeeder::class,

        ]);
//         UserTableSeeder::factory(10)->create();
//         CategoryTableSeeder::factory(20)->create();
//         PostTableSeeder::factory(20)->create();
    }
}
