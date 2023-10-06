@extends('layouts.main')
@section('title', 'Librariant | Book Details')

@section('content')
   <div class="bg-cornsilk py-5">
      <div class="row mx-6 mb-4">
         <div class="col-lg-4 col-xl-3 px-4 d-flex justify-content-center">
            <div class="d-flex flex-column align-items-center mw-100" style="width: 240px; height: auto;">
               <img src="{{ asset('storage/' . $bookDetails->book_photo) }}" class="mw-100 h-auto rounded" alt="Book Photo">
               <div class="my-3 w-100">
                   @if (!$isLoaned)
                     <button type="submit" class="btn btn-dark w-100 mt-1 borrowBtn" data-book-id="{{ $bookDetails->id }}" data-book-quantity="{{ $bookDetails->quantity }}" data-book-status="{{ $bookStatus }}"><i class="bi bi-book-fill me-2"></i>Borrow</button>
                  @else
                     <button type="submit" class="btn btn-outline-dark w-100 mt-1 returnBookBtn" data-book-id="{{ $bookDetails->id }}"><i class="bi bi-reply-fill me-2"></i>Trả sách</button>
                  @endif
               </div>
           </div>
         </div>
         <div class="col-lg-8 col-xl-9">
            <h2 class="fw-semibold">{{ $bookDetails->book_title }}</h2>
            <h5 class="fw-normal text-secondary">{{ $bookDetails->author }}</h5>

            @livewire('book-detail-metrics', ['bookId' => $bookDetails->id, 'isBookmarked' => $isBookmarked])

            <h5 class="fw-normal mt-4">Summary:</h5>
            <h6 class="fw-normal mb-4">{{ $bookDetails->summary }}</h6>
            <div class="row mx-1">
               <button class="col-xl-4 btn btn-secondary btn-sm disabled me-2 my-1">Ngôn ngữ: {{ $bookDetails->language }}</button>
               <button class="col-xl-4 btn btn-secondary btn-sm disabled me-2 my-1">Thể loại: {{ $bookDetails->genre }}</button>
               <button class="col-xl-4 btn btn-secondary btn-sm disabled me-2 my-1">Trang: {{ $bookDetails->pages }} pages</button>
               <button class="col-xl-4 btn btn-secondary btn-sm disabled my-1">Xuất bản vào : {{ date('M d, Y', strtotime($bookDetails->publish_date)) }}</button>
            </div>
         </div>
      </div>
   </div>
   @livewire('book-reviews', ['bookId' => $bookDetails->id])
   @include('layouts.footer')
@endsection

@section('js-extra')
   <script>
      $(document).ready(function() {
         $('.borrowBtn').click(function() {
            let bookId = $(this).data('book-id');
            let bookQuantity = $(this).data('book-quantity');
            let bookStatus = $(this).data('book-status');
            const bookStatuses = {
               queued: {
                  icon: 'info',
                  title: 'Oops...',
                  text: 'Bạn đang ở trong danh sách xếp hàng, please wait!'
               },
               pending: {
                  icon: 'info',
                  title: 'Vui lòng chờ!',
                  text: 'Bạn đã mượn cuốn sách này trước đó và việc trả lại cuốn sách vẫn đang trong quá trình xác minh.'
               },
               limited: {
                  icon: 'error',
                  title: 'Đã đạt đến giới hạn sách!',
                  text: 'Rất tiếc, hiện tại bạn không thể mượn thêm sách nào nữa. Vui lòng trả lại một số sách trước khi mượn sách mới.'
               },
               denied: {
                  icon: 'error',
                  title: 'Quyền truy cập khoản mượn bị từ chối!',
                  text: "Rất tiếc, bạn sẽ không thể mượn bất kỳ cuốn sách nào vào lúc này. Vui lòng trả lại toàn bộ sách quá hạn trước khi tiếp tục vay mới."
               }
            };
            const statusMessage = bookStatuses[bookStatus];

            if (statusMessage) {
               Swal.fire(statusMessage);
            }else {
               Swal.fire({
                  icon: 'question',
                  title: 'Bạn có muốn mượn cuốn sách này không?',
                  showCancelButton: true,
                  cancelButtonColor: '#D33',
                  confirmButtonColor: '#3085D6',
                  confirmButtonText: 'Yes',
                  reverseButtons: true
               }).then(function(result) {
                  if (result.isConfirmed) {
                     if (bookQuantity > 0) {
                        $.ajax({
                           type: 'POST',
                           url: "{{ route('user.make_loan') }}",
                           data: {book_id: bookId},
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
                     }else {
                        Swal.fire({
                           icon: 'info',
                           title: 'Sorry... 😓',
                           text: 'Sách bạn đã chọn hiện không có sẵn. Bạn có muốn tham gia vào hàng đợi?',
                           showCancelButton: true,
                           cancelButtonColor: '#D33',
                           cancelButtonText: 'No',
                           confirmButtonColor: '#3085D6',
                           confirmButtonText: 'Yes',
                           reverseButtons: true
                        }).then(function(result) {
                           if (result.isConfirmed) {
                              $.ajax({
                                 type: 'POST',
                                 url: "{{ route('user.enqueue') }}",
                                 data: {book_id: bookId},
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
                           }else {
                              Swal.fire({
                                 icon: 'bay giờ mày muốn như nào',
                                 title: 'Lời xin lỗi của chúng tôi!',
                                 text: 'Chúng tôi xin lỗi về sự bất tiện này. Cảm ơn sự thông cảm của bạn. 🙂🙏',
                                 confirmButtonText: "Không sao đâu"
                              });
                           }
                        });
                     }
                  }
               });
            }
         });

         $('.returnBookBtn').click(function() {
            let bookId = $(this).data('book-id');

            Swal.fire({
               icon: 'ý bạn sao',
               title: 'Bạn có muốn trả lại cuốn sách này không?',
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

         let rateIndex = -1;
         $('.star').click(function() {
            rateIndex = $(this).data('index');
         });
         $('.star-update').click(function() {
            rateIndex = $(this).data('index');
         });

         $('.star').mouseover(function() {
            let currentIndex = $(this).data('index');
            
            for (let i=0; i<=currentIndex; i++) {
               $('.star').eq(i).removeClass('bi-star').addClass('bi-star-fill');
            }
         });
         $('.star-update').mouseover(function() {
            let currentIndex = $(this).data('index');
            
            for (let i=0; i<=currentIndex; i++) {
               $('.star-update').eq(i).removeClass('bi-star').addClass('bi-star-fill');
            }
         });

         $('.star').mouseleave(function() {
            $('.star').removeClass('bi-star-fill').addClass('bi-star');
            
            if (rateIndex != -1) {
               for (let i=0; i<=rateIndex; i++) {
                  $('.star').eq(i).removeClass('bi-star').addClass('bi-star-fill');
               }
            }
         });
         $('.star-update').mouseleave(function() {
            $('.star-update').removeClass('bi-star-fill').addClass('bi-star');
            
            let updateRate = $('#rating').val();
            if (rateIndex != -1) {
               updateRate = rateIndex + 1;
            }

            for (let i=0; i<=updateRate-1; i++) {
               $('.star-update').eq(i).removeClass('bi-star').addClass('bi-star-fill');
            }
         });

         $('.modal, #reviewBtn-close').click(function(e) {
            if ($(e.target).hasClass('modal') || $(e.target).hasClass('btn-close')) {
               $('.star').removeClass('bi-star-fill').addClass('bi-star');
               $('.submitReviewBtn').addClass('disabled');
               $('#addReviewForm')[0].reset();
               rateIndex = -1;
            }
         });

         Livewire.on('reviewAdded', () => {
            Swal.fire({
               icon: 'thành công',
               title: 'Đã thêm đánh giá thành công!'
            }).then(function() {
               $('#addReviewModal').modal('hide');
            });
         });

         Livewire.on('reviewUpdated', () => {
            Swal.fire({
               icon: 'thành công',
               title: 'Đã cập nhật đánh giá thành công!'
            }).then(function() {
               $('#editReviewModal').modal('hide');
            });
         });

         $('.comment-input').keyup(function(e) {
            e.preventDefault();

            $('.addCommentBtn').toggleClass('disabled', $(this).val().trim() === '');
         });
      });
   </script>
@endsection