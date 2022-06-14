<?php

namespace Database\Seeders;

use App\Models\Listing;
use App\Models\User;
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
        // \App\Models\User::factory(5)->create();
        $user = User::factory()->create([
            'name' => 'John',
            'email' => 'john@mail.com'
        ]);

        \App\Models\Listing::factory(6)->create([
            'user_id' => $user->id,
        ]);

        // Listing::create([
        //     'title' => 'Laravel Senior Developer',
        //     'tags' => 'laravel,javascript,typescript',
        //     'company' => 'Acme Corp',
        //     'location' => 'Boston,MA',
        //     'email' => 'email1@mail.com',
        //     'website' => 'https://www.acme.com',
        //     'description' => 'Culpa est aliqua et nisi aliqua consectetur ad in consequat 
        //     ut aliqua et aliquip. Aliqua enim non occaecat officia 
        //     voluptate velit consequat nostrud incididunt in quis mollit aute 
        //     Lorem. Incididunt sit culpa officia esse elit aliqua. Aliquip quis
        //      adipisicing Lorem nulla duis anim est ea in enim nulla reprehenderit. 
        //      Ad anim labore cillum irure ipsum sint fugiat deserunt 
        //     duis in quis duis ullamco adipisicing. Eu qui in tempor magna velit amet elit magna officia.',

        // ]);
        // Listing::create([
        //     'title' => 'java Senior Developer',
        //     'tags' => 'Java,javascript,typescript',
        //     'company' => 'Stark Industries',
        //     'location' => 'New York,NY',
        //     'email' => 'emailstark@mail.com',
        //     'website' => 'https://www.stark.com',
        //     'description' => 'Culpa est aliqua et nisi aliqua consectetur ad in consequat 
        //     ut aliqua et aliquip. Aliqua enim non occaecat officia 
        //     voluptate velit consequat nostrud incididunt in quis mollit aute 
        //     Lorem. Incididunt sit culpa officia esse elit aliqua. Aliquip quis
        //      adipisicing Lorem nulla duis anim est ea in enim nulla reprehenderit. 
        //      Ad anim labore cillum irure ipsum sint fugiat deserunt 
        //     duis in quis duis ullamco adipisicing. Eu qui in tempor magna velit amet elit magna officia.',

        // ]);
    }
}