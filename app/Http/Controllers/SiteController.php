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
    public function __construct()
    {
        $this->middleware('auth')->only(['cart', 'confirmation', 'checkout', 'StoreComment']);

    }

//===============================================================
    public function about()
    {
        return view('about');
    }
//===============================================================
    public function index()
    {
// (1) silder
        $sliders = Element::where('page', 'index')->where('position', 'slider')->orderBy('sort', 'asc')->get();
// (2) Introduction
        $introductions = Element::where('page', 'index')->where('position', 'introduction')->orderBy('sort', 'asc')->get();
// (3) Video
// (4) Item Arrival
        $arrivals = Item::where('cgy_id', 1)->orderBy('sort', 'asc')->get();
// (5) Popular Article
        return view('index', compact('sliders', 'arrivals', 'introductions'));
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

        session(['rePage' => request()->path()]);
        return view('shop', compact('rlImCgy', 'rlIm', 'vlImCgy', 'vlIm', 'prIm'));
    }
//===============================================================
    public function product_details(Item $item)
    {
        return view('product_details', compact('item'));
    }
//===============================================================
    public function addItem(Item $item)
    {

        \Cart::session(Auth::id())->add(array(
            'id' => $item->id,
            'name' => $item->title,
            'price' => $item->price_new,
            'quantity' => 1,
            'attributes' => array(),
            'associatedModel' => $item,
        ));
        // dd(session('rePage'));
        return redirect('/' . session('rePage'));

    }
//===============================================================
    public function cart()
    {
        $cart = \Cart::session(Auth::user()->id)->getContent();
        $index = 0;
        $buyItem = null;
        foreach ($cart as $item) {
            $buyItem[$index] = Item::find($item->id);
            $index++;
        }
        return view('cart', compact('buyItem', 'cart'));
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
    public function blogSidebar(Cgy $cgies, Article $ariticle)
    {
//文章分類
        $newCgy = Cgy::where('title', '最新文章')->first();
        $artCgy = Cgy::where('title', '部落格文章')->first();
        $allCgy = Cgy::where('title', '所有文章')->first();
//所有上線文章 online article => onArt
        $onArt = Article::where('status', 'online')->get();
//當週最新文章 'New Articles NewOnArt

        $newOnArt = Article::where('status', 'online')->where('updated_at', '>', Carbon::now()->subWeekday())->orderBy('sort', 'desc')->paginate(5);

//開始-路由判斷 /blog/{cgies?}
        if (!(is_null($cgies->id))) {
            //所有文章
            if ($cgies->title == '所有文章') {
                $cgy = $cgies;
                $articles = Article::where('status', 'online')->paginate(5);
            } else {
                //分類文章
                $cgy = Cgy::where('id', $cgies->id)->first();
                $articles = $cgy->articles()->where('status', 'online')->paginate(5);
            }
        } else {
            //當週最新文章 /blog
            $cgy = $newCgy;
            $articles = $newOnArt;
        }
//結束-路由判斷 /blog/{cgies?}
//開始-路由/blog/{cgies?} 的每個文章評論數
        $index = 0;
        $CommQty = null;
        foreach ($articles as $article) {
            $CommQty[$index] = Count(Comment::where('article_id', $article->id)->get());
            $index++;
        }
//結束-路由/blog/{cgies?} 的每個文章評論數
//開始-blogSidebar menu
        $artCgies = Cgy::where('parent_id', $artCgy->id)->where('parent_id', $artCgy->id)->where('id', '!=', $allCgy->id)->where('id', '!=', $newCgy->id)->orderby('sort', 'asc')->select(['id', 'title'])->get();

        $index = 0;
        foreach ($artCgies as $key) {
            $artQty[$index] = count(Article::where('cgy_id', $key->id)->where('status', 'online')->get());
            $index++;
        }
//結束-blogSidebar menu
        return compact('cgy', 'articles', 'artQty', 'artCgies', 'onArt', 'newOnArt', 'cgies', 'allCgy', 'CommQty');
    }
//===============================================================
    public function blog(Cgy $cgies, Article $ariticle, )
    {
        return view('blog', $this->blogSidebar($cgies, $ariticle));
    }
//===============================================================
    public function blog_details(Cgy $cgies, $id, Article $article, User $user)
    {
//Session  目前登入使用者、目標瀏覽文章
        session(['rePage' => request()->path(), 'article_id' => $id, 'user_id' => Auth::id()]);

//目標瀏覽文章、作者
        $artIndex = Article::find($id);
        $author = User::find($artIndex->author_id);
//此文章的所有標籤
        $artTags = ArticleTag::where('article_id', $id)->get();
        $index = 0;
        foreach ($artTags as $artTag) {
            $tags[$index] = Tag::find($artTag->tag_id);
            $index++;
        }
//此文章的所有評論
        $users[0] = 0;
        $artComms = Comment::where('article_id', $id)->where('enabled', true)->orderBy('created_at', 'asc')->get();

        $index = 0;
        foreach ($artComms as $comment) {
            $users[$index] = User::find($comment->user_id);
            $index++;
        }
//作者的最新文章
        $authArt = Article::where('author_id', $artIndex->author_id)->orderby('created_at', 'desc')->take(5)->get();
//關鍵字

//
        return view('blog_details', $this->blogSidebar($cgies, $article))->with(['article' => $artIndex, 'tags' => $tags, 'comments' => $artComms, 'users' => $users, 'author' => $author, 'authorArticle' => $authArt]);
    }
//===============================================================
    public function StoreComment(Request $request)
    {
//將評論表單新增至資料庫評論集
        $artComm = Comment::create([
            'name' => $request->name,
            'email' => $request->email,
            'content' => $request->content,
            'article_id' => session('article_id', 20),
            'user_id' => session('user_id', 2)]);
//flash message
        if ($artComm) {
            // print("儲存成功");
            flash('表單送出成功!!')->overlay(); //對話框
            // flash('表單送出成功!!')->success(); //綠色框
        } else {
            // print("儲存失敗");
            flash('表單送出失敗!!')->overlay(); //對話框
            // flash('表單送出失敗!!')->error(); //紅色框
        }
        return redirect('/' . session('rePage'));
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
    public function elements()
    {
        return view('elements');
    }

}