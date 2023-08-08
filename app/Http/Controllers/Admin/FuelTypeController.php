<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\FuelType;

class FuelTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $fueltypes = FuelType::paginate(10);
        return view('admin.fueltypes.index', compact('fueltypes'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.fueltypes.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        FuelType::create($request->all());
        return redirect('admin/fueltypes')->with('success', 'Fuel Type added successfully.');

        $request->validate([
            'name' => 'required'
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $fueltype = FuelType::findOrFail($id);
        return view('admin.fueltypes.show', compact('fueltype'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $fueltype = FuelType::findOrFail($id);
        return view('admin.fueltypes.form', compact('fueltype'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $fueltype = FuelType::findOrFail($id);
        $fueltype->update($request->all());
        return redirect('admin/fueltypes')->with('success', 'Fuel Type updated successfully.');

        $request->validate([
            'name' => 'required'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $fueltype = FuelType::findOrFail($id);
        $fueltype->delete();
        return redirect('admin/fueltypes')->with('success', 'Fuel Type deleted successfully.');
    }
}
