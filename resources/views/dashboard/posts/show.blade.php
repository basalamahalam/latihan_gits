@extends('dashboard.layouts.main')
@section('container')
<div class="container">
    <div class="row my-3    ">
        <div class="col-lg-8">
            <h2 class="mb-3">{{ $post->title }}</h2>
            {{-- <h5>{{ $post["author"] }}</h5> --}}
            <p>By <a href="/blog?user={{ $post->user->username }}" class="text-decoration-none">{{ $post->user->username }}</a> in <a href="/blog?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></p>
            
            <a href="/dashboard/posts" class="btn btn-success"><i class="bi bi-arrow-left"></i> Back to my posts</a>
            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning"><i class="bi bi-pencil"></i> Edit</a>
            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-danger border-0" onclick="return confirm('Are you sure?')"><i class="bi bi-trash"></i> Delete</button>
              </form>
                
            @if ($post->image)
            <div style="max-height: 350px; overflow:hidden;"></div>
            <img src="{{ asset('storage/' . $post->image) }}" alt={{  $post->category->name  }} class="img-fluid mt-3">
            </div>
            @else
            <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt={{  $post->category->name  }} class="img-fluid mt-3">   
            @endif

            <article class="my-3 fs-5">{!! $post->body !!}</article>
        </div>
    </div>
</div>
@endsection