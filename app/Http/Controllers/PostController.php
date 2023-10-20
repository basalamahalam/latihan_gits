<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use App\Models\User;

class PostController extends Controller
{
    public function index()
    {
        // dd(request('search'));
        $title = '';

        if(request('category')){
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in ' . $category->name;
        }

        if(request('user')){
            $user = User::firstWhere('username', request('user'));
            $title = ' by ' . $user->name;
        }

        return view('posts', [
            "title" => "All Posts" . $title,
            "active" => "posts",
            // "posts" => Post::all() //karna static maka Post::
            "posts" => Post::latest()->filter(request(['search', 'category', 'user']))->paginate(7)->withQueryString()//karna static maka Post::/
        ]);
    }

    public function show(Post $post){
        return view('post', [
            "title" => "Single Post",
            "active" => "posts",
            "post" => $post
        ]);
    }
}
