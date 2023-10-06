<?php

namespace App\Services\librarian;

use App\Interfaces\RoleInterface;
use App\Models\Comment;

class CommentService implements RoleInterface {
    public function fetchAllComment() {
        return Comment::all();
    }}
