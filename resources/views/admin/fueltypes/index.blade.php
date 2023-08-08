@extends('layouts.admin')

@section('title', 'Fuel Types')

@section('content')
    <div class="card">
        <div class="card-header">
            <a href="{{ url('admin/fueltypes/create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Add Car
                Type</a>
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
                        <th>Name</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($fueltypes as $fueltype)
                        <tr>
                            <td>{{ $fueltype->id }}</td>
                            <td>{{ $fueltype->name }}</td>

                            <td>
                                <a href="{{ url('admin/fueltypes/'.$fueltype->id.'/edit') }}"
                                   class="btn btn-primary btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                <a href="{{ url('admin/fueltypes/'.$fueltype->id) }}" class="btn btn-success btn-sm"><i
                                        class="fas fa-eye"></i> View</a>
                                {!! Form::open(['method'=>'DELETE', 'url' => ['admin/fueltypes', $fueltype->id], 'style' => 'display:inline']) !!}
                                {!! Form::button('<i class="fas fa-trash-alt"></i> Delete', ['class' => 'btn btn-danger btn-sm', 'type' => 'submit', 'onclick' => "return confirm('Are you sure you want to delete this car ad?')"]) !!}
                                {!! Form::close() !!}
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                {{ $fueltypes->links() }}
            </div>
        </div>
    </div>
@endsection
