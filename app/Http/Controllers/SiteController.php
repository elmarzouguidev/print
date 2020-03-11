<?php

namespace App\Http\Controllers;

use App\Deal;
use App\Faq;
use App\Portfolio;
use App\Product;
use App\Service;
use App\Slider;
use App\Testimonial;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;

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

        $portfolios  = Portfolio::whereActive(true)->get();

        $products =  Product::OrderBy('created_at')->limit(3)->get();

        $posts = Post::whereStatus('published')->get();

        return view('Home.index',compact('posts','sliders','deals','services','testimonials','faqs','portfolios','products'));
    }
    public function about()
    {
        return view('About.index');
    }

    public function products()
    {
        $products = Product::all();

        return view('Product.index',compact('products'));
    }

    public function blogSingle($slug)
    {
        $post = Post::whereSlug($slug)->firstOrFail();
        return view('Blog.single.index',compact('post'));
    }
    public function promos()
    {
        $top = Deal::where('topPromo',true)->first();
        return view('Deals.index',compact('top'));
    }
    public function promosSingle($slug)
    {
        $deal = Deal::whereSlug($slug)->firstOrFail();
        $deals   = Deal::whereActive(true)->get();
        return view('Deals.single.index',compact('deal','deals'));
    }

    public function portfolio()
    {
        $portfolios  = Portfolio::whereActive(true)->get();

        return view('Portfolio.index',compact('portfolios'));
    }

    public function portfolioSingle($slug)
    {
        $portfolio = Portfolio::whereSlug($slug)->firstOrFail();
        return view('Portfolio.single.index',compact('portfolio'));
    }

    public function contact()
    {
        return view('Contact.index');
    }
}
