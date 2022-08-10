<!DOCTYPE html>
<html lang="en">


<!-- login23:11-->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="{{url('public/assets/img/mini_logo.png')}}">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="{{url('public/assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('public/assets/css/font-awesome.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('public/assets/css/style.css')}}">
     
</head>

<body class="bg-info">
 
<div class="main-wrapper account-wrapper"> 
    <div class="account-page  "> 
		<div class="account-center">
			<div class="account-box w-75 h-auto rounded"> 
            <div class="row">
                <div class="col my-auto">
                    <img src="{{url('public/assets/img/login-img.png')}}" width="100%">
                </div>
               
                <div class="col my-auto">
                    <form method="post" action="{{url('login')}}" class="form-signin">
                        @csrf
                        <div class="account-logo">
                            <a href="index-2.html"><img src="{{ url('public/assets/img/mini_logo.png')}}" alt=""></a>
                        </div>
                        @if(Session::has('status'))
                        <div class="alert alert-danger text-center  ">
                            <span>
                                {{Session::get('status')}}
                            </span>
                        </div>
                        @endif
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" name="email" class="form-control" placeholder="Email">
                            @error('email')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="password" class="form-control" placeholder="Password">
                            @error('password')
                            <span class="text-danger">{{$message}}</span>
                            @enderror
                        </div>
                        <div class="form-group text-right">
                            <a href="forgot-password.html">Forgot your password?</a>
                        </div>
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-primary account-btn">Login</button>
                        </div>
                        <div class="text-center register-link">
                            Don’t have an account? <a href="{{ url('register') }}">Register Now</a>
                        </div>
                    </form> 
                </div>
            </div>        
                       
               
			</div>
        </div>
    </div>
</div>
    <script src="{{url('public/assets/js/jquery-3.2.1.min.js')}}"></script>
	<script src="{{url('public/assets/js/popper.min')}}.js"></script>
    <script src="{{url('public/assets/js/bootstrap.min.js')}}"></script>
    <script src="{{url('public/assets/js/app.js')}}"></script>
</body>


<!-- login23:12-->
</html>