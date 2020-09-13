<?php

use Illuminate\Database\Seeder;
use App\Product;
use Faker\Factory as FakerFactory;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = FakerFactory::create();
        for ($i = 0; $i < 30; $i++) {

            Product::create([
                'title' => $faker->sentence(5),
                'slug' => $faker->slug,
                'subtitle' => $faker->sentence(4),
                'price' => $faker->numberBetween(15, 300) * 100,
                'description'=>$faker->text ,
                // 'image' => 'https://via.placeholder.com/200×250' 
                'image'=> 'https://picsum.photos/200/300?random='.$faker->numberBetween(1,200)

            ])->categories()->attach([
                rand(1,4),
                rand(1,4)
            ]);
        }
    }
}
