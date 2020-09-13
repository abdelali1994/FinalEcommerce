@extends('layouts.master2')
@section('header')


<style>
	.discover:hover{

color: #ffc300 !important

	}
</style>
<aside id="colorlib-hero" class="breadcrumbs">
	<div class="flexslider">
		<ul class="slides">
			<li style="background-image: url('{{asset('images/item-4.jpg')}}'); ">
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
<style>
	.icona:hover {
		background-color: #ffc300;
	}

	.icona {
		display: block;
		color: #fff;
		padding: 1em;
		text-decoration: none;
	}
</style>
<div class="colorlib-shop">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-md-push-3">
				<div class="row row-pb-lg">
				 @foreach ($products as $product)
			{{-- {{	 dd($product->categories->first()->id)}} --}}
					<div class="col-md-4 text-centermr-3">
						<div class="product-entry">
							<div class="product-img"
								style="background-image: url('{{str_replace('\\', '/' ,'/storage/'. $product->image)}}');">
								<div class="cart">
									<div class="d-flex justify-content-lg-center  ">
										<form action="{{route('cart.store')}}" method="POST" id="my_form"
											class="d-flex">
											@method('POST')
											@csrf
											<input type="hidden" name="product_id" value="{{$product->id}}">
											<input type="hidden" name="title" value="{{$product->title}}">
											<input type="hidden" name="description" value="{{$product->description}}">
											<input type="hidden" name="price" value="{{$product->price}}">

											<span> <a class="icona" href="#"
													onclick="document.getElementById('my_form').submit();"
													type="submit"><i class="icon-shopping-cart"></i></a>
											</span>
										</form>
 
										<span>
					 <a class="icona" href="{{route('products.show',  $product->slug  )}}">
						<i class="icon-eye p-3"> </i> </a>
	                                  </span>  
									</div>
								</div>
							</div>
							<div class="desc">
								<h3><a href="{{route('products.show',$product->slug)}}">{{$product->title}}</a></h3>
								<p>{{$product->subtitle}}</p>
								<h4 class="font-weight-bold price " style="color : #ffc300"  > {{$product->getPrice()}} </h4>
							</div>
						</div>
					</div>
					@endforeach
				<span class="d-flex justify-content-center container">	{{ $products->appends(request()->input())->links() }}
					</span>
				</div>
			</div>
			<div class="col-md-3 col-md-pull-10">
				<div class="sidebar">
					<div class="side">
						<h2 style="color : #FFC300" class="text-center mb-3">Categories</h2>
						<div class="fancy-collapse-panel">
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
								@foreach (App\Category::all() as $category)
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
									
											<a href="{{ route('products.index',['categorie' =>$category->slug]) }}"
											style="text-decoration: none"	aria-expanded="true" aria-controls="collapseOne">
												<h5 class="text-dark">	{{$category->name}}	</h5>
											</a>
									
									</div>
								</div>
								@endforeach
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>


{{-- {{$products->appends(request()->input())->links()}} --}}
@endsection