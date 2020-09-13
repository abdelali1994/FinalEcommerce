<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product ;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(){
      
    if( request()->categorie){
    $products = Product::with('categories')
    ->whereHas('categories', function($query){ $query->where('slug', request()->categorie); })
    ->orderBy('created_at','DESC')->paginate(3);
    // dd(Product::with('categories'));


    } else {
            //recuperer 6 donné aleatiore et la recuperer avec get()
        // $products = Product ::inRandomOrder()->take(6)->get();
        $products = Product ::with('categories')->orderBy('created_at','DESC')->paginate(3) ;  
     
      }
      
        // dd($products) ;
        
    // return view('products.index')->with('products',$products);
    return view('products.shop',compact('products'));

    }

    public function show($slug ){

        // $product=Product::where('slug',$slug)->firstOrFail();
// dd($id) ;
        $product= Product::with('categories')->where('slug',$slug)->firstOrFail();
    // ->whereHas('categories', function($query){ $query->where('slug', $slug); })
// dd( $category ) ;
          // = $product->category ;
      // dd( Category::find(25)->products  )    ;
        $stock = $product->stock === 0 ? 'Indisponible' : 'Disponible' ;

        return view('products.show', [
          'product' => $product ,
          'stock' => $stock  
          ]);


    }

    public function search()
    {

   $validator = request()->validate([
    'q' => 'required|min:3'
    ]);
    // if ( $validator->error() ){

    //   Session::flash('error' ,'La quantité du produit est passée à' );
    // }
// $q=$request-get('q');
      $q=request()->input('q') ;

      $products =Product::where('title','like', "%$q%")
               ->orwhere('description','like', "%$q%")
               ->paginate(6);

      return view('products.shop')->with('products',$products);
    }


//     public function shop(){
// return view("products.shop") ;
//     }
  }
