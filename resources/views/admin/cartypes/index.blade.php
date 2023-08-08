@extends('layouts.admin')

@section('title', 'Car Types')

@section('content')
    <div class="card">
        <div class="card-header">
            <a href="{{ url('admin/cartypes/create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Add Car
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
                    @foreach($cartypes as $cartype)
                        <tr>
                            <td>{{ $cartype->id }}</td>
                            <td>{{ $cartype->name }}</td>

                            <td>
                                <a href="{{ url('admin/cartypes/'.$cartype->id.'/edit') }}"
                                   class="btn btn-primary btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                <a href="{{ url('admin/cartypes/'.$cartype->id) }}" class="btn btn-success btn-sm"><i
                                        class="fas fa-eye"></i> View</a>
                                {!! Form::open(['method'=>'DELETE', 'url' => ['admin/cartypes', $cartype->id], 'style' => 'display:inline']) !!}
                                {!! Form::button('<i class="fas fa-trash-alt"></i> Delete', ['class' => 'btn btn-danger btn-sm', 'type' => 'submit', 'onclick' => "return confirm('Are you sure you want to delete this car ad?')"]) !!}
                                {!! Form::close() !!}
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                {{ $cartypes->links() }}
            </div>
        </div>
    </div>
@endsection
