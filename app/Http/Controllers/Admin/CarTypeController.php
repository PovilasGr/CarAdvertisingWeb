<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CarType;

class CarTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $cartypes = CarType::paginate(10);
        return view('admin.cartypes.index', compact('cartypes'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.cartypes.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        CarType::create($request->all());
        return redirect('admin/cartypes')->with('success', 'Car Type added successfully.');

        $request->validate([
            'name' => 'required'
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $cartype = CarType::findOrFail($id);
        return view('admin.cartypes.show', compact('cartype'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $cartype = CarType::findOrFail($id);
        return view('admin.cartypes.form', compact('cartype'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $cartype = CarType::findOrFail($id);
        $cartype->update($request->all());
        return redirect('admin/cartypes')->with('success', 'Car Type updated successfully.');

        $request->validate([
            'name' => 'required'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $cartype = CarType::findOrFail($id);
        $cartype->delete();
        return redirect('admin/cartypes')->with('success', 'Car Type deleted successfully.');
    }
}
