<?php

namespace App\Http\Controllers;

use App\Deal;
use App\Faq;
use App\Service;
use App\Slider;
use App\Testimonial;
use Illuminate\Http\Request;

class SiteController extends Controller
{
    //

    public function index()
    {
        $sliders = Slider::whereActive(true)->get();

        $deals   = Deal::whereActive(true)->get();

        $services = Service::whereActive(true)->get();

        $testimonials = Testimonial::all();

        $faqs = Faq::whereActive(true)->get();

        return view('Home.index',compact('sliders','deals','services','testimonials','faqs'));
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
    public function promosSingle($slug)
    {
        $deal = Deal::whereSlug($slug)->firstOrFail();
        $deals   = Deal::whereActive(true)->get();
        return view('Deals.single.index',compact('deal','deals'));
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
