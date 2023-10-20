<?php

namespace App\Models;

class Home
{
    private static $blog_home = [
    [
        "title" => "Home",
    ],
    ];

    public static function all() {
        return collect(self::$blog_home); //pake self karna static kalau tidak pake this-> dan ini menggunakan collection
    }
}
