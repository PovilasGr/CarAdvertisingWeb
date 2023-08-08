@extends('layouts.app')

@section('title', 'Car Advertisements')

@section('content')
    <div class="card">
        <div class="card-header">
            <a > MY ACTIVE LISTINGS</a>
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
                        <th>User</th>
                        <th>Brand</th>
                        <th>Type</th>
                        <th>Fuel</th>
                        <th>Title</th>
                        <th>Price</th>
                        <th>Year</th>
                        <th>Mileage</th>
                        <th>Condition</th>
                        <th>Description</th>
                        <th>Contacts</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($carads as $carad)
                        <tr>
                            <td>{{ $carad->user->name }}</td>
                            <td>{{ $carad->carbrand->name }}</td>
                            <td>{{ $carad->cartype->name }}</td>
                            <td>{{ $carad->fueltype->name }}</td>
                            <td>{{ $carad->title }}</td>
                            <td>{{ $carad->price }}</td>
                            <td>{{ $carad->year }}</td>
                            <td>{{ $carad->mileage }}</td>
                            <td>{{ $carad->car_condition }}</td>
                            <td>{{ $carad->description }}</td>
                            <td>{{ $carad->contacts }}</td>
                            <td>
                                @if (Auth::check() && $carad->user_id == auth()->user()->id)
                                    <a href="{{ url('carads/'.$carad->id.'/edit') }}" class="btn btn-primary btn-sm"> Edit</a>
                                @endif
                                <a href="{{ url('carads/'.$carad->id) }}" class="btn btn-success btn-sm">View</a>
                                @if (Auth::check() && $carad->user_id == auth()->user()->id)
                                    {!! Form::open(['method'=>'DELETE', 'url' => ['carads', $carad->id], 'style' => 'display:inline']) !!}
                                    {!! Form::button(' Delete', ['class' => 'btn btn-danger btn-sm', 'type' => 'submit', 'onclick' => "return confirm('Are you sure you want to delete this car ad?')"]) !!}
                                    {!! Form::close() !!}
                                @endif
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
                {{ $carads->links() }}
        </div>
    </div>
@endsection
