<?php

namespace App\Http\Controllers;

use App\Coupon;
use App\Product;
use Gloudemans\Shoppingcart\Cart;
// use Gloudemans\Shoppingcart\Cart;
use Gloudemans\Shoppingcart\Facades\Cart as GloudemansCart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (request()->session()->has('coupon')) {

            $total = ( GloudemansCart::subtotal() - request()->session()->get('coupon')['remise']) + 
            ( GloudemansCart::subtotal() - request()->session()->get('coupon')['remise']) * (config('cart.tax') / 100);
     
            $subtotal =  (  GloudemansCart::subtotal() - request()->session()->get('coupon')['remise'] );
      
            $taxe = (GloudemansCart::tax() - request()->session()->get('coupon')['remise'] ) ;
        }
        else{
            $total=  GloudemansCart::total() ;
            $subtotal =  GloudemansCart::subtotal()  ;
            $taxe = GloudemansCart ::tax() ;
        }
        
          return view('cart.index', [
         
            'total' =>  $total ,
            'subtotal' => $subtotal ,
            'taxe' => $taxe 


        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // if(  $stock = $product->stock === 0 )

        // dd($request->product_id , $request->title , $request->price, $request->description) ;

        $duplicata =   GloudemansCart::search(function ($cartItem, $rowId) use ($request) {
            return $cartItem->id == $request->product_id;
        });

        if ($duplicata->isNotEmpty()) {

            return redirect()->route('products.index')->with('success', 'le produit a déjà été ajouté');
        }

        $product = Product::find($request->product_id);
        //add the item to the cart and associate a model with the item.
        GloudemansCart::add($product->id, $product->title,1, $product->price)->associate('App\Product');
        // Cart::associate($cartItem->rowId, 'Product');
        return redirect()->route('products.index')->with('success', 'le produit a bien été ajouté');
    }

    public function storeCoupon(Request $request)
    {


        $code = $request->get('code');

        $coupon = Coupon::where('code', $code)->first();

        if (!$coupon) {
            return \redirect()->back()->with('danger', 'Le coupon est invalide.');
        }

        $request->session()->put('coupon', [
            'code' =>$coupon->code,
            'remise' =>$coupon->discount(GloudemansCart::subtotal())
        ]);
 
 return \redirect()->back()->with('success', 'Le coupon est appliqué.');
        
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $rowId)
    {
        $data = $request->json()->all();

        $validator =  Validator::make($request->all(), [
            'qty' => 'required|numeric|between:1,6'
        ]);

        if ($validator->fails()) {

            Session::flash('danger', 'La quantité du produit ne doit pas passée 6');
            return response()->json(['error' => 'Cart Quantity Has Not Been Updated']);
        }

        // dd($data);
        if ($data['qty'] > $data['stock']) {
            Session::flash('danger', 'La quantité du produit n\'est pas disponible');
            return response()->json(['error' => 'Cart Quantity Has Not Available']);
        }
        GloudemansCart::update($rowId, $data['qty']);

        Session::flash('success', 'La quantité du produit est passée à' . $data['qty'] .'.');

        return response()->json(['success' => 'Cart quantity Has Been Updated ']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($rowId)
    {
        GloudemansCart::remove($rowId);

        return redirect()->back()->with('danger', 'le produit a été supprimé');
    }




    public function destroyCoupon()
    {
        \request()->session()->forget('coupon');

        return \redirect()->back()->with('success', 'Le coupon aété retiré.') ;
     }
}
