@extends('layouts.admin')

@section('title', 'Car Ads')

@section('content')
    <div class="card">
        <div class="card-header">
            <a href="{{ url('admin/carads/create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Add Car Ad</a>
        </div>
        <div class="card-body">
            @if(Session::has('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ Session::get('success') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                    @php
                        Session::forget('success');
                    @endphp
                </div>
            @endif

            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Seller Name</th>
                        <th>Title</th>
                        <th>Brand</th>
                        <th>Type</th>
                        <th>Fuel Type</th>
                        <th>Price</th>
                        <th>Year</th>
                        <th>Mileage</th>
                        <th>Condition</th>
                        <th>Description</th>
                        <th>contacts</th>

                    </tr>
                    </thead>
                    <tbody>
                    @foreach($carads as $carad)
                    <tr>
                        <td>{{ $carad->id }}</td>
                        <td>{{ $carad->user->name }}</td>
                        <td>{{ $carad->title }}</td>
                        <td>{{ $carad->carbrand->name }}</td>
                        <td>{{ $carad->cartype->name }}</td>
                        <td>{{ $carad->fueltype->name }}</td>
                        <td>{{ $carad->price }}</td>
                        <td>{{ $carad->year }}</td>
                        <td>{{ $carad->mileage }}</td>
                        <td>{{ $carad->car_condition }}</td>
                        <td>{{ $carad->description }}</td>
                        <td>{{ $carad->contacts }}</td>

                        <td>
                            <a href="{{ url('admin/carads/'.$carad->id.'/edit') }}" class="btn btn-primary btn-sm"><i class="fas fa-edit"></i> Edit</a>
                            <a href="{{ url('admin/carads/'.$carad->id) }}" class="btn btn-success btn-sm"><i class="fas fa-eye"></i> View</a>
                            {!! Form::open(['method'=>'DELETE', 'url' => ['admin/carads', $carad->id], 'style' => 'display:inline']) !!}
                            {!! Form::button('<i class="fas fa-trash-alt"></i> Delete', ['class' => 'btn btn-danger btn-sm', 'type' => 'submit', 'onclick' => "return confirm('Are you sure you want to delete this car ad?')"]) !!}
                            {!! Form::close() !!}
                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
                {{ $carads->links() }}
            </div>
        </div>
    </div>
@endsection
