<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>Mini-CRM Giriş Səhifəsi</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
    <link rel="stylesheet" href="">

    

    <!-- Bootstrap core CSS -->
<link href="{{asset('backend/assets/dist/css/bootstrap.min.css')}}" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="{{asset('backend/css/signin.css')}}" rel="stylesheet">
  </head>
  <body class="text-center">
    
<main class="form-signin">
  <form method="POST" action="">
    @csrf
    <img class="mb-4"  src="{{asset('backend/assets/brand/bootstrap-logo.svg')}}" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">Giriş Səhifəsi</h1>
   
   
   
    <div class="form-floating">
      <input type="email" name="email"  class="form-control" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">Email address</label>
    </div>
    <div class="form-floating">
      <input type="password"  name="password" class="form-control" id="floatingPassword" placeholder="Şifrə">
      <label for="floatingPassword">Şifrə</label>
    </div>

    
    <button class="w-100 btn btn-lg btn-primary" type="submit">Giriş et</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
  </form>
</main>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script>
  

  toastr.options={
          "progressBar": true,
        }
  
</script>
@if($errors->any())
  @foreach ($errors->all() as $item)
      
      <script>
        toastr.error("{!! $item  !!}");
        
      </script>
  @endforeach
@endif 

@if (session('logout'))
<script>
  toastr.success("{!! session('logout')  !!}");
  
</script>
@endif
    
  </body>
</html>
