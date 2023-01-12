<?php

namespace App\Http\Controllers;

class SiteController extends Controller
{

    public function index()
    {
        return view('index');
    }
    public function about()
    {
        return view('about');
    }
    public function blog_details()
    {
        return view('blog_details');
    }
    public function blog()
    {
        return view('blog');
    }
    public function checkout()
    {
        return view('checkout');
    }
    public function confirmation()
    {
        return view('confirmation');
    }
    public function contact()
    {
        return view('contact');
    }
    public function elements()
    {
        return view('elements');
    }
    public function product_details()
    {
        return view('product_details');
    }
    public function product_list()
    {
        return view('product_list');
    }
    public function shop()
    {
        return view('shop');
    }

}