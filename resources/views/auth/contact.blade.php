@extends('layouts.main')
@section('title', 'Contact')

@section('content')
   <div class="row d-flex justify-content-center my-5">
      <div class="border p-4 rounded col-sm-10 col-md-10 col-lg-10 col-xl-8">
         <div class="">
            <h1 class="text-center fs-3">Liên Hệ</h1>
            <hr>
         </div>
         <form action="{{ route('contact.create') }}" method="POST" id="contactForm">
            @csrf      
            <div class="mb-3">
               <label for="email" class="form-label">Email của bạn</label>
               <input type="email" class="form-control input-field" id="email" name="email" aria-describedby="emailHelp" value="{{ old('email') }}">
               <div class="email-feedback"></div>
            <div class="mb-3">
               <label for="full_name" class="form-label">Họ Tên</label>
               <input type="text" class="form-control input-field" id="full_name" name="full_name" value="{{ old('full_name') }}">
               <div class="full_name-feedback"></div>   
            </div>
            <div class="mb-3">
               <label for="note" class="form-label">Mô tả</label>
               <input type="text" class="form-control input-field" id="note" name="note" value="{{ old('note') }}">
               <div class="note-feedback"></div>
            </div>
            </div>          
            <button type="submit" class="btn btn-dark col-12 mt-5" id="contactBtn">Send</button>
         </form>    
      </div>
   </div>
@endsection

@section('js-extra')
<script>
   $(document).ready(() => {
      $('#contactBtn').click((e) => {
         e.preventDefault();

         $.ajax({
            type: 'POST',
            url: "{{ route('contact.create') }}",
            data: new FormData($('#contactForm')[0]),
            dataType: 'json',
            processData: false,
            contentType: false,
            success: (response) => {
               window.location.href = "{{ route('login') }}"
            },
            error: (xhr, status, error) => {
               let response = JSON.parse(xhr.responseText);
               let inputFields = $('.input-field').map(function() {
                  return this.id;
               }).get();

               for (let inputField of inputFields) {
                  let errorMessage = response.errors[inputField];
                  if (response.errors.hasOwnProperty(inputField)) {
                     $('#' +inputField).removeClass('is-valid');
                     $('#' +inputField).addClass('is-invalid');
                     $('.' +inputField+ '-feedback').addClass('invalid-feedback').text(errorMessage);
                  } else {
                     $('#' +inputField).removeClass('is-invalid');
                     $('.' +inputField+ '-feedback').removeClass('invalid-feedback').text('');
                     $('#' +inputField).addClass('is-valid');
                  }
               }
            }
         });
      });
   });
</script>
@endsection