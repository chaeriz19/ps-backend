<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Generator as Faker;
use App\Models\Serie;

class SerieFactory extends Factory
{

    public function definition(): array
    {
        $faker = \Faker\Factory::create();
        return [
            'title' => $faker->sentence,
            'serie_type' => $faker->randomElement(['Action', 'Drama', 'Comedy', 'Thriller', 'Horror']),
            'year' => $faker->numberBetween(1900, date('Y')),
            'episodes' => $faker->numberBetween(2, 15),
        ];
    }
}