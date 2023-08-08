<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\CarAd;
use App\Models\CarBrand;
use App\Models\CarType;
use App\Models\FuelType;
use App\Models\User;
use Faker\Factory as Faker;

class CarAdSeeder extends Seeder
{
    public function run()
    {
        $carBrands = CarBrand::all();
        $carTypes = CarType::all();
        $fuelTypes = FuelType::all();
        $users = User::all();

        $faker = Faker::create();

        for ($i = 0; $i < 100; $i++) {
            $carAd = new CarAd([
                'user_id' => 4,
                'car_brand_id' => $carBrands->random()->id,
                'car_type_id' => $carTypes->random()->id,
                'fuel_type_id' => $fuelTypes->random()->id,
                'title' => 'Car Ad ' . ($i + 1),
                'price' => rand(500, 50000),
                'year' => rand(1990, 2023),
                'mileage' => rand(10000, 250000),
                'car_condition' => ['New', 'Used'][rand(0, 1)],
                'description' => $faker->paragraph(),
                'contacts' => $faker->phoneNumber()
            ]);
            $carAd->save();
        }
    }
}
