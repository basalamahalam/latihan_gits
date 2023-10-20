@extends('layouts.main')

@section('container')
<h1 class="mb-3">Post Categories</h1>

<div class="container">
    <div class="row">

        @foreach($categories as $c)
        <div class="col-md-4">
            <a href="/blog?category={{ $c->slug }}">
            <div class="card text-bg-dark">
                <img src="https://source.unsplash.com/500x500?{{ $c->name }}" class="card-img" alt="{{ $c->name }}">
                <div class="card-img-overlay">
                  <h5 class="card-title fs-3">{{ $c->name }}</h5>
                </div>
              </div>
            </a>
        </div>
        @endforeach
    </div>
</div>
@endsection