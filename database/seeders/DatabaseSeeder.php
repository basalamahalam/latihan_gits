<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        Post::factory(15)->create();


        User::create([
            'name' => 'Basalamah Alam',
            'username' => 'Alam',
            'email' => 'basalamahalam@gmail.com',
            'password' => bcrypt('12345')
        ]);

        User::create([
            'name' => 'Muhammad Alam Basalamah',
            'username' => 'Basalamah',
            'email' => 'alambasalamah@gmail.com',
            'password' => bcrypt('12335')
        ]);
        
        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Programming',
            'slug' => 'programming'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);
    }
}