<?php

namespace App\Models;

class About
{
    private static $blog_about = [
        "title" => "About",
        "name" => "Muhammad Alam Basallamah",
        "email" => "basalamahalam@gmail.com"
    ];

    public static function all() {
        return collect(self::$blog_about); //pake self karna static kalau tidak pake this-> dan ini menggunakan collection
    }
}
