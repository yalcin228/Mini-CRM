<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Support\Str;
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
        // \App\Models\User::factory(10)->create();
        User::insert([
            'name'=>'Yalçın Gülməmmədov',
            'email'=>'admin@admin.com',
            'email_verified_at'=>now(),
            'type'=>'1',
            'password'=>'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',
            'remember_token'=>Str::random(10),
        ]);
        \App\Models\Companie::factory(30)->create();
        \App\Models\Employee::factory(120)->create();
       
    }
}
