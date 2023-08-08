<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FuelType extends Model
{
    use HasFactory;

    protected $table = 'fuel_types';
    protected $fillable = ['name'];

    public function carads()
    {
        return $this->hasMany(CarAd::class);
    }
}
