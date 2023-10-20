<?php

namespace App\Models;

class Post
{
    private static $blog_post = [
    [
        "tittle" => "Judul Post Pertama",
        "author" => "Muhammad Alam Basallamah",
        "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis exercitationem provident facilis perspiciatis voluptatem, doloremque nihil corporis architecto eligendi dolores ipsam soluta harum illo praesentium quaerat placeat, a laudantium nesciunt sint ipsum dolore obcaecati deserunt suscipit nobis! Architecto laboriosam quod atque dicta non tempore, illum quaerat sit maxime, vitae dolorem, aliquid tempora suscipit soluta expedita optio. Natus, odit minima! Veniam facilis nisi illo saepe expedita incidunt debitis ipsam laudantium in animi porro corrupti commodi itaque libero, odit, recusandae ex tempora?",
        "slug" => "judul-post-pertama"
    ],
    [
        "tittle" => "Judul Post Kedua",
        "author" => "Dadang Suprax",
        "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nisi tempore, tenetur natus provident autem quis culpa esse, itaque facere ab error, veniam ut sit aperiam suscipit ratione beatae voluptatum. Cupiditate!",
        "slug" => "judul-post-kedua"
        ]
    ];

    public static function all() {
        return collect(self::$blog_post); //pake self karna static kalau tidak pake this-> dan ini menggunakan collection
    }

    public static function find($slug) {
        $posts = static::all(); //static untuk metode static (memanggil metode statuc)
        // $post = [];
        // foreach ($posts as $p) {
        //     if($p["slug"] === $slug){
        //         $post = $p;
        //     }
        //  }
        return $posts->firstWhere('slug', $slug); //penggunaan collection sederhanas
    }
}
