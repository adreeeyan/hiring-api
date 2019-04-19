<?php

use App\Applicant;
use Illuminate\Database\Seeder;

class ApplicantsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Truncate it to start from scratch
        Applicant::truncate();

        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 20; $i++) {
            Applicant::create([
                'name' => $faker->name,
                'email' => $faker->email,
                'isHired' => $faker->boolean($chanceOfGettingTrue = 70),
                'lastApplication' => $faker->dateTimeBetween('-1 year', 'now')
            ]);
        }
    }
}
