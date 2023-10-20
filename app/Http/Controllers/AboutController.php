<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\About;

class AboutController extends Controller
{
    public function index(){
        return view('About', [
            "title" => "About",
            "active" => "about",
            "about" => About::all() //karna static maka Post::
        ]);
    }
}
