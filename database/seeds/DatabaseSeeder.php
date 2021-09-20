<?php

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
        // $this->call(UsersTableSeeder::class);
        DB::table('users')->insert([
            'name'=>'Administrator',
            'email'=>'admin@gmail.com',
            'phone'=>'012345678',
            'address'=>'Địa chỉ',
            'level'=>'1',
            'password'=>bcrypt('123456')
        ]);
    }
}
