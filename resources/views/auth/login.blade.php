@extends('layouts.master2')

@section('content')

<div class="container">   
 <div class="col-md-12 pt-5  ">
    <div class="contact-wrap" style=" padding : 2% 20%">
    	<h3 class="text-center mt-5">   Login </h3>
                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="row form-group mt-5 ">
                            <div class="col-md-12 padding-bottom ">
                                <label for="email" class="mb-3"
                                    class="col-form-label text-md-right">{{ __('E-Mail Address') }}</label>
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                                    name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder=" Your email address">

                                @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>


                        <div class="row form-group mt-5 ">
                            <div class="col-md-12">
                                <label for="password" class="mb-3"
                                    class=" col-form-label text-md-right">{{ __('Password') }}</label>
                                <input id="password" type="password"
                                    class="form-control @error('password') is-invalid @enderror" name="password"
                                    required autocomplete="current-password"  placeholder=" your password" >
                                @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div> 

                   
			<div class="form-group text-center">
				<input type="submit" value="Login" class="btn btn-primary mt-5 pl-5 pr-5" style= "border-radius: 30px; font-size: 20px;  background: #FFC300; color: #fff ;  border: 1px solid #FFC300;  ">
            </div>

                    </form>
</div>
</div>
@endsection