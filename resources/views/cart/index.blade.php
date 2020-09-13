@extends('layouts.master2')

@section('extra-meta')
<meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('header')


<style>
	.discover:hover{

color: #ffc300 !important

	}
</style>
<aside id="colorlib-hero" class="breadcrumbs">
	<div class="flexslider">
		<ul class="slides">
			<li style="background-image: url('{{asset('images/cover-img-1.jpg')}}');">
				<div class="overlay"></div>
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
							<div class="slider-text-inner text-center">
							<a  style=" text-decoration: none;"  href="{{url('shop')}}"><h3 class= 'discover' style=" text-align: -webkit-left; color:black ;font-style: italic;">Discover our new collection</h3></a>	
							</div>
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
</aside>	
@endsection

@section('content')
@if(Cart::count()>0)
<div class="colorlib-shop">
	<div class="container">
		<div class="row row-pb-md">
			<div class="col-md-10 col-md-offset-1">
				<div class="process-wrap">
					<div class="process text-center active">
						<p><span>01</span></p>
						<h3>Shopping Cart</h3>
					</div>
					<div class="process text-center">
						<p><span>02</span></p>
						<h3>Checkout</h3>
					</div>
					<div class="process text-center">
						<p><span>03</span></p>
						<h3>Order Complete</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="row row-pb-md">
			<div class="col-md-10 col-md-offset-1">
				<div class="product-name">
					<div class="one-forth text-center">
						<span>Product Details</span>
					</div>
					<div class="one-eight text-center">
						<span>Available</span>
					</div>
					<div class="one-eight text-center">
						<span>Quantity</span>
					</div>
					<div class="one-eight text-center">
						<span>Price</span>
					</div>
					<div class="one-eight text-center">
						<span>Remove</span>
					</div>
				</div>

				@foreach (Cart::content() as $product)

				<div class="product-cart">
					<div class="one-forth">
						<div class="product-img"
							style="background-image: url('{{str_replace('\\', '/' ,'/storage/'.$product->model->image)}}');">
						</div>
						<div class="display-tc">
							<a href="{{route('products.show',['slug'=>$product->model->slug])}}">
								<h3>{{$product->model->title}}</h3>
							</a>
						</div>
					</div>
					<div class="one-eight text-center">
						<div class="display-tc">
							<span class="price"> {{ $product->model->stock}}</span>
						</div>
					</div>
					<div class="one-eight text-center">
						<select style=" margin: 35px 0 0; width: 70%;" name="qty" id="qty" data-stock='{{$product->model->stock}}' data-id={{$product->rowId}}
						>
							@for ($i = 1; $i <= $product->model->stock ; $i++)
								<option value="{{$i}}" {{$i == $product->qty ? 'selected' : ''}}> {{$i}}
								</option>
								@endfor
						</select>
					</div>
					<div class="one-eight text-center">
						<div class="display-tc">
							<span class="price">{{getprice($product->subtotal())}}</span>
						</div>
					</div>
					<div class="one-eight text-center">
						<form action="{{route('cart.destroy',['rowId'=>$product->rowId])}}" method="POST">
							@csrf
							@method('DELETE')
							<button class="btn btn-sm btn-danger mt-5" type="submit"><i class="fa fa-trash"></i>
							</button>
						</form>
					</div>
				</div>
				@endforeach

			</div>
		</div>
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="total-wrap">
					<div class="row">
						@if(!request()->session()->has('coupon'))
						<div class="col-md-7">
							<form action="{{route('cart.store.coupon')}}" method="POST">
								@csrf
								<div class="row form-group">
									<div class="col-md-9">
										<input type="text" name="code" class="form-control input-number"
											placeholder="Your Coupon Number...">
									</div>
									<div class="col-md-3">
										<button type="submit" style="font-size: 18px; 
												color: white;" class="btn btn-primary"><i class="fa fa-gift mr-2"></i> Apply Coupon </button>
									</div>
								</div>
							</form>
						</div>
						@else
						<div class="col-md-7">
							<p class="font-italic mb-4"> Un coupon est déjà appliqué</p>
						</div>
						@endif


						<div class="col-md-5 col-md-push-1 text-center">
							<div class="total" style="height: 100%; font-size: 15px;">

								@if (request()->session()->has('coupon'))
								<p class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">
										Coupon {{request()->session()->get('coupon')['code'] }}

										<form action="{{route('cart.destroy.coupon')}}" method="POST"
											class="d-inline-block">
											@csrf
											@method('DELETE')
											<button class="btn btn-sm btn-outline-danger" type="submit"><i
													class="fa fa-trash"></i>
											</button>
										</form>


									</strong><strong> {{getPrice(request()->session()->get('coupon')['remise']) }}
									</strong></p>
								@endif

								<div class="sub">
									<p><span>Subtotal:</span> <span>{{ getPrice($subtotal) }}</span></p>
									<p><span> Taxe </span> <span>{{ getPrice($taxe) }}</span></p>
								</div>
								<div class="grand-total">
									<p><span><strong>Total:</strong></span> <span>{{ getPrice($total )}}</span></p>
								</div>
							</div>

							<a href="{{ route('checkout.index') }}" style="font-size: 18px; 
							color: white;" class="btn btn-primary"><i class="fa fa-credit-card" aria-hidden="true"></i> Checkout securely
								now </a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="colorlib-shop">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 text-center colorlib-heading">
				<h2><span>Recommended Products</span></h2>
				<p>We love to tell our successful far far away, behind the word mountains, far from the countries
					Vokalia and Consonantia, there live the blind texts.</p>
			</div>
		</div>
		<div class="row">
			{{-- {{$count = 0}} --}}
			@foreach (App\Product ::with('categories')->orderBy('created_at','DESC')->paginate(4) as $product )
			{{-- {{@if($count == 4) break}} --}}
			<div class="col-md-3 text-center">
				<div class="product-entry">
					<div class="product-img"
						style="background-image: url('{{str_replace('\\', '/' ,'/storage/'. $product->image)}}');">
						<p class="tag"><span class="new">New</span></p>
						<div class="cart">
							<p>
								<span class="addtocart"><a href="#"><i class="icon-shopping-cart"></i></a></span>
								<span><a href="product-detail.html"><i class="icon-eye"></i></a></span>
								<span><a href="#"><i class="icon-heart3"></i></a></span>
								<span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
							</p>
						</div>
					</div>
					<div class="desc">
						<h3><a href="shop.html">{{$product->title}}</a></h3>
						<p class="price"><span>{{$product->getPrice()}}</span></p>
					</div>
				</div>
			</div>
			@endforeach


		</div>
	</div>
</div>
@else
<div class="row">
	<div class="col-md-10 col-md-offset-1 text-center">
		<span class="icon"><i class="icon-shopping-cart" style="font-size: 100px;
			color: #FFC300;"></i></span>
		<h2 class="m-4">Your shopping cart is empty </h2>
		<p>
	
			<a href="{{url('shop')}}"  style="    border-radius: 12px;
			font-size: 20px;" class="btn btn-primary btn-outline">Back to home </a>
		</p>
	</div>
</div>
@endif


@section('extra-js')
<script>
	var selects = document.querySelectorAll('#qty') ;
	// console.log(selects);
	//transferer va select a un tableau 
	Array.from(selects).forEach((element)=>{
	//  console.log(element);
	element.addEventListener('change', function (){
		var rowId = element.getAttribute('data-id');
		var stock = this.getAttribute('data-stock');

		var token = document.querySelector('meta[name="csrf-token"]').getAttribute('content') ;

		fetch(
			 `/panier/${rowId}`,
			
			 {
				headers: {
                      "Content-Type" :"application/json",
                      "Accept":"application/json, text-plain, */*",
                      "X-Requested-With":"XMLHttpRequest",
                      "X-CSRF-TOKEN": token
                  },
                  method: 'PATCH',
				  body: JSON.stringify({
                    qty : this.value ,
					stock :stock
                  })

			 }
			 ).then((data)=>{
			 console.log(data);
			location.reload() ;
			 
			 }).catch((error) => {
				console.log(error) 
				// location redirect
			 })
	});
	});
</script>
@endsection
@endsection