<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CarBrand;

class CarBrandController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $carbrands = CarBrand::paginate(10);
        return view('admin.carbrands.index', compact('carbrands'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.carbrands.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        CarBrand::create($request->all());
        return redirect('admin/carbrands')->with('success', 'Car Brand added successfully.');

        $request->validate([
            'name' => 'required'
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $carbrand = CarBrand::findOrFail($id);
        return view('admin.carbrands.show', compact('carbrand'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $carbrand = CarBrand::findOrFail($id);
        return view('admin.carbrands.form', compact('carbrand'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $carbrand = CarBrand::findOrFail($id);
        $carbrand->update($request->all());
        return redirect('admin/carbrands')->with('success', 'Car Brand updated successfully.');

        $request->validate([
            'name' => 'required'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $carbrand = CarBrand::findOrFail($id);
        $carbrand->delete();
        return redirect('admin/carbrands')->with('success', 'Car Brand deleted successfully.');
    }
}
