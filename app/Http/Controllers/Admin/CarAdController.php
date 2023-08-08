<?php

namespace App\Http\Controllers\Admin;

use App\Models\CarAd;
use App\Models\CarBrand;
use App\Models\CarType;
use App\Models\FuelType;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class CarAdController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $carads = CarAd::orderBy('updated_at', 'desc')->paginate(10);

        return view('admin.carads.index', compact('carads'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $carbrands = CarBrand::pluck('name', 'id');
        $carbrands->prepend('---Please select---', 0);
        $carbrands->all();

        $cartypes = CarType::pluck('name', 'id');
        $cartypes->prepend('---Please select---', 0);
        $cartypes->all();

        $fueltypes = FuelType::pluck('name', 'id');
        $fueltypes->prepend('---Please select---', 0);
        $fueltypes->all();

        $years = array_combine(range(date("Y"), 1950), range(date("Y"), 1950));
        $years = array('0' => '---Please select---') + $years;

        $carconditions = collect([
            'new' => 'New',
            'used' => 'Used',
            'damaged' => 'Damaged',
        ]);
        $carconditions->prepend('---Please select---', 0);

        $user = auth()->user();
        $user_id = $user->id;

        $contacts = null;
        if ($user->hasContacts()) {
            $contacts = $user->contacts;
        }

        return view('admin.carads.form', compact('carbrands', 'cartypes', 'fueltypes', 'years', 'user_id', 'carconditions', 'contacts'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $request->validate([
            'car_brand_id' => 'required|exists:car_brands,id',
            'car_type_id' => 'required|exists:car_types,id',
            'fuel_type_id' => 'required|exists:fuel_types,id',
            'title' => 'required|max:100',
            'price' => 'required|numeric|min:0',
            'year' => 'required|integer|min:1950|max:'.(date('Y')+1),
            'mileage' => 'required|integer|min:0',
            'car_condition' => 'required|in:new,used,damaged',
            'description' => 'required',
            'contacts' => 'required',
        ], [
            'car_brand_id.required' => 'The car brand field is required.',
            'car_brand_id.exists' => 'The selected car brand is invalid.',
            'car_type_id.required' => 'The car type field is required.',
            'car_type_id.exists' => 'The selected car type is invalid.',
            'fuel_type_id.required' => 'The fuel type field is required.',
            'fuel_type_id.exists' => 'The selected fuel type is invalid.',
            'title.required' => 'The title field is required.',
            'title.max' => 'The title may not be greater than :max characters.',
            'price.required' => 'The price field is required.',
            'price.numeric' => 'The price must be a number.',
            'price.min' => 'The price must be at least :min.',
            'year.required' => 'The year field is required.',
            'year.integer' => 'The year must be an integer.',
            'year.min' => 'The year must be at least :min.',
            'year.max' => 'The year may not be greater than :max.',
            'mileage.required' => 'The mileage field is required.',
            'mileage.integer' => 'The mileage must be an integer.',
            'mileage.min' => 'The mileage must be at least :min.',
            'car_condition.required' => 'The car condition field is required.',
            'car_condition.in' => 'The selected car condition is invalid.',
            'description.required' => 'The description field is required.',
            'contacts.required' => 'The contacts field is required.',
        ]);

        $images = [];

        if ($request->hasFile('images')) {

            foreach ($request->file('images') as $image) {
                $path = $image->store('car_ads', 'public');
                $images[] = $path;
            }

            $request->merge(['image' => json_encode($images)]);
        }

        $carad = new CarAd($request->except('images'));
        $carad->images = json_encode($images);
        $carad->save();

        return redirect('admin/carads')->with('success', 'Car Ad created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $carad = CarAd::findOrFail($id);
        return view('admin.carads.show', compact('carad'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $carad = CarAd::findOrFail($id);

        $carbrands = CarBrand::pluck('name', 'id');
        $carbrands->prepend('---Please select---', 0);
        $carbrands->all();

        $cartypes = CarType::pluck('name', 'id');
        $cartypes->prepend('---Please select---', 0);
        $cartypes->all();

        $fueltypes = FuelType::pluck('name', 'id');
        $fueltypes->prepend('---Please select---', 0);
        $fueltypes->all();

        $years = array_combine(range(date("Y"), 1950), range(date("Y"), 1950));
        $years = array('0' => '---Please select---') + $years;

        $carconditions = collect([
            'new' => 'New',
            'used' => 'Used',
            'damaged' => 'Damaged',
        ]);
        $carconditions->prepend('---Please select---', 0);

        $user_id = $carad->user_id;
        $images = $carad->images;

        return view('admin.carads.form', compact('carad', 'carbrands', 'cartypes', 'fueltypes', 'years', 'user_id', 'carconditions', 'images'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'car_brand_id' => 'required|exists:car_brands,id',
            'car_type_id' => 'required|exists:car_types,id',
            'fuel_type_id' => 'required|exists:fuel_types,id',
            'title' => 'required|max:100',
            'price' => 'required|numeric|min:0',
            'year' => 'required|integer|min:1950|max:'.(date('Y')+1),
            'mileage' => 'required|integer|min:0',
            'car_condition' => 'required|in:new,used,damaged',
            'description' => 'required',
            'contacts' => 'required',
        ], [
            'car_brand_id.required' => 'The car brand field is required.',
            'car_brand_id.exists' => 'The selected car brand is invalid.',
            'car_type_id.required' => 'The car type field is required.',
            'car_type_id.exists' => 'The selected car type is invalid.',
            'fuel_type_id.required' => 'The fuel type field is required.',
            'fuel_type_id.exists' => 'The selected fuel type is invalid.',
            'title.required' => 'The title field is required.',
            'title.max' => 'The title may not be greater than :max characters.',
            'price.required' => 'The price field is required.',
            'price.numeric' => 'The price must be a number.',
            'price.min' => 'The price must be at least :min.',
            'year.required' => 'The year field is required.',
            'year.integer' => 'The year must be an integer.',
            'year.min' => 'The year must be at least :min.',
            'year.max' => 'The year may not be greater than :max.',
            'mileage.required' => 'The mileage field is required.',
            'mileage.integer' => 'The mileage must be an integer.',
            'mileage.min' => 'The mileage must be at least :min.',
            'car_condition.required' => 'The car condition field is required.',
            'car_condition.in' => 'The selected car condition is invalid.',
            'description.required' => 'The description field is required.',
            'contacts.required' => 'The contacts field is required.',
        ]);

        $carad = CarAd::findOrFail($id);

        $uploadedImages = [];
        if ($request->hasFile('images')) {
            foreach ($request->file('images') as $image) {
                $path = $image->store('car_ads', 'public');
                $uploadedImages[] = $path;
            }
        }

        $currentImages = json_decode($carad->images);
        if ($request->has('delete_images')) {
            $deleteImages = $request->input('delete_images');
            foreach ($deleteImages as $index => $deleteImage) {
                if ($deleteImage && isset($currentImages[$index])) {
                    $imagePath = $currentImages[$index];
                    unset($currentImages[$index]);
                    Storage::delete('public/' . $imagePath);
                }
            }
        }

        $images = array_merge($currentImages, $uploadedImages);
        $carad->images = json_encode($images);

        $carad->update($request->except('images'));

        return redirect('admin/carads')->with('success', 'Car Ad updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $carad = CarAd::findOrFail($id);
        $carad->delete();
        return redirect('admin/carads')->with('success', 'Car Ad deleted successfully.');
    }
}
