<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

Route::get('/', function () {
    return view('welcome');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
Route::namespace ('App\Http\controllers')->group(function () {
    Route::get('/index', 'SiteController@index');
    Route::get('/about', 'SiteController@about');
    Route::get('/blog_details', 'SiteController@blog_details');
    Route::get('/blog', 'SiteController@blog');
    Route::get('/cart', 'SiteController@cart');
    Route::get('/checkout', 'SiteController@checkout');
    Route::get('/confirmation', 'SiteController@confirmation');
    Route::get('/contact', 'SiteController@contact');
    Route::get('/elements', 'SiteController@elements');
    Route::get('/product_details/{item}', 'SiteController@product_details');
    Route::get('/product_list', 'SiteController@product_list');
    Route::get('/shop', 'SiteController@shop');

});