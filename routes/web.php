<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('redirects', App\Http\Controllers\HomeController::class);
Route::group(['middleware' => ['role:admin']], function () {
    Route::get('/admin', function () {
        return view('admin.dashboard');
    });

    Route::resource('admin/carbrands', App\Http\Controllers\Admin\CarBrandController::class);
    Route::resource('admin/cartypes', App\Http\Controllers\Admin\CarTypeController::class);
    Route::resource('admin/fueltypes', App\Http\Controllers\Admin\FuelTypeController::class);
    Route::resource('admin/carads', App\Http\Controllers\Admin\CarAdController::class);
});

Route::group(['middleware' => ['role:admin']], function () {
    Route::resource('admin/roles', App\Http\Controllers\Admin\RolesController::class);
    Route::resource('admin/users', App\Http\Controllers\Admin\UsersController::class);
});

Route::get('/admin/users', [App\Http\Controllers\Admin\UsersController::class, 'index']);
Route::get('/admin/users/create', [App\Http\Controllers\Admin\UsersController::class, 'create']);
Route::post('/admin/users', [App\Http\Controllers\Admin\UsersController::class, 'store']);
Route::get('/admin/users/{id}', [App\Http\Controllers\Admin\UsersController::class, 'show']);
Route::get('/admin/users/{id}/edit', [App\Http\Controllers\Admin\UsersController::class, 'edit']);
Route::patch('/admin/users/{id}', [App\Http\Controllers\Admin\UsersController::class, 'update']);
Route::delete('/admin/users/{id}', [App\Http\Controllers\Admin\UsersController::class, 'destroy']);

Route::get('/admin/roles', [App\Http\Controllers\Admin\RolesController::class, 'index']);
Route::get('/admin/roles/create', [App\Http\Controllers\Admin\RolesController::class, 'create']);
Route::post('/admin/roles', [App\Http\Controllers\Admin\RolesController::class, 'store']);
Route::get('/admin/roles/{id}', [App\Http\Controllers\Admin\RolesController::class, 'show']);
Route::get('/admin/roles/{id}/edit', [App\Http\Controllers\Admin\RolesController::class, 'edit']);
Route::patch('/admin/roles/{id}', [App\Http\Controllers\Admin\RolesController::class, 'update']);
Route::delete('/admin/roles/{id}', [App\Http\Controllers\Admin\RolesController::class, 'destroy']);

###

Route::view('/', 'pages.home');
Route::view('/home', 'pages.home');
Route::view('/about', 'pages.about');
Route::view('/contacts', 'pages.contacts');
Route::view('/admin', 'admin.dashboard');

Route::get('/admin/carbrands', [App\Http\Controllers\Admin\CarBrandController::class, 'index']);
Route::get('/admin/carbrands/create', [App\Http\Controllers\Admin\CarBrandController::class, 'create']);
Route::post('/admin/carbrands', [App\Http\Controllers\Admin\CarBrandController::class, 'store']);
Route::get('/admin/carbrands/{id}/edit', [App\Http\Controllers\Admin\CarBrandController::class, 'edit']);
Route::patch('/admin/carbrands/{id}', [App\Http\Controllers\Admin\CarBrandController::class, 'update']);
Route::delete('/admin/carbrands/{id}', [App\Http\Controllers\Admin\CarBrandController::class, 'destroy']);

Route::get('/admin/cartypes', [App\Http\Controllers\Admin\CarTypeController::class, 'index']);
Route::get('/admin/cartypes/create', [App\Http\Controllers\Admin\CarTypeController::class, 'create']);
Route::post('/admin/cartypes', [App\Http\Controllers\Admin\CarTypeController::class, 'store']);
Route::get('/admin/cartypes/{id}/edit', [App\Http\Controllers\Admin\CarTypeController::class, 'edit']);
Route::patch('/admin/cartypes/{id}', [App\Http\Controllers\Admin\CarTypeController::class, 'update']);
Route::delete('/admin/cartypes/{id}', [App\Http\Controllers\Admin\CarTypeController::class, 'destroy']);

Route::get('/admin/fueltypes', [App\Http\Controllers\Admin\FuelTypeController::class, 'index']);
Route::get('/admin/fueltypes/create', [App\Http\Controllers\Admin\FuelTypeController::class, 'create']);
Route::post('/admin/fueltypes', [App\Http\Controllers\Admin\FuelTypeController::class, 'store']);
Route::get('/admin/fueltypes/{id}/edit', [App\Http\Controllers\Admin\FuelTypeController::class, 'edit']);
Route::patch('/admin/fueltypes/{id}', [App\Http\Controllers\Admin\FuelTypeController::class, 'update']);
Route::delete('/admin/fueltypes/{id}', [App\Http\Controllers\Admin\FuelTypeController::class, 'destroy']);

Route::get('/carads', [App\Http\Controllers\CarAdsController::class, 'index']);
Route::get('/carads/create', [App\Http\Controllers\CarAdsController::class, 'create']);
Route::post('/carads', [App\Http\Controllers\CarAdsController::class, 'store']);
Route::get('/carads/{id}', [App\Http\Controllers\CarAdsController::class, 'show']);
Route::get('/carads/{id}/edit', [App\Http\Controllers\CarAdsController::class, 'edit']);
Route::patch('/carads/{id}', [App\Http\Controllers\CarAdsController::class, 'update']);
Route::delete('/carads/{id}', [App\Http\Controllers\CarAdsController::class, 'destroy']);
Route::get('filter', [App\Http\Controllers\CarAdsController::class, 'filter']);

Route::patch('/profile/update', [App\Http\Controllers\ProfileController::class, 'update']);
Route::get('/profile', [App\Http\Controllers\ProfileController::class, 'edit'])->name('edit');

Route::get('/mylistings', [App\Http\Controllers\CarAdsController::class, 'myListings'])->middleware('auth');

Route::middleware(['auth.middleware'])->group(function () {
    Route::get('/carads/create', [App\Http\Controllers\CarAdsController::class, 'create'])->name('carads.create');
    Route::post('/carads', [App\Http\Controllers\CarAdsController::class, 'store'])->name('carads.store');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
