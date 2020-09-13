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
			<li style="background-image: url('{{asset('images/item-4.jpg')}}');">
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

<div class="colorlib-shop">
	<div class="container">
		<div class="row row-pb-lg">
			<div class="col-md-10 col-md-offset-1">
				<div class="product-detail-wrap">
					<div class="row">
						<div class="col-md-5">
							<div class="product-entry">
								<div class="product-img" id="mainImage"
									style="background-image: url('{{str_replace('\\', '/' ,'/storage/'. $product->image)}}');">

									<p class="tag"><span class="new">{{$stock}} </span></p>
									{{-- @php $products = App\Category::find($product->categories->first()->id)->products) @endphp --}}
 					</div>
								<div class="thumb-nail">
									@if ($product->images)
									<a href="#" class="thumb-img  img-thumbnail"
										style="background-image:url('{{str_replace('\\', '/' ,'/storage/'. $product->image)}}');"></a>
									@foreach (json_decode($product->images, true) as $image)
									<a href="#" class="thumb-img  img-thumbnail"
										style="background-image: url('{{str_replace('\\', '/' ,'/storage/'.$image)}}');"></a>
									@endforeach
									@endif
								</div>
							</div>
						</div>
						<div class="col-md-7">
							<div class="desc">
								<h3> {{$product->title}} </h3>
								<h5> {{$product->subtitle}} </h5>

								<p class="price">
									<span>{{$product->getPrice()}}</span>
								</p>
								<p>{!!$product->description!!}</p>

								{{-- //select quantité --}}

								{{-- <div class="one-eight text-center">
									<select style=" margin: 35px 0 0; width: 70%;" name="qty" id="qty"
										data-stock='{{$product->stock}}' data-id={{$product->rowId}}>
								@for ($i = 1; $i <= $product->stock ; $i++)
									<option value="{{$i}}" {{$i == $product->qty ? 'selected' : ''}}> {{$i}}
									</option>
									@endfor
									</select>
							</div> --}}

							@if($stock == 'Disponible')
							<form action="{{route('cart.store')}}" method="POST">
								@method('POST')
								@csrf
								<input type="hidden" name="product_id" value="{{$product->id}}">
								<input type="hidden" name="title" value="{{$product->title}}">
								<input type="hidden" name="description" value="{{$product->description}}">
								<input type="hidden" name="price" value="{{$product->price}}">
								<input type="hidden" name="qty" value="{{$product->qty}}">

								<button class="btn btn-primary btn-addtocart" style=" display: flex; font-size: 18px; width: 30%;
										color: white;" type="submit"><i class="icon-shopping-cart"></i>Add to Cart </button>

							</form>
							@else
							<a class="w-25 text-danger">le produit n'est pas disponible </a>
							@endif
						</div>
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
				<h2><span>Similar Products</span></h2>
				<p>We love to tell our successful far far away, behind the word mountains, far from the countries
					Vokalia and Consonantia, there live the blind texts.</p>
			</div>
		</div>
		<div class="row">
			<?php $count = 0; ?>
			@foreach ( App\Category::find($product->categories->first()->id)->products as $product )
		 
				<?php if($count == 4) break; ?>
		 
				
			<div class="col-md-3 text-center">
				<div class="product-entry">
					<div class="product-img"
						style="background-image: url('{{str_replace('\\', '/' ,'/storage/'. $product->image)}}');">
						<div class="cart">
							<p>
								<span class="addtocart"><a href="#"><i class="icon-shopping-cart"></i></a></span>
								<span><a href="product-detail.html"><i class="icon-eye"></i></a></span>
							</p>
						</div>
					</div>
					<div class="desc">
						<h3><a href="shop.html">{{$product->title}}</a></h3>
						<p class="price"><span>{{$product->getPrice()}}</span></p>
					</div>
				</div>
			</div>
			<?php $count++; ?>
			@endforeach


		</div>
	</div>
</div>

<script>
	$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
				// Get the field name
				
		        var quantity = parseInt($('#quantity').val());
				// If is not undefined
				
		            $('#quantity').val(quantity + 1);
		            // Increment
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});

	
</script>
<script>
	var mainImage= document.querySelector('#mainImage');
		var thumbnails= document.querySelectorAll('.img-thumbnail') ;

		thumbnails.forEach((element)=> element.addEventListener('mouseover' ,changeImage));
		function changeImage(e){
		  mainImage.style.backgroundImage= this.style.backgroundImage ;
		}
</script>
@endsection