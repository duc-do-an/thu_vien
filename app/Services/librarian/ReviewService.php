<?php

namespace App\Services\librarian;

use App\Interfaces\RoleInterface;
use App\Models\Review;

class ReviewService implements RoleInterface {
    public function fetchAllReview() {
        return Review::all();
    }}
