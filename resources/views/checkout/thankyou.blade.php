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
		<div class="colorlib-shop">
			<div class="container">
				<div class="row row-pb-lg">
					<div class="col-md-10 col-md-offset-1">
						<div class="process-wrap">
							<div class="process text-center active">
								<p><span>01</span></p>
								<h3>Shopping Cart</h3>
							</div>
							<div class="process text-center active">
								<p><span>02</span></p>
								<h3>Checkout</h3>
							</div>
							<div class="process text-center active">
								<p><span>03</span></p>
								<h3>Order Complete</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-10 col-md-offset-1 text-center">
						<span class="icon"><i class="icon-shopping-cart" style="font-size: 100px;
							color: #FFC300;"></i></span>
						<h2 class="m-4">Thank you for purchasing, Your order is complete</h2>
						<p>
							<a href="{{url('shop')}}" style="    border-radius: 12px;
							font-size: 20px;"  class="btn btn-primary btn-outline">Continue Shopping</a>
						</p>
					</div>
				</div>
			</div>
		</div>

        @endsection
