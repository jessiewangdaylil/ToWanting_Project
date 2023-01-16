<?php

namespace App\Http\Controllers;

use App\Models\Cgy;
use App\Models\Contact;
use App\Models\Element;
use App\Models\Item;
use Illuminate\Support\Facades\Request;

class SiteController extends Controller
{

    public function index()
    {
        $sliders = Element::where('page', 'index')->where('position', 'slider')->orderBy('sort', 'asc')->get();
        $arrivals = Item::where('cgy_id', 1)->orderBy('sort', 'asc')->get();
        $title = Element::where('mode', 'image')->where('page', 'index')->where('position', 'slider')->orderBy('sort', 'asc')->first();
        // $s1_background = Element::where('mode', 'image')->where('page', 'index')->where('position', 'slider')->where('title', 'background')->get();
        $introductions = Element::where('page', 'index')->where('position', 'introduction')->orderBy('sort', 'asc')->get();
        return view('index', compact('sliders', 'arrivals', 'title', 'introductions'));
    }
    public function shop()
    {
        $realOfCgy = Cgy::find(5);
        $realCgies = Cgy::where('parent_id', 5)->get();
        $index = 0;
        $realProduct = [];
        foreach ($realCgies as $key) {
            $realProdArr = Item::where('cgy_id', $key->id)->get();
            if (count($realProdArr) > 1) {
                foreach ($realProdArr as $key) {
                    $realProduct[$index] = $key;
                    $index++;
                }
            } elseif (count($realProdArr) == 1) {
                $realProduct[$index] = $realProdArr[0];
                $index++;

            }
            $realProdArr = null;
        }
//
        $virtualOfCgy = Cgy::find(6);
        $virtualCgies = Cgy::where('parent_id', 6)->get();
        $index = 0;
        $virtualProduct = [];
        foreach ($virtualCgies as $key) {
            $virtualProdArr = Item::where('cgy_id', $key->id)->get();
            if (count($virtualProdArr) > 1) {
                foreach ($virtualProdArr as $key) {
                    $virtualProduct[$index] = $key;
                    $index++;
                }
            } elseif (count($virtualProdArr) == 1) {
                $virtualProduct[$index] = $virtualProdArr[0];
                $index++;

            }
            $realProdArr = null;
        }

        return view('shop', compact('realOfCgy', 'realProduct', 'virtualOfCgy', 'virtualProduct'));
    }
    public function product_details(Item $item)
    {
        return view('product_details', compact('item'));
    }
    public function blog_details()
    {
        return view('blog_details');
    }
    public function contact()
    {
        return view('contact');
    }
    public function storeContact(Request $request)
    {
        $contact = Contact::create($request->only('name', 'email', 'subject', 'message'));
        if ($contact) {
            print("儲存成功");
        } else {
            print("儲存失敗");
        }
        return redirect('/admin/contacts');
    }
    public function about()
    {
        return view('about');
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

    public function elements()
    {
        return view('elements');
    }
    public function product_list()
    {
        return view('product_list');
    }

}