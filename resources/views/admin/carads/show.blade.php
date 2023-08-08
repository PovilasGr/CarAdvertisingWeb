@extends('layouts.admin')

@section('title', 'Car Ads')

@section('content')
    <div class="card">
        <div class="card-header">
            <a href="{{ url('/admin/carads/'.$carad->id.'/edit') }}" class="btn btn-primary"><i
                    class="fas fa-edit"></i> Edit Car Ad</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <tbody>
                    <tr>
                        <td>Images</td>
                        <td>
                            @if ($carad->images)
                                @foreach (json_decode($carad->images) as $image)
                                    <a href="{{ asset('storage/' . $image) }}" target="_blank">
                                        <img src="{{ asset('storage/' . $image) }}" alt="Car image" width="200">
                                    </a>
                                @endforeach
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>User ID</td>
                        <td>{{ $carad->user->id }}</td>
                    </tr>
                    <tr>
                        <td>Seller name</td>
                        <td>{{ $carad->user->name }}</td>
                    </tr>
                    <tr>
                        <td>Brand</td>
                        <td>{{ $carad->carbrand->name }}</td>
                    </tr>
                    <tr>
                        <td>Type</td>
                        <td>{{ $carad->cartype->name }}</td>
                    </tr>
                    <tr>
                        <td>Fuel Type</td>
                        <td>{{ $carad->fueltype->name }}</td>
                    </tr>
                    <tr>
                        <td>Title</td>
                        <td>{{ $carad->title }}</td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td>{{ $carad->price }}</td>
                    </tr>
                    <tr>
                        <td>Year</td>
                        <td>{{ $carad->year }}</td>
                    </tr>
                    <tr>
                        <td>Mileage</td>
                        <td>{{ $carad->mileage }}</td>
                    </tr>
                    <tr>
                        <td>Condition</td>
                        <td>{{ $carad->car_condition }}</td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td>{{ $carad->description }}</td>
                    </tr>
                    <tr>
                        <td>contacts</td>
                        <td>{{ $carad->contacts }}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
