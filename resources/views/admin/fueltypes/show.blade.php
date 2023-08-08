@extends('layouts.admin')

@section('title', 'Fuel Types')

@section('content')
    <div class="card">
        <div class="card-header">
            <a href="{{ url('/admin/fueltypes/'.$fueltype->id.'/edit') }}" class="btn btn-primary"><i
                    class="fas fa-edit"></i> Edit Fuel Type</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <tbody>
                    <tr>
                        <td>ID</td>
                        <td>{{ $fueltype->id }}</td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>{{ $fueltype->name }}</td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
