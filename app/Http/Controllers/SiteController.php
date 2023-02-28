<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\ArticleTag;
use App\Models\Cgy;
use App\Models\Comment;
use App\Models\Contact;
use App\Models\Element;
use App\Models\Item;
use App\Models\Tag;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SiteController extends Controller
{
//===============================================================
    public function index()
    {
        $sliders = Element::where('page', 'index')->where('position', 'slider')->orderBy('sort', 'asc')->get();
        $arrivals = Item::where('cgy_id', 1)->orderBy('sort', 'asc')->get();
        $title = Element::where('mode', 'image')->where('page', 'index')->where('position', 'slider')->orderBy('sort', 'asc')->first();
        $introductions = Element::where('page', 'index')->where('position', 'introduction')->orderBy('sort', 'asc')->get();
        return view('index', compact('sliders', 'arrivals', 'title', 'introductions'));
    }
//==============================================================
    public function shop()
    {
// card(1) 實體商品 real Item => rlIm
        $rlImCgy = Cgy::where('title', '實體商品')->first();
        $rlImCgies = Cgy::where('parent_id', $rlImCgy->id)->orWhere('id', $rlImCgy->id)->get();
        $index = 0;
        $rlIm = [];
        foreach ($rlImCgies as $rlImkey) {
            $rlImkeyItem = Item::where('cgy_id', $rlImkey->id)->orderby('created_at', 'desc')->get();
            if (count($rlImkeyItem) > 1) {
                foreach ($rlImkeyItem as $rlImkey) {
                    $rlIm[$index] = $rlImkey;
                    $index++;
                }
            } elseif (count($rlImkeyItem) == 1) {
                $rlIm[$index] = $rlImkeyItem[0];
                $index++;
            }
            $rlImkeyItem = null;
        }
// Card(2) 虛擬商品 virtual Item => vlIm
        $vlImCgy = Cgy::where('title', '虛擬商品')->first();
        $vlImCgies = Cgy::where('parent_id', $vlImCgy->id)->orWhere('id', $vlImCgy->id)->get();
        $index = 0;
        $vlIm = [];
        foreach ($vlImCgies as $vlImkey) {
            $vlImkeyItem = Item::where('cgy_id', $vlImkey->id)->get();
            if (count($vlImkeyItem) > 1) {
                foreach ($vlImkeyItem as $vlImkey) {
                    $vlIm[$index] = $vlImkey;
                    $index++;
                }
            } elseif (count($vlImkeyItem) == 1) {
                $vlIm[$index] = $vlImkeyItem[0];
                $index++;
            }
            $rlImkeyItem = null;
        }
// Card(3) 人氣商品 popular Item => prIm
        $prCount = Item::where('enabled', true)->count();
        $prIm = Item::where('enabled', true)->orderby('star', 'desc')->take($prCount / 5)->get();
        return view('shop', compact('rlImCgy', 'rlIm', 'vlImCgy', 'vlIm', 'prIm'));
    }
//===============================================================
    public function product_details(Item $item)
    {
        return view('product_details', compact('item'));
    }
//===============================================================
    public function contact()
    {
        return view('contact');
    }
//===============================================================
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
//===============================================================
    public function contact2()
    {
        return view('contact2');
    }
//===============================================================
    public function storeContactTest(Request $request)
    {
        dd($request);
        return redirect('/contact2');
    }
//===============================================================
    public function about()
    {
        return view('about');
    }
//===============================================================

    public function blogSidebar(Cgy $cgies, Article $ariticle)
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
        $art_cgy_title = ['時事', '旅遊', '美食', '運動/休閒', '興趣', '寵物', '關係', '科技'];
        $index = 0;
        foreach ($art_cgy_title as $key) {
            $art_cgies[$index] = Cgy::where('title', $key)->first();
            $art_qty[$index] = count(Article::where('cgy_id', $art_cgies[$index]->id)->where('status', 'online')->get());
            $index++;
        }
        $all_art_cgy = Cgy::where('title', '所有文章')->first();
//Rightside menu
        return compact('cgy', 'art_cgy', 'art_cgies', 'art_qty', 'all_art_cgy', 'all_art_cgies', 'cgies');
    }
//===============================================================
    public function blog(Cgy $cgies, Article $ariticle)
    {
        return view('blog', $this->blogSidebar($cgies, $ariticle));
    }
//===============================================================
    public function blog_details(Cgy $cgies, $id, Article $article, User $user)
    {
//Session  目前登入使用者、目標瀏覽文章
        session(['article_id' => $id, 'user_id' => Auth::id()]);
//目標瀏覽文章、作者
        $article_det = Article::find($id);
        $author = User::find($article_det->author_id);
//此文章的所有標籤
        $article_tags = ArticleTag::where('article_id', $id)->get();
        $index = 0;
        foreach ($article_tags as $article_tag) {
            $tags[$index] = Tag::find($article_tag->tag_id);
            $index++;
        }
//
        $article_coms = Comment::where('article_id', $id)->where('enabled', true)->orderBy('created_at', 'asc')->get();
        $index = 0;
        foreach ($article_coms as $comment) {
            $users[$index] = User::find($comment->user_id);
            $index++;
        }
//
        return view('blog_details', $this->blogSidebar($cgies, $article))->with(['pic' => $article_det->getFirstPic(), 'title' => $article_det->title,
            'content' => $article_det->content,
            'tags' => $tags, 'comments' => $article_coms, 'users' => $users, 'author' => $author]);
    }
//===============================================================
    public function StoreComment(Request $request)
    {
        //dd(session('user_id', 2));
        $comment = Comment::create([
            'name' => $request->name,
            'email' => $request->email,
            'content' => $request->content,
            'article_id' => session('article_id', 20),
            'user_id' => session('user_id', 2)]);
        if ($comment) {
            print("儲存成功");
            flash('表單送出成功!!')->overlay();
            // flash('表單送出成功!!')->success(); //綠色框
        } else {
            print("儲存失敗");
            flash('表單送出失敗!!')->overlay();
            // flash('表單送出失敗!!')->error(); //紅色框
        }
        return redirect(url('/blog_details', session('article_id', 2)));
    }
//===============================================================
    public function cart()
    {
        return view('cart');
    }
//===============================================================
    public function checkout()
    {
        return view('checkout');
    }
//===============================================================
    public function confirmation()
    {
        return view('confirmation');
    }
//===============================================================
    public function elements()
    {
        return view('elements');
    }
//===============================================================
    public function product_list()
    {
        return view('product_list');
    }
//===============================================================
}
