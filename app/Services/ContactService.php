<?php

namespace App\Services\librarian;

use App\Models\Contact;
use Illuminate\Support\Facades\DB;

class ContactService {
  
   public function searchContact($request) {
      return Contact::where('question', 'like', '%'.$request->search_Contact.'%')->paginate(10);
   }
}