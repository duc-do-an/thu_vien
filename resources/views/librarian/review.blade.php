@extends('layouts.librarian.main')
@section('title', 'Librarian | Loans')

@section('content')
      <div class="m-4">
         <div class="table-responsive">
            <table class="table table-hover border">
               <thead class="align-middle">
                  <tr>
                     <th scope="col" class="border text-center">id</th>
                     <th scope="col" class="border text-center">Name</th>
                     <th scope="col" class="border text-center">Book Title</th>
                     <th scope="col" class="border text-center">Raiting</th>
                     <th scope="col" class="border text-center">Review</th>
                     <th scope="col" class="border text-center">like</th>
                     <th scope="col" class="border text-center">Action</th>
                  </tr>
               </thead>
               <tbody>
                  @foreach ($reviews as $item)
                     <tr class="align-middle">
                        <td class="border text-center">{{ $item->id }}</td>
                        <td class="border text-center">{{ $item->user->full_name }}</td>
                        <td class="border text-center">{{ $item->book->book_title}}</td>
                      
                        <td class="border text-center">{{ $item->rating}}</td>
                        <td class="border text-center">{{ $item->review}}</td>
                        <td class="border text-center">{{ $item->like_count}}</td>
                        <td class="border text-center"> 
                            <button class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#userDetailsModal-{{ $item->id }}"><i class="bi bi-info-circle-fill me-2"></i>View Details</button>
                    </td>
                        
                     </tr>
                  @endforeach
               </tbody>
            </table>
         </div>
      </div>
      <div class="d-flex justify-content-center align-items-center mx-5">
       
      </div>
      
   
      @include('librarian.modal.review-details-modal')
@endsection