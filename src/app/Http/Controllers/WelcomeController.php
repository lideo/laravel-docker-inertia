<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Inertia\Inertia;

use Illuminate\Support\Facades\URL;

class WelcomeController extends Controller
{
    public function index()
    {
        return Inertia::render('welcome', [
            "url_home" => URL::route('home'),
            "url_about" => URL::route('about'),
        ]);
    }
}
