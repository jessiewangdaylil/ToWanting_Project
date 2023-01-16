<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Cgy;
use App\Models\Contact;
use App\Models\Element;
use App\Models\Item;
use Carbon\Carbon;
use Illuminate\Http\Request;

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
// 實體商品
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
// 虛擬商品
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
//
        return view('shop', compact('realOfCgy', 'realProduct', 'virtualOfCgy', 'virtualProduct'));
    }
    public function product_details(Item $item)
    {
        return view('product_details', compact('item'));
    }
    public function contact()
    {
        return view('contact');
    }
    public function storeContact(Request $request)
    {
        $contact = Contact::create($request->only('name', 'email', 'subject', 'message', 'mobile'));
        if ($contact) {
            print("儲存成功");
            flash('表單送出成功!!')->overlay();
            // flash('表單送出成功!!')->success(); //綠色框
        } else {
            print("儲存失敗");
            flash('表單送出失敗!!')->overlay();
            // flash('表單送出失敗!!')->error(); //紅色框
        }
        return redirect('/contact');
    }
    public function about()
    {
        return view('about');
    }

    public function blog(Cgy $cgies, Article $ariticle)
    {
        $all_art_cgies = Article::where('status', 'online')->get();

        if (!(is_null($cgies->id))) {

            if ($cgies->title == '所有文章') {
//所有文章
                $cgy = $cgies;
                $art_cgy = Article::where('status', 'online')->paginate(5);
//所有文章

            } else {
//分類文章
                $cgy = Cgy::where('id', $cgies->id)->first();
                $art_cgy = $cgy->articles()->where('status', 'online')->paginate(5);
//有分類文章
            }
        } else {
//當週最新文章
            $cgy = Cgy::where('title', '最新文章')->first();
            $art_cgy = Article::where('status', 'online')->where('updated_at', '>', Carbon::now()->subWeekday())->orderBy('sort', 'desc')->paginate(5);
            // dd($art_cgy);
        }
//有分類文章
//Rightside menu
        $art_cgy_title = ['時事', '旅遊', '美食', '運動/休閒', '寵物', '科技'];
        $index = 0;
        foreach ($art_cgy_title as $key) {
            $art_cgies[$index] = Cgy::where('title', $key)->first();
            $art_qty[$index] = count(Article::where('cgy_id', $art_cgies[$index]->id)->where('status', 'online')->get());
            $index++;
        }
        $all_art_cgy = Cgy::where('title', '所有文章')->first();
        return view('blog', compact('cgy', 'art_cgy', 'art_cgies', 'art_qty', 'all_art_cgy', 'all_art_cgies'));
//Rightside menu
    }
    public function blog_details()
    {
        return view('blog_details');
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