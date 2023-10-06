@extends('layouts.main')
@section('title', 'Librariant | Loans')

@section('content')
   @if ($loanedBooks->isEmpty() && $unconfirmedReturns->isEmpty() && $queues->isEmpty())
      <div class="d-flex justify-content-center align-items-center m-6" style="height: 54.2vh">
         <h1 class="text-secondary">🚫 Hiện tại không có ai mượn sách.</h1>
      </div>
   @else
      @if ($renewableLoans->isNotEmpty())
         <div class="bg-cornsilk py-5">
            <div class="mx-6">
               <div class="px-4">
                  <h2 class="">Gia hạn mượn sách</h2>
                  <p class="fw-normal lh-sm my-3">Cần thêm một chút thời gian đọc? Hãy nhớ rằng, bạn có thể yêu cầu gia hạn sách đã mượn trong vòng <b>10 ngày</b> sau ngày mượn.</p>
                  <div class="bg-white rounded px-5 py-3 ">
                     <form action="" method="POST" enctype="multipart/form-data" id="loanRenewalForm" class="d-flex align-items-end justify-content-between">
                        @csrf
                        <div class="w-75">
                           <label for="selected_loan" class="col-form-label">Chọn sách mượn để gia hạn:</label>
                           <select class="form-select text-center" aria-label="Default select example" id="selected_loan" name="selected_loan">
                              @foreach ($renewableLoans as $renewableLoan)
                                 <option value="{{ $renewableLoan->id }}">{{ $renewableLoan->book->book_title }}</option>
                              @endforeach
                           </select>
                        </div>
                        <div class="ms-3 w-30">
                           <label for="renewed_due_date" class="col-form-label">Ngày đáo hạn được gia hạn:</label>
                           <input type="date" class="form-control input-field" id="renewed_due_date" name="renewed_due_date" value="{{ old('renewed_due_date') }}">
                           <div class="renewed_due_date-feedback"></div>
                        </div>
                        <button type="submit" class="btn btn-dark ms-3">Lời yêu cầu</button>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      @endif
      @if ($loanedBooks->isNotEmpty())
         <div class="mx-6 my-5">
            <div class="mx-4">
               <h2 class="pb-3">Khoản mượn sách của tôi</h2>
               <div class="table-responsive">
                  <table class="table table-hover border">
                     <thead class="align-middle">
                        <tr>
                           <th scope="col" class="border text-center">Xem trước sách</th>
                           <th scope="col" class="border text-center">Tên sách</th>
                           <th scope="col" class="border text-center">Ngày cho mượn</th>
                           <th scope="col" class="border text-center">Ngày đáo hạn</th>
                           <th scope="col" class="border text-center">Hoạt động</th>
                        </tr>
                     </thead>
                     <tbody>
                        @foreach ($loanedBooks as $loanedBook)
                           <tr class="align-middle">
                              <td class="border text-center"><img src="{{ asset('storage/' . $loanedBook->book->book_photo) }}" alt="Book Preview" width="60px" height="70px"></td>
                              <td class="border text-center w-30">{{ $loanedBook->book->book_title }}</td>
                              <td class="border text-center">{{ date('M d, Y', strtotime($loanedBook->loanHeader->loan_date)) }}</td>
                              <td class="border text-center">{{ date('M d, Y', strtotime($loanedBook->due_date)) }}</td>
                              <td class="border text-center">
                                 <button type="submit" class="btn btn-outline-dark col-7 mt-1 returnBookBtn" data-book-id="{{ $loanedBook->book->id }}"><i class="bi bi-reply-fill"></i> Trả sách</button>
                              </td>
                           </tr>
                        @endforeach
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      @endif
      @if ($unconfirmedReturns->isNotEmpty())
         <div class="mx-6 my-5">
            <div class="mx-4">
               <h2 class="pb-3">Sách trả lại chưa được xác nhận</h2>
               <div class="table-responsive">
                  <table class="table table-hover border">
                     <thead class="align-middle">
                        <tr>
                           <th scope="col" class="border text-center">Xem trước sách</th>
                           <th scope="col" class="border text-center">Tên sách</th>
                           <th scope="col" class="border text-center">Ngày trả lại</th>
                        </tr>
                     </thead>
                     <tbody>
                        @foreach ($unconfirmedReturns as $unconfirmedReturn)
                           <tr class="align-middle">
                              <td class="border text-center"><img src="{{ asset('storage/' . $unconfirmedReturn->book->book_photo) }}" alt="Book Preview" width="60px" height="70px"></td>
                              <td class="border text-center">{{ $unconfirmedReturn->book->book_title }}</td>
                              <td class="border text-center">{{ date('M d, Y', strtotime($unconfirmedReturn->due_date)) }}</td>
                           </tr>
                        @endforeach
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      @endif
      @if ($queues->isNotEmpty())
         <div class="mx-6 my-5">
            <div class="mx-4">
               <h2 class="pb-3">Hàng đợi</h2>
               <div class="table-responsive">
                  <table class="table table-hover border">
                     <thead class="align-middle">
                        <tr>
                        <th scope="col" class="border text-center">Xem trước sách</th>
                           <th scope="col" class="border text-center">Tên sách</th>
                           <th scope="col" class="border text-center">Tác giả</th>
                           <th scope="col" class="border text-center">Hoạt động</th>
                        </tr>
                     </thead>
                     <tbody>
                        @foreach ($queues as $queue)
                           <tr class="align-middle">
                              <td class="border text-center"><img src="{{ asset('storage/' . $queue->book->book_photo) }}" alt="Book Preview" width="60px" height="70px"></td>
                              <td class="border text-center">{{ $queue->book->book_title }}</td>
                              <td class="border text-center">{{ $queue->book->author }}</td>
                              <td class="border text-center">
                                 <button type="submit" class="btn btn-outline-dark col-6 mt-1 cancelQueueBtn" data-queue-id="{{ $queue->id }}" ><i class="bi bi-x-circle-fill me-2"></i>Hủy bỏ</button>
                              </td>
                           </tr>
                        @endforeach
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      @endif
   @endif
   @include('layouts.footer')
@endsection

@section('js-extra')
   <script>
      $(document).ready(function() {
         $('.returnBookBtn').click(function() {
            let bookId = $(this).data('book-id');

            Swal.fire({
               icon: 'question',
               title: 'Are you want to return this book?',
               showCancelButton: true,
               cancelButtonColor: '#D33',
               confirmButtonColor: '#3085D6',
               confirmButtonText: 'Yes',
               reverseButtons: true
            }).then(function(result) {
               if (result.isConfirmed) {
                  $.ajax({
                     type: 'POST',
                     url: "{{ route('user.return_book') }}",
                     data: {book_id: bookId},
                     dataType: 'json',
                     success: function(response) {
                        Swal.fire({
                           icon: 'success',
                           title: 'Thank you 🙏',
                           text: response.message
                        }).then(function() {
                           location.reload();
                        });
                     },
                     error: function(xhr, status, error) {
                        let response = JSON.parse(xhr.responseText);
                        console.log(response.message);
                     }
                  });
               }
            });
         });

         $('.cancelQueueBtn').click(function() {
            let queueId = $(this).data('queue-id');

            Swal.fire({
               icon: 'question',
               title: 'Bạn có chắc chắn về việc hủy hàng đợi này không?',
               showCancelButton: true,
               cancelButtonColor: '#D33',
               confirmButtonColor: '#3085D6',
               confirmButtonText: 'Yes',
               reverseButtons: true
            }).then(function(result) {
               if (result.isConfirmed) {
                  $.ajax({
                     type: 'DELETE',
                     url: "{{ route('user.cancel_queue') }}",
                     data: {queue_id: queueId},
                     dataType: 'json',
                     success: function(response) {
                        Swal.fire({
                           icon: 'success',
                           title: response.message
                        }).then(function() {
                           location.reload();
                        });
                     },
                     error: function(xhr, status, error) {
                        let response = JSON.parse(xhr.responseText);
                        console.log(response.message);
                     }
                  });
               }
            });
         });

         $('#loanRenewalForm').submit(function(e) {
            e.preventDefault();

            let loanRenewalRequest = this;

            Swal.fire({
               icon: 'question',
               title: 'Bạn có chắc chắn muốn gia hạn khoản vay này không?',
               showCancelButton: true,
               cancelButtonColor: '#D33',
               confirmButtonColor: '#3085D6',
               confirmButtonText: 'Yes',
               reverseButtons: true
            }).then(function(result) {
               if (result.isConfirmed) {
                  $.ajax({
                     type: 'POST',
                     url: "{{ route('user.renew_loan') }}",
                     data: new FormData(loanRenewalRequest),
                     dataType: 'json',
                     processData: false,
                     contentType: false,
                     success: function(response) {
                        Swal.fire({
                           icon: 'success',
                           title: '📩 Yêu cầu đã được chuyển tiếp!',
                           text: response.message
                        }).then(function() {
                           $('#loanRenewalForm')[0].reset();
                           location.reload();
                        });
                     },
                     error: function(xhr, status, error) {
                        let response = JSON.parse(xhr.responseText);
                        console.log(response);
                        let inputFields = $('.input-field').map(function() {
                           return this.id;
                        }).get();

                        for (let inputField of inputFields) {
                           let errorMessage = response.errors[inputField];
                           if (response.errors.hasOwnProperty(inputField)) {
                              Swal.fire({
                                 icon: 'error',
                                 title: 'Invalid Input!',
                                 text: 'Hãy đảm bảo rằng bạn đã điền vào trường ngày đáo hạn được gia hạn và ngày được chọn nằm trong vòng tối đa một tuần kể từ ngày đáo hạn hiện tại.'
                              });
                           }
                        }
                     }
                  });
               }
            });
         });
      });
   </script>
@endsection