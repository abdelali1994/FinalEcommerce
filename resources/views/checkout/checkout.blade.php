@extends('layouts.master2')
@section('extra-meta')
<meta name="csrf-token" content="{{ csrf_token() }}">

@endsection
@section('extra-script')

<script src="https://js.stripe.com/v3/"></script>

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

<div class="colorlib-shop">
	<div class="container">
		<div class="row row-pb-md">
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
					<div class="process text-center">
						<p><span>03</span></p>
						<h3>Order Complete</h3>
					</div>
				</div>
			</div>
		</div>

		<div class="row">

			<div class="col-md-7" style="background-color: whitesmoke;">
				@csrf
				<h2 style="margin-bottom: 90px;     text-align: center;
			margin-top: 40px;">Billing Details</h2>
				<form action="{{route('checkout.store')}}" method="POST" id="payment-form" class="my-4">

					<div class="form-group">
						<div class="col-md-8" id="card-element">

							<label for="stateprovince">State/Province</label>
							<input type="text" id="fname" name="test" class="form-control">
						</div>
					</div>
					<div id="card-errors" role="alert"></div>
					<div class="form-group  ">
						<button id="submit" style="font-size: 18px;	float: center;	color: white;
							  margin: 15% 0 0 15%;
							  width: 31%;" class="btn btn-primary"> Pay ({{ getPrice($total )}}) </button>

					</div>

					{{-- </div> --}}
				</form>
			</div>

			<div class="col-md-5">
				<div class="cart-detail">
					<h2>Cart Total</h2>
					<ul>

						<li>
							{{-- <span>Subtotal</span> <span>{{ getPrice(Cart::subtotal()) }}</span> --}}
							<ul>
								@foreach (Cart::content() as $product)
								<li><span> {{$product->qty}} x {{$product->model->title}}</span>
									<span>{{getprice($product->subtotal())}}</span></li>
								@endforeach
							</ul>
						</li>
						{{-- <li><span>Shipping</span> <span>$0.00</span></li> --}}
						<li><span>Order Total</span> <span>{{ getPrice($total )}}</span></li>
					</ul>
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
						{{-- <p class="tag"><span class="new">New</span></p> --}}
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
			{{-- {{$count++}} --}}
			@endforeach


		</div>
	</div>
</div>

@endsection
@section('extra-js')
<script>
	var stripe = Stripe('pk_test_7j7Nour7a5Fzv9U2PJNKzqgr00RDVaFrm0');
    var elements = stripe.elements();
    var style = {
        base: {
            color: "#32325d",
            fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
            fontSmoothing: "antialiased",
            fontSize: "16px",
            "::placeholder": {
                color: "#aab7c4"
            }
        },
        invalid: {
            color: "#fa755a",
            iconColor: "#fa755a"
        }
    };
    var card = elements.create("card", {
        style: style
    });
    card.mount("#card-element");
    card.addEventListener('change', ({
        error
    }) => {
        const displayError = document.getElementById('card-errors');
        if (error) {
            displayError.classList.add('alert', 'alert-warning');
            displayError.textContent = error.message;
        } else {
            displayError.classList.remove('alert', 'alert-warning');
            displayError.textContent = '';
        }
    });


    var submitButton = document.getElementById('submit');
    var form = document.getElementById('payment-form');
    form.addEventListener('submit', function (ev) {
        ev.preventDefault();
        //disable button after submit
        submitButton.disabled = true;
        stripe.confirmCardPayment("{{$clientSecret}}", {
            payment_method: {
                card: card,

            }
        }).then(function (result) {
            if (result.error) {
                // Show error to your customer (e.g., insufficient funds)

                submitButton.disabled = false;

                console.log(result.error.message);
            } else {
                // The payment has been processed!
                if (result.paymentIntent.status === 'succeeded') {
                    var paymentIntent = result.paymentIntent;
                    var token = document.querySelector('meta[name="csrf-token"]').getAttribute(
                        'content');
                    var form = document.getElementById('payment-form');
                    var url = form.action;
                    fetch(
                        url, {
                            headers: {
                                "content-Type": "application/json",
                                "accept": "application/json, text-plain, */*",
                                "X-Requested-With": "XMLHttpRequest",
                                "X-CSRF-TOKEN": token
                            },

                            method: 'POST',
                            body: JSON.stringify({
                                paymentIntent: paymentIntent

                            })
                        }
                    ).then((data) => {
                        if (data.status === 400) {
                            var redirect = '/panier';
                        } else {
                            var redirect = '/ThankYou';
                        }

                        window.location.href = redirect;


                    }).catch((error) => {
                        console.log(error)

                    })

                  //console.log(result.paymentIntent);
                }
            }

        });

    });

</script>

@endsection