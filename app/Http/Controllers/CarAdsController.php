<?php

namespace App\Http\Controllers;

use App\Models\CarAd;
use App\Models\CarBrand;
use App\Models\CarType;
use App\Models\FuelType;
use http\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
class CarAdsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $carbrands = CarBrand::pluck('name', 'id');
        $carbrands = $carbrands->all();

        $cartypes = CarType::pluck('name', 'id');
        $cartypes->all();

        $fueltypes = FuelType::pluck('name', 'id');
        $fueltypes->all();

        $years = array_combine(range(date("Y"), 1950), range(date("Y"), 1950));

        $carconditions = collect([
            'new' => 'New',
            'used' => 'Used',
            'damaged' => 'Damaged',
        ]);

        $prices = [150, 300, 500, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000, 6000, 7000, 8000, 9000, 10000, 11000, 12000, 13000, 14000, 15000, 17500, 20000, 22500, 25000, 27500, 30000, 35000, 40000, 45000, 50000, 60000];

        $carads = CarAd::orderBy('updated_at', 'desc')->paginate(10);

        return view('pages.ads.index', compact('carads', 'carbrands', 'cartypes', 'fueltypes', 'years', 'carconditions', 'prices'));
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

        return view('pages.ads.form', compact('carbrands', 'cartypes', 'fueltypes', 'years', 'user_id', 'carconditions', 'contacts'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $request->validate([
            'car_brand_id' => 'required|exists:car_brands,id',
            'images.*' => 'image|mimes:jpeg,png,jpg|max:10240',
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
            'images.*.mimes' => 'Wrong file type. Please only upload jpeg, png, jpg',
            'images.*.max' => 'Image is larger than 10MB',
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

        return redirect('carads')->with('success', 'Car Ad created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $carad = CarAd::findOrFail($id);
        return view('pages.ads.show', compact('carad'));
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


        if (Auth::check() && $carad->canBeUpdatedBy(auth()->user())) {
            $user = auth()->user();
            $user_id = $user->id;
        } else {
            abort(403, 'Unauthorized action.');;
        }

        $images = $carad->images;

        return view('pages.ads.form', compact('carad', 'carbrands', 'cartypes', 'fueltypes', 'years', 'user_id', 'carconditions', 'images'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $carad = CarAd::findOrFail($id);

        $request->validate([
            'car_brand_id' => 'required|exists:car_brands,id',
            'images.*' => 'image|mimes:jpeg,png,jpg|max:10240',
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
            'images.*.mimes' => 'Wrong file type. Please only upload jpeg, png, jpg',
            'images.*.max' => 'Image is larger than 10MB',
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

        return redirect('carads')->with('success', 'Car Ad updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {

        $carad = CarAd::findOrFail($id);

        if (Auth::check() && !$carad->canBeUpdatedBy(auth()->user())) {
            abort(403, 'Unauthorized action.');
        }



        $carad->delete();
        return redirect('carads')->with('success', 'Car ad deleted successfully.');
    }

    public function myListings()
    {
        $user = auth()->user();
        $carads = $user->carAds()->paginate(10);

        return view('pages.ads.mylistings', compact('carads'));
    }

    public function filter(Request $request)
    {
        session()->put('show_filters', true);

        $carads = CarAd::query();

        $carbrands = CarBrand::pluck('name', 'id');
        $carbrands = $carbrands->all();

        $cartypes = CarType::pluck('name', 'id');
        $cartypes->all();

        $fueltypes = FuelType::pluck('name', 'id');
        $fueltypes->all();

        $years = array_combine(range(date("Y"), 1950), range(date("Y"), 1950));

        $prices = [150, 300, 500, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000, 6000, 7000, 8000, 9000, 10000, 11000, 12000, 13000, 14000, 15000, 17500, 20000, 22500, 25000, 27500, 30000, 35000, 40000, 45000, 50000, 60000];

        $carconditions = collect([
            'new' => 'New',
            'used' => 'Used',
            'damaged' => 'Damaged',
        ]);

        $sortBy = $request->input('sort_by', 'created_desc');

        if ($request->has('brand')) {
            $carads->whereIn('car_brand_id', $request->brand);
        }

        if ($request->type) {
            $carads->whereIn('car_type_id', $request->type);
        }

        if ($request->fueltype) {
            $carads->whereIn('fuel_type_id', $request->fueltype);
        }

        if ($request->year_from) {
            $carads->where('year', '>=', $request->year_from);
        }

        if ($request->year_to) {
            $carads->where('year', '<=', $request->year_to);
        }

        if ($request->condition) {
            $carads->whereIn('car_condition', $request->condition);
        }

        if ($request->price_from) {
            $carads->where('price', '>=', $request->price_from);
        }

        if ($request->price_to) {
            $carads->where('price', '<=', $request->price_to);
        }

        if ($request->has('search')) {
            $keywords = explode(' ', $request->search);
            $carads = $carads->where(function ($query) use ($keywords) {
                foreach ($keywords as $keyword) {
                    $query->where(function ($subquery) use ($keyword) {
                        $subquery->where('title', 'like', '%'.$keyword.'%')
                            ->orWhere('year', 'like', '%'.$keyword.'%')
                            ->orWhere('car_condition', 'like', '%'.$keyword.'%')
                            ->orWhere('description', 'like', '%'.$keyword.'%')
                            ->orWhereHas('carBrand', function($query) use ($keyword) {
                                $query->where('name', 'like', '%'.$keyword.'%');
                            })
                            ->orWhereHas('carType', function($query) use ($keyword) {
                                $query->where('name', 'like', '%'.$keyword.'%');
                            })
                            ->orWhereHas('fuelType', function($query) use ($keyword) {
                                $query->where('name', 'like', '%'.$keyword.'%');
                            });
                    });
                }
            });
        }

        if ($carads->count() < 1) {
            return redirect('/carads')->with('message', 'Sorry, no matches found.');
        }

        switch ($request->input('sort_by')) {
            case 'price_asc':
                $carads->orderBy('price', 'asc');
                break;
            case 'price_desc':
                $carads->orderBy('price', 'desc');
                break;
            case 'created_asc':
                $carads->orderBy('created_at', 'asc');
                break;
            case 'created_desc':
                $carads->orderBy('created_at', 'desc');
                break;
            case '0':
                $carads->orderBy('updated_at', 'desc');
                break;
        }

        $carads = $carads->paginate(10);

        return view('pages.ads.search', compact('carads', 'carbrands', 'cartypes', 'fueltypes', 'years', 'carconditions', 'prices', 'sortBy'));
    }

}
