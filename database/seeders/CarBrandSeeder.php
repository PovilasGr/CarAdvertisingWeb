<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CarBrandSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $car_brands = [            ['name' => 'Acura'],
            ['name' => 'Alfa Romeo'],
            ['name' => 'Aston Martin'],
            ['name' => 'Audi'],
            ['name' => 'Bentley'],
            ['name' => 'BMW'],
            ['name' => 'Bugatti'],
            ['name' => 'Buick'],
            ['name' => 'Cadillac'],
            ['name' => 'Chevrolet'],
            ['name' => 'Chrysler'],
            ['name' => 'Citroen'],
            ['name' => 'Dodge'],
            ['name' => 'Ferrari'],
            ['name' => 'Fiat'],
            ['name' => 'Ford'],
            ['name' => 'GMC'],
            ['name' => 'Honda'],
            ['name' => 'Hyundai'],
            ['name' => 'Infiniti'],
            ['name' => 'Jaguar'],
            ['name' => 'Jeep'],
            ['name' => 'Kia'],
            ['name' => 'Lamborghini'],
            ['name' => 'Land Rover'],
            ['name' => 'Lexus'],
            ['name' => 'Lincoln'],
            ['name' => 'Lotus'],
            ['name' => 'Maserati'],
            ['name' => 'Mazda'],
            ['name' => 'McLaren'],
            ['name' => 'Mercedes-Benz'],
            ['name' => 'Mini'],
            ['name' => 'Mitsubishi'],
            ['name' => 'Nissan'],
            ['name' => 'Pagani'],
            ['name' => 'Peugeot'],
            ['name' => 'Porsche'],
            ['name' => 'Ram'],
            ['name' => 'Renault'],
            ['name' => 'Rolls-Royce'],
            ['name' => 'Saab'],
            ['name' => 'Subaru'],
            ['name' => 'Suzuki'],
            ['name' => 'Tesla'],
            ['name' => 'Toyota'],
            ['name' => 'Volkswagen'],
            ['name' => 'Volvo'],
        ];

        DB::table('car_brands')->insert($car_brands);
    }
}
