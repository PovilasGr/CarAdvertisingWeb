@extends('layouts.admin')

@section('title', 'Fuel Types')

@section('content')
    <div class="card">
        <div class="card-header">
            <h6 class="m-0 font-weight-bold text-primary">
                @if(isset($fueltype))
                    Edit existing Fuel Type
                @else
                    Create a new Fuel Type
                @endif
            </h6>
        </div>
        <div class="card-body">

            @if(isset($fueltype))
                {!! Form::model($fueltype, ['url' => ['admin/fueltypes', $fueltype->id], 'method' => 'patch']) !!}
            @else
                {!! Form::open(['url' => 'admin/fueltypes']) !!}
            @endif

            <div class="form-group">
                {!! Form::label('name', 'Name: ', ['class' => 'col-sm-3']) !!}
                <div class="col-sm-6">
                    {!! Form::text('name', null, ['class' => 'form-control', 'required' => 'required']) !!}
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-3">
                    {!! Form::submit('Save', ['class' => 'btn btn-primary form-control']) !!}
                </div>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
@endsection
