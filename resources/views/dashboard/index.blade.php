@extends('dashboard.layouts.main')
@section('container')
<h2 class="mt-3">Welcome back! {{ auth()->user()->username }}</h2>
@endsection