@extends('layouts.master2')

@section('content')
<div class="container">


 <div class="col-md-12 pt-5  ">
	<div class="contact-wrap" style=" padding : 2% 20%">
		<h3 class="text-center mt-5">Create Your Account</h3>
		<form method="POST" action="{{ route('register') }}" >
			@csrf
			<div class="row form-group mt-5 ">
				<div class="col-md-12 padding-bottom ">
					<label for="name" class="mb-3"> Name</label>
					<input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus placeholder=" Your name"  >
					@error('nom')
					<div class="invalid-feedback">{{ $message }}</div>
					@enderror
				</div>
			</div>

			<div class="row form-group mt-5 "> 
				<div class="col-md-12">
					<label for="email" class="mb-3">Email</label>
					<input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder=" Your email address" >
					@error('email')
					<div class="invalid-feedback">{{ $message }}</div>
					@enderror
				</div>
            </div> 
            
			<div class="row form-group mt-5 ">
				<div class="col-md-12">
					<label for="password" class="mb-3">Password</label>
					<input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" placeholder=" your new password" >
					@error('password')
					<div class="invalid-feedback">{{ $message }}</div>
					@enderror
				</div>
			</div>

			<div class="row form-group mt-5 ">
				<div class="col-md-12">
					<label for="password-confirm" class="mb-3">Confirme Password</label>
					<input type="password"type="password" class="form-control" name="password_confirmation" required autocomplete="new-password"  placeholder="comfirme your password">
				</div>
			</div>

			<div class="form-group text-center">
				<input type="submit" value="SignUp" class="btn btn-primary mt-5 pl-5 pr-5" style= "border-radius: 30px; font-size: 20px;  background: #FFC300; color: #fff ;  border: 1px solid #FFC300;  ">
            </div>
            
		</form>
	</div>
</div>
</div>
@endsection
