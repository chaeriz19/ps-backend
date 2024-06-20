<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Content;
use App\Models\User;

class Favorite extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'content_id',
    ];

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function content() {
        return $this->belongsTo(Content::class);
    }
}
