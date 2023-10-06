<?php

namespace App\Http\Controllers\librarian;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Services\librarian\CommentService;

class CommentController extends Controller
{
   private $loanService;

   public function __construct() {
      $this->CommentService = new CommentService;
   }

   public function  comments() {
    $comments = $this->CommentService->fetchAllComment();
    return view('librarian.comment', ['comments' => $comments]);
 }
}