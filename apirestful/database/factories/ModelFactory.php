<?php

use App\Project;
use App\Event;
/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\User::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => $password ?: $password = bcrypt('secret'),
        'remember_token' => str_random(10),
    ];
});

$factory->define(Project::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->word,
        'description' => $faker->paragraph(1),
        'start_date' => $faker->dateTime(),
        'image'  => $faker->randomElement(['1.jpg','2.jpg','3.jpg','4.jpg','5.jpg']),
    ];
});

$factory->define(Event::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->word,
        'description' => $faker->paragraph(1),
        'date' => $faker->dateTime(),
      	'image'  => $faker->randomElement(['1.jpg','2.jpg','3.jpg','4.jpg','5.jpg']),
      	'project_id' => Project::all()->random()->id,
    ];
});
