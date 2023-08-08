<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('car_ads', function (Blueprint $table) {
            $table->id('id');
            $table->foreignId('user_id');
            $table->foreignId('car_brand_id');
            $table->foreignId('car_type_id');
            $table->foreignId('fuel_type_id');
            $table->string('title', 100);
            $table->unsignedDecimal('price', 10, 2);
            $table->year('year');
            $table->integer('mileage');
            $table->string('car_condition');
            $table->string('description');
            $table->string('contacts');
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('car_brand_id')->references('id')->on('car_brands');
            $table->foreign('car_type_id')->references('id')->on('car_types');
            $table->foreign('fuel_type_id')->references('id')->on('fuel_types');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('car_ads');
    }
};
