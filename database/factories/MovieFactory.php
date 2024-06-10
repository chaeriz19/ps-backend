<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Generator as Faker;
use App\Models\Movie;

class MovieFactory extends Factory
{

    public function definition(): array
    {
        $faker = \Faker\Factory::create();
        return [
            'title' => $faker->sentence,
            'movie_type' => $faker->randomElement(['Action', 'Drama', 'Comedy', 'Thriller', 'Horror']),
            'year' => $faker->numberBetween(1900, date('Y')),
            'minutes' => $faker->numberBetween(60, 240),
        ];
    }
}