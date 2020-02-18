<?php

use App\Project;
use App\Event;
use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0');

        User::truncate();
        Project::truncate();
        Event::truncate();

        $cantidadUsuarios =5;
        $cantidadProyectos =10;
        $cantidadEventos =100;

        factory(User::class,$cantidadUsuarios)->create();
        factory(Project::class,$cantidadProyectos)->create();
        factory(Event::class,$cantidadEventos)->create();

    }
}
