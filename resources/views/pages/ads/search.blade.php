@extends('layouts.app')

@section('title', 'Car Advertisements')

@section('content')
    <div class="card">
        <div class="card-header">
            <a href="{{ url('carads/create') }}" class="btn btn-primary"> Create car ad</a>
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

            @if(session('message'))
                <div class="alert alert-danger">{{ session('message') }}</div>
            @endif

            <button id="show-filters">Show Advanced Search </button>

            <form id="filters" action="{{ url('filter') }}" method="GET" style="display: none; margin-bottom: 20px; ">

                <input type="hidden" name="search" value="">

                <br>
                <label for="search" style="font-weight: bold;">Search:</label>
                <br>

                <input type="search" name="search" id="search" value="{{ Request::get('search') }}" placeholder="Search..." style="height: 40px; width: 600px " size="30">

                <br><br>

                <div class="form-group" style="display: inline-block;">
                    <label for="sort-by">Sort By:</label>
                    <select name="sort_by" id="sort-by">
                        <option value="0">Sort By..</option>
                        <option value="price_asc" {{ $sortBy === 'price_asc' ? 'selected' : '' }}>Price: Low to High</option>
                        <option value="price_desc" {{ $sortBy === 'price_desc' ? 'selected' : '' }}>Price: High to Low</option>
                        <option value="created_asc" {{ $sortBy === 'created_asc' ? 'selected' : '' }}>Published: Oldest to Newest</option>
                        <option value="created_desc" {{ $sortBy === 'created_desc' ? 'selected' : '' }}>Published: Newest to Oldest</option>
                    </select>
                </div>

                <br>

                <div class="form-group" style="display: inline-block;">
                    <label for="brand-select">Select Brand:</label>
                    <select name="brand[]" id="brand-select" class="select-field" multiple>
                        @foreach($carbrands as $id => $name)
                            <option value="{{ $id }}" {{ in_array($id, request('brand', [])) ? 'selected' : '' }}>{{ $name }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group" style="display: inline-block;">
                    <label for="type-select">Select Type:</label>
                    <select name="type[]" id="type-select" class="select-field" multiple>
                        @foreach($cartypes as $id => $name)
                            <option value="{{ $id }}" {{ in_array($id, request('type', [])) ? 'selected' : '' }}>{{ $name }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group" style="display: inline-block;">
                    <label for="fueltype-select">Select Fuel Type:</label>
                    <select name="fueltype[]" id="fueltype-select" class="select-field" multiple>
                        @foreach($fueltypes as $id => $name)
                            <option value="{{ $id }}" {{ in_array($id, request('fueltype', [])) ? 'selected' : '' }}>{{ $name }}</option>
                        @endforeach
                    </select>
                </div>


                <div class="form-group" style="display: inline-block;">
                    <label for="year-from-select">Select Year From:</label>
                    <select name="year_from[]" id="year-from-select" class="select-field" size="2">
                        @foreach($years as $id => $name)
                            <option value="{{ $id }}" {{ (is_array(request('year_from')) && in_array($id, request('year_from'))) ? 'selected' : '' }}>{{ $name }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group" style="display: inline-block;">
                    <label for="year-to-select">Select Year To:</label>
                    <select name="year_to[]" id="year-to-select" class="select-field" size="2">
                        @foreach($years as $id => $name)
                            <option value="{{ $id }}" {{ (is_array(request('year_to')) && in_array($id, request('year_to'))) ? 'selected' : '' }}>{{ $name }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group" style="display: inline-block;">
                    <label for="condition-select">Select Condition:</label>
                    <select name="condition[]" id="condition-select" class="select-field" multiple>
                        @foreach($carconditions as $id => $name)
                            <option value="{{ $id }}" {{ in_array($id, request('condition', [])) ? 'selected' : '' }}>{{ $name }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group" style="display: inline-block;">
                    <label for="price-from-select">Select Price From:</label>
                    <select name="price_from[]" id="price-from-select" class="select-field" size="2">
                        @foreach($prices as $price)
                            <option value="{{ $price }}" {{ in_array($price, is_array(request('price_from')) ? request('price_from') : explode(',', request('price_from'))) ? 'selected' : '' }}>{{ $price }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group" style="display: inline-block;">
                    <label for="price-to-select">Select Price To:</label>
                    <select name="price_to[]" id="price-to-select" class="select-field" size="2">
                        @foreach($prices as $price)
                            <option value="{{ $price }}" {{ in_array($price, is_array(request('price_to')) ? request('price_to') : explode(',', request('price_to'))) ? 'selected' : '' }}>{{ $price }}</option>
                        @endforeach
                    </select>
                </div>

                <br>

                <button type="submit" style="margin-top: 10px;">Search/Filter</button>
                <button type="submit" id="reset-filters" style="margin-top: 10px; margin-left: 10px;" onclick="resetFilters()">Reset</button>
            </form>

            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>Brand</th>
                        <th>Type</th>
                        <th>Fuel</th>
                        <th>Year</th>
                        <th>Price</th>
                        <th>Mileage</th>
                        <th>Condition</th>

                    </tr>
                    </thead>
                    <tbody>
                    @foreach($carads as $carad)
                        <tr>
                            <td>{{ $carad->carbrand->name }}</td>
                            <td>{{ $carad->cartype->name }}</td>
                            <td>{{ $carad->fueltype->name }}</td>
                            <td>{{ $carad->year }}</td>
                            <td>{{ $carad->price }}</td>
                            <td>{{ $carad->mileage }}</td>
                            <td>{{ $carad->car_condition }}</td>
                            <td>
                                @if (Auth::check() && $carad->user_id == auth()->user()->id)
                                    <a href="{{ url('carads/'.$carad->id.'/edit') }}" class="btn btn-primary btn-sm"> Edit</a>
                                @endif
                                <a href="{{ url('carads/'.$carad->id) }}" class="btn btn-success btn-sm">View</a>
                                @if (Auth::check() && $carad->user_id == auth()->user()->id)
                                    {!! Form::open(['method'=>'DELETE', 'url' => ['carads', $carad->id], 'style' => 'display:inline']) !!}
                                    {!! Form::open(['method'=>'DELETE', 'url' => ['carads', $carad->id], 'style' => 'display:inline']) !!}
                                    {!! Form::button(' Delete', ['class' => 'btn btn-danger btn-sm', 'type' => 'submit', 'onclick' => "return confirm('Are you sure you want to delete this car ad?')"]) !!}
                                    {!! Form::close() !!}
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



    <script>
        const showFiltersButton = document.getElementById('show-filters');
        const filtersForm = document.getElementById('filters');

        filtersForm.style.display = 'none';

        showFiltersButton.addEventListener('click', () => {
            filtersForm.style.display = 'block';
            showFiltersButton.style.display = 'none';

            if (!document.getElementById('hide-filters')) {
                const hideFiltersButton = document.createElement('button');
                hideFiltersButton.innerText = 'Hide Filters';
                hideFiltersButton.id = 'hide-filters';
                showFiltersButton.after(hideFiltersButton);

                hideFiltersButton.addEventListener('click', () => {
                    filtersForm.style.display = 'none';
                    showFiltersButton.style.display = 'block';
                    hideFiltersButton.style.display = 'none';
                    hideFiltersButton.remove();
                });
            }
        });

        document.getElementById('reset-filters').addEventListener('click', function() {
            document.getElementById('search').value = '';
        });

        function resetFilters() {
            document.querySelectorAll('select').forEach(function(select) {
                select.querySelectorAll('option').forEach(function(option) {
                    option.removeAttribute('selected');
                    option.style.backgroundColor = 'white';

                });
            });
            document.getElementById('filters').reset();
        }

        window.onload = function() {
            var showFiltersButton = document.getElementById('show-filters');
            showFiltersButton.click();
        }

    </script>


@endsection
