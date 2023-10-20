@extends('layouts.main')

@section('container')
<h3 class="mb-3">{{ $category }}</h3>
    @foreach ($posts as $p)
    <article class="mb-5">
        <h2><a href="/posts/{{ $p->slug }}">{{ $p->title }}</h2></a>
        <p>By {{ $p->user->name }} in <a href="/categories/{{ $p->category->slug }}" class="text-decoration-none">{{ $p->category->name }}</a></p>
        <p>{{ $p->excerpt }}</p>
    </article>
    @endforeach
@endsection