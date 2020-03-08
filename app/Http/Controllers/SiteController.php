<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SiteController extends Controller
{
    //

    public function index()
    {
        return view('Home.index');
    }
    public function about()
    {
        return view('About.index');
    }

    public function products()
    {
        return view('Product.index');
    }

    public function promos()
    {
        return view('Deals.index');
    }

    public function portfolio()
    {
        return view('Portfolio.index');
    }

    public function portfolioSingle($slug)
    {
        return view('Portfolio.single.index');
    }

    public function contact()
    {
        return view('Contact.index');
    }
}
