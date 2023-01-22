<?php

namespace App\Http\Controllers;

use App\Models\Element;

class IndexController extends Controller
{
    public function index()
    {

        $top_titles = Element::where('page', 'index')->where('position', 'top_title')->orderby('sort', 'asc')->get();
        $top_tips = Element::where('page', 'index')->where('position', 'top_tips')->orderby('sort', 'asc')->get();
        $top_tabs = Element::where('page', 'index')->where('position', 'top_tab')->orderby('sort', 'asc')->get();
        $top_classes = Element::where('page', 'index')->where('position', 'class')->orderby('sort', 'asc')->get();

        // return $elements;
        return view('index', compact('top_titles', 'top_tips', 'top_tabs', 'top_classes'));
    }
}
