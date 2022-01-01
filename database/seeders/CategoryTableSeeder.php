<?php

namespace Database\Seeders;

use App\Models\Category;
use Faker\Factory;
use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(){
        $faker      =   Factory::create();
        foreach (range(1,5) as $index){
            $category   =   $faker->unique()->name;
            Category::create([
                "name"      =>  $category,
                "slug"      =>  $this->slugify($category),
                "status"    =>  rand(0, 1),
            ]);
        }
    }
    /**
    * @param $text
    * @return  bool|false|string|String[]|null
     */
    public function slugify($text){
        //replace non letter or digits by-
        $text   =   preg_replace('~[^\pL\d]+~u','-',$text);

        //transliterate
        $text   =   iconv('utf-8','us-ascii', $text);

        //remove unwanted character
        $text   =   preg_replace('~[^-\w]+~','',$text);

        //trim
        $text   =   trim($text, '-');

        //remove duplicate
        $text   =   preg_replace('~-+~','-',$text);

        //lowercase
        $text   =   strtolower($text);

        if (empty($text)){
            return 'n-a';
        }
        return $text;
    }
}
