<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Home;

class HomeController extends Controller
{
    public function index(){
        return view('Home', [
            "title" => "Home",
            "active" => "home",
            "home" => Home::all() //karna static maka Post::
        ]);
    }
}
