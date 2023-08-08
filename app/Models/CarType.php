<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CarType extends Model
{
    use HasFactory;

    protected $table = 'car_types';
    protected $fillable = ['name'];

    public function carads()
    {
        return $this->hasMany(CarAd::class);
    }
}
