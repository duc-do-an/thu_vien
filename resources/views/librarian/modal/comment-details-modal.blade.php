@foreach ($comments as $user)
   <div class="modal fade" id="userDetailsModal-{{ $user->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-lg">
         <div class="modal-content">
            <div class="modal-header">
               <h1 class="modal-title fs-5" id="exampleModalLabel">Comment Details</h1>
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
               <div class="col-12">
                  <div class="mb-3">
                     <label for="full_name" class="col-form-label">Name:</label>
                     <input type="text" class="form-control input-field" value="{{ $user->user->full_name }}" disabled>
                  </div>
                  <div class="d-flex">
                     <div class="pe-3 mb-3 col-6">
                        <label for="username" class="col-form-label">review_id:</label>
                        <input type="text" class="form-control input-field" value="{{ $user->review_id}}" disabled>
                     </div>
                     <div class="ps-3 mb-3 col-6">
                        <label for="email" class="col-form-label">Raiting</label>
                        <input type="text" class="form-control input-field" value="{{ $user->comment }}" disabled>
                     </div>
                  </div>
                  
               </div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
         </div>
      </div>
   </div>
@endforeach