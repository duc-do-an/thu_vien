<?php

namespace App\Services\librarian;

use App\Interfaces\RoleInterface;
use App\Models\Email;

class EmailService implements RoleInterface {
   public function fetchAllEmail() {
      return Email::all()->where('role_id', self::Email);
   }
}