<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description',
        'genre',
        'content',
        'length',
        'episodes'
    ];


    public function favorites()
    {
        return $this->hasMany(Favorite::class);
    }
}
