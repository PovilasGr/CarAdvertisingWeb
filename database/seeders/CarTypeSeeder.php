<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CarTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $car_types = [            ['name' => 'Sedan'],
            ['name' => 'SUV'],
            ['name' => 'Crossover'],
            ['name' => 'Coupe'],
            ['name' => 'Hatchback'],
            ['name' => 'Convertible'],
            ['name' => 'Pickup Truck'],
            ['name' => 'Van'],
            ['name' => 'Wagon'],
        ];

        foreach ($car_types as $type) {
            DB::table('car_types')->insert($type);
        }
    }
}
