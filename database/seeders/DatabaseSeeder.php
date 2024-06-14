<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        \App\Models\User::factory(50)->create();
        \App\Models\Movie::factory(50)->create();
        \App\Models\Serie::factory(50)->create();
        
    }
}
