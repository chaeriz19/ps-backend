<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Content;

class ContentFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Content::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $contentType = $this->faker->randomElement(['Serie', 'Movie']);

        return [
            'title' => $this->faker->sentence,
            'description' => $this->faker->paragraph,
            'content' => $contentType,
            'length' => $contentType === 'Movie' ? $this->faker->numberBetween(60, 180) : null,
            'episodes' => $contentType === 'Serie' ? $this->faker->numberBetween(1, 20) : null,
        ];
    }
}