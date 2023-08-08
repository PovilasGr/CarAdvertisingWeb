@extends('layouts.admin')

@section('title', 'Car Ads')

@section('content')
    <div class="card">
        <div class="card-header">
            <h6 class="m-0 font-weight-bold text-primary">
                @if(isset($carad))
                    Edit existing Car Ad
                @else
                    Create a new Car Ad
                @endif
            </h6>
        </div>
        <div class="card-body">

             @if(isset($carad))
                {!! Form::model($carad, ['url' => ['admin/carads', $carad->id], 'method' => 'patch', 'enctype' => 'multipart/form-data']) !!}
            @else
                {!! Form::open(['url' => 'admin/carads', 'enctype' => 'multipart/form-data']) !!}
            @endif

            {!! Form::label('user_id', 'UserID: ', ['class' => 'col-sm-3']) !!}
                 <div class="col-sm-6">
                     {!! Form::text('user_id', null, ['class' => 'form-control', 'required' => 'required']) !!}
                     @error('title')
                     <div class="text-danger">{{ $message }}</div>
                     @enderror
                 </div>

            {!! Form::label('title', 'Title: ', ['class' => 'col-sm-3']) !!}
            <div class="col-sm-6">
                {!! Form::text('title', null, ['class' => 'form-control', 'required' => 'required']) !!}
                @error('title')
                <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>


            <div class="form-group">
                {!! Form::label('car_brand_id', 'Car Brand: ', ['class' => 'col-sm-3']) !!}
                <div class="col-sm-6">
                    {!! Form::select('car_brand_id', $carbrands, null, ['class' => 'select-field custom-select-field', 'style' => 'width: 200px; height: 35px;', 'required' => 'required']) !!}
                    @error('car_brand_id')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
            </div>
            <div class="form-group">
                {!! Form::label('car_type_id', 'Car Type: ', ['class' => 'col-sm-3']) !!}
                <div class="col-sm-6">
                    {!! Form::select('car_type_id', $cartypes, null, ['class' => 'select-field custom-select-field', 'style' => 'width: 200px; height: 35px;', 'required' => 'required']) !!}
                    @error('car_type_id')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
            </div>
            <div class="form-group">
                {!! Form::label('fuel_type_id', 'Fuel Type: ', ['class' => 'col-sm-3']) !!}
                <div class="col-sm-6">
                    {!! Form::select('fuel_type_id', $fueltypes, null, ['class' => 'select-field custom-select-field', 'style' => 'width: 200px; height: 35px;', 'required' => 'required']) !!}
                    @error('fuel_type_id')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
            </div>
            <div class="form-group">
                {!! Form::label('year', 'Year: ', ['class' => 'col-sm-3']) !!}
                <div class="col-sm-6">
                    {!! Form::select('year', $years, null, ['class' => 'select-field custom-select-field', 'style' => 'width: 200px; height: 35px;', 'required' => 'required']) !!}
                    @error('year')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
            </div>
            <div class="form-group">
                {!! Form::label('description', 'Description: ', ['class' => 'col-sm-3']) !!}
                <div class="col-sm-6">
                    {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
                    @error('description')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
            </div>
            <div class="form-group">
                {!! Form::label('mileage', 'Mileage: ', ['class' => 'col-sm-3']) !!}
                <div class="col-sm-6 input-group">
                    {!! Form::number('mileage', null, ['class' => 'form-control', 'maxlength' => '10', 'required' => 'required']) !!}
                    @error('mileage')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                    <div class="input-group-append">
                        <span class="input-group-text">km</span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                {!! Form::label('car_condition', 'Condition: ', ['class' => 'col-sm-3']) !!}
                <div class="col-sm-6">
                    {!! Form::select('car_condition', $carconditions, null, ['class' => 'select-field custom-select-field', 'style' => 'width: 200px; height: 35px;', 'required' => 'required']) !!}
                    @error('car_condition')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
            </div>
            <div class="form-group">
                {!! Form::label('price', 'Price: ', ['class' => 'col-sm-3']) !!}
                <div class="col-sm-6 input-group">
                    {!! Form::number('price', null, ['class' => 'form-control', 'step' => '1','maxlength' => '10', 'required' => 'required']) !!}
                    @error('price')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                    <div class="input-group-append">
                        <span class="input-group-text">€</span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                {!! Form::label('contacts', 'Contact Info: ', ['class' => 'col-sm-3']) !!}
                <div class="col-sm-6">
                    {!! Form::text('contacts', $contacts ?? null, ['class' => 'form-control', 'required' => 'required']) !!}
                    @error('contacts')
                    <div class="text-danger">{{ $message }}</div>
                    @enderror
                </div>
            </div>

                 @foreach (json_decode($carad->images ?? '[]') as $index => $image)
                     <div class="image">
                         <a href="{{ asset('storage/' . $image) }}" target="_blank">
                             <img src="{{ asset('storage/' . $image) }}" alt="Image {{ $index }}" style="width: 200px;">
                         </a>
                         <input type="checkbox" name="delete_images[{{ $index }}]" value="1"> Remove image
                     </div>
                 @endforeach

                 <div class="form-group">
                     {!! Form::label('images[]', 'Upload Images:', ['class' => 'col-sm-3']) !!}
                     <div class="col-sm-6">
                         {!! Form::file('images[]', ['multiple' => true, 'class' => 'form-control-file']) !!}
                         @error('images')
                         <div class="text-danger">{{ $message }}</div>
                         @enderror
                     </div>
                 </div>


            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-3">
                    {!! Form::submit('CREATE', ['class' => 'btn btn-primary form-control']) !!}
                </div>
            </div>
            {!! Form::close() !!}
        </div>
        </div>


    </div>
@endsection
