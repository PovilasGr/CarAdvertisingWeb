@extends('layouts.admin')

@section('title', 'Car Types')

@section('content')
    <div class="card">
        <div class="card-header">
            <a href="{{ url('/admin/cartypes/'.$cartype->id.'/edit') }}" class="btn btn-primary"><i
                    class="fas fa-edit"></i> Edit Car Type</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <tbody>
                    <tr>
                        <td>ID</td>
                        <td>{{ $cartype->id }}</td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>{{ $cartype->name }}</td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
