<?php

use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckoutController;
use Gloudemans\Shoppingcart\Facades\Cart as GloudemansCart;
use Illuminate\Support\Facades\Route;

use App\Http\Requests\ContactRequest;
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

Route::get('/home', function () {
    return view('welcome');
});
Route::get('/', function () {
    return view('home');
});

Route::get('/search','ProductController@search')->name('products.search') ;


Route::get('/shop', 'ProductController@index')->name('products.index') ;
// Route::get('/shop/{slug}/{id}', 'ProductController@show')->name('products.show');
Route::get('shop/{slug} ',[
    'as' => 'products.show',
    'uses' => 'ProductController@show'
] ) ;




/* Cart Route*/
Route::group(['middleware'=> ['auth']], function(){

    Route::get('/panier','CartController@index')->name('cart.index');
    Route::post('/panier/ajouter', 'CartController@store')->name('cart.store');
    Route::patch('/panier/{rowId}', 'CartController@update')->name('cart.update');
    Route::delete('/panier/{rowId}', 'CartController@destroy')->name('cart.destroy');
    Route::post('/coupon','CartController@storeCoupon')->name('cart.store.coupon');
    Route::delete('/coupon','CartController@destroyCoupon')->name('cart.destroy.coupon');

});
// Route::get('/videpanier', function(){
//     GloudemansCart::destroy() ;
// }) ;

/*Checkout Rotes*/
 Route::group(['middleware'=> ['auth']], function(){

    Route::get('/paiement', 'CheckoutController@index')->name('checkout.index');
    Route::post('/paiement', 'CheckoutController@store')->name('checkout.store');
    Route::get('/ThankYou', 'CheckoutController@thankyou')->name('checkout.thankyou');

});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');






