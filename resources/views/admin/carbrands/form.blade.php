@extends('layouts.admin')

@section('title', 'Car Brands')

@section('content')
    <div class="card">
        <div class="card-header">
            <h6 class="m-0 font-weight-bold text-primary">
                @if(isset($carbrand))
                    Edit existing Car Brand
                @else
                    Create a new Car Brand
                @endif
            </h6>
        </div>
        <div class="card-body">

            @if(isset($carbrand))
                {!! Form::model($carbrand, ['url' => ['admin/carbrands', $carbrand->id], 'method' => 'patch']) !!}
            @else
                {!! Form::open(['url' => 'admin/carbrands']) !!}
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
