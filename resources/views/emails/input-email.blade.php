@extends('layouts.main')
 
@section('content')
<div class="row">
      <div class="position-absolute top-50 start-50 translate-middle col-sm-9 col-md-8 col-lg-6 col-xl-5">
         <div class="border p-4 rounded">
            <div>
            <h3 class="text-center">Quên Mật Khẩu?</h3>
               <p class="text-center text-secondary">Nhập địa chỉ email được liên kết với tài khoản của bạn.</p>
               <hr>
</div>
  <div class="container">
  @if(session('message'))
							<div class="alert alert-success">
									{{ session('message') }}
							</div>
		@endif
    <form action="{{route('postInputEmail')}}" method="post">
    @csrf
    
    

      <label for="" class="text-center">Email của bạn</label>
      <input type="text" name="txtEmail" id="" class="text-center text-secondary" placeholder="Nhập Email của bạn" aria-describedby="helpId" value="{{isset($request->txtEmail)?$request->txtEmail:''}}">
      
      <button type="submit" class="btn btn-dark col-12 mt-5">Reset Password</button>
   
  </div>
  
</body>
</html>
@endsection