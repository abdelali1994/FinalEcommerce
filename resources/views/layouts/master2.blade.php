<!DOCTYPE HTML>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Store Template</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	@yield('extra-meta')
	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content="" />
	<meta property="og:image" content="" />
	<meta property="og:url" content="" />
	<meta property="og:site_name" content="" />
	<meta property="og:description" content="" />
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

	<!-- Animate.css -->
	<link rel="stylesheet" href="{{asset('css/animate.css')}}">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="{{asset('css/icomoon.css')}}">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="{{asset('css/bootstrap.css')}}">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="{{asset('css/magnific-popup.css')}}">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="{{asset('css/flexslider.css')}}">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="{{asset('css/owl.carousel.min.css')}}">
	<link rel="stylesheet" href="{{asset('css/owl.theme.default.min.css')}}">

	<!-- Date Picker -->
	<link rel="stylesheet" href="{{asset('css/bootstrap-datepicker.css')}}">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="{{asset('fonts/flaticon/font/flaticon.css')}}">

	<!-- Theme style  -->
	<link rel="stylesheet" href="{{asset('css/style.css')}}">



	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
		integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">


	<!-- Modernizr JS -->
	<script src="{{asset('js/modernizr-2.6.2.min.js')}}"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	@yield('extra-script')

</head>

<body>
	<div class="colorlib-loader"></div>
	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-xs-2 mt-3">
							<a href="{{url('/')}}">
								<img src="{{asset('/images/logo.png')}}" style="width: 100px" alt=""> 
							</a>
						</div>
						<div class="col-xs-10 text-right menu-1 ">

							<ul style="width: 100%;
							margin-top: 40px;">
								<li><a href="{{url('/')}}">Home</a></li>

								<li><a href="{{url('shop')}}">Shop</a>
								</li>

								<li class="has-dropdown">

									<a href="{{url('shop')}}">Category</a>
									<ul class="dropdown">
										@foreach (App\Category::all() as $category)
										<li><a class="p-2 text-muted"
												href="{{ route('products.index',['categorie' =>$category->slug]) }}">
												{{$category->name}}</a> </li>

										@endforeach

									</ul>
								</li>

								<li><a href="{{route('cart.index')}}"> My Orders </a></li>

								@if (Route::has('login'))

								@auth

								<li class="has-dropdown">
									<a href="{{url('shop')}}"> Hi {{ Auth::user()->name }} </a>
									<ul class="dropdown">
										<li><a href="{{ route('logout') }}" onclick="event.preventDefault();
														  document.getElementById('logout-form').submit();">
												LogOut
											</a>

											<form id="logout-form" action="{{ route('logout') }}" method="POST"
												style="display: none;">
												@csrf
											</form>
										</li>
									</ul>
								</li>
								@else
								<li> <a href="{{ route('login') }}">Login</a> </li>

								@if (Route::has('register'))
								<li><a href="{{ route('register') }}">Register</a> </li>
								@endif
								@endauth

								@endif
								<li><a href="{{route('cart.index')}}"><i class="icon-shopping-cart"></i> Cart
										[{{Cart::count()}}]</a></li>
								<form class="p-1" action="{{route('products.search')}}">
									<li class="buscar-caja ">
										<input type="text" class="buscar-txt" placeholder="Search ....." name="q"
											value="{{old('q')}}" />
										<a href="#" onclick="document.getElementById('my_form').submit();" type="submit"
											class="buscar-btn"> <i class="fa fa-search"></i> </a>
									</li>

								</form>
							</ul>
						</div>

					</div>
				</div>
			</div>
		</nav> 
		
		@if(session('success'))
		<h4 class=" p-1 text-info text-center" style = 'background-color :#c6eecf !important '>
			{{ session('success')}}
		</h4>
		@endif
  
		@if(session('danger'))
		<h4 class=" p-1 text-danger text-center" style = 'background-color :#b8172d!important  '>
			{{ session('danger')}}
		</h4>
		@endif  
{{-- <span> --}}
	@if (request()->input('q'))
		<h4 class=" p-1 text-info text-center" style = 'background-color :#c6eecf !important '>
		 
					{{$products->total()}} resultat(s) pour la recherche " {{request()->input('q')}}"
	 
		</h4>
		@endif
{{-- </span> --}}
		

		@if (count($errors)>0)
		<div class="alert alert-danger">
			<ul class="my-0">
				@foreach ($errors->all() as $error)
				<li>{{$error}}</li>
				@endforeach
			</ul>
		</div>
		@endif





		@yield('header')


		@yield('content')


</div>
		<footer id="colorlib-footer" role="contentinfo" style = 'background-color:whitesmoke'>
			{{-- <div class="container">
				<div class="row row-pb-md">
				 
				</div>
			</div> --}}
			<div class="copy">
				<div class="row">
					<div class="col-md-12 text-center">
						<p>

							<span class="block">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>
									document.write(new Date().getFullYear());
								</script> All rights reserved | This Web Site is made with <i class="icon-heart2"
									aria-hidden="true"></i> by <a href="https://github.com/abdelali1994/"
									target="_blank">Ghaffari Abdelali </a>
							 
						</p>
					</div>
				</div>
			</div>
		</footer>

	

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	<!-- jQuery -->
	<script src="{{asset('js/jquery.min.js')}}"></script>
	<!-- jQuery Easing -->
	<script src="{{asset('js/jquery.easing.1.3.js')}}"></script>
	<!-- Bootstrap -->
	<script src="{{asset('js/bootstrap.min.js')}}"></script>
	<!-- Waypoints -->
	<script src="{{asset('js/jquery.waypoints.min.js')}}"></script>
	<!-- Flexslider -->
	<script src="{{asset('js/jquery.flexslider-min.js')}}"></script>
	<!-- Owl carousel -->
	<script src="{{asset('js/owl.carousel.min.js')}}"></script>
	<!-- Magnific Popup -->
	<script src="{{asset('js/jquery.magnific-popup.min.js')}}"></script>
	<script src="{{asset('js/magnific-popup-options.js')}}"></script>
	<!-- Date Picker -->
	<script src="{{asset('js/bootstrap-datepicker.js')}}"></script>
	<!-- Stellar Parallax -->
	<script src="{{asset('js/jquery.stellar.min.js')}}"></script>
	<!-- Google Map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false">
	</script>
	<script src="{{asset('js/google_map.js')}}"></script>
	<!-- Main -->
	<script src="{{asset('js/main.js')}}"></script>

	@yield('extra-js')
</body>

</html>