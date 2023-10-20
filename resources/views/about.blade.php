@extends('layouts.main')

@section('container')
    <h1>Halaman About</h1>
    <h3>{{ $about["name"] }}</h3>
    <p>{{ $about["email"] }}</p>
@endsection