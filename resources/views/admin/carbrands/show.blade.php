@extends('layouts.admin')

@section('title', 'Car Brands')

@section('content')
    <div class="card">
        <div class="card-header">
            <a href="{{ url('/admin/carbrands/'.$carbrand->id.'/edit') }}" class="btn btn-primary"><i
                    class="fas fa-edit"></i> Edit Car Brand</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <tbody>
                    <tr>
                        <td>ID</td>
                        <td>{{ $carbrand->id }}</td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>{{ $carbrand->name }}</td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
