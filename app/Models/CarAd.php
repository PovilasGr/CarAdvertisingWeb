<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CarAd extends Model
{
    use HasFactory;

    protected $table = 'car_ads';
    protected $fillable = ['user_id', 'car_brand_id', 'car_type_id', 'fuel_type_id', 'title', 'price', 'year', 'mileage', 'car_condition', 'description', 'contacts', 'images'];

    public function carbrand()
    {
        return $this->belongsTo(CarBrand::class, 'car_brand_id')->withDefault();
    }

    public function cartype()
    {
        return $this->belongsTo(CarType::class, 'car_type_id')->withDefault();
    }

    public function fueltype()
    {
        return $this->belongsTo(FuelType::class, 'fuel_type_id')->withDefault();
    }

    public function user()
    {
            return $this->belongsTo(User::class)->withDefault();
    }
    public function canBeUpdatedBy(User $user): bool
    {
        return $user->id === $this->user_id;
    }

}
