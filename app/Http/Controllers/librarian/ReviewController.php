<?php

namespace App\Http\Controllers\librarian;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Services\librarian\ReviewService;

class ReviewController extends Controller
{
   private $loanService;

   public function __construct() {
      $this->ReviewService = new ReviewService;
   }

   public function  reviews() {
    $reviews = $this->ReviewService->fetchAllReview();
    return view('librarian.review', ['reviews' => $reviews]);
 }
}