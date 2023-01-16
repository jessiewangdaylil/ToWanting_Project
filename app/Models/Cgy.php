<?php

namespace App\Models;

use App\Models\Article;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cgy extends Model
{
    use HasFactory;
    public function articles()
    {
        return $this->hasMany(Article::class);
    }
    public function cgy()
    {
        return $this->belongsTo(cgy::class);
    }

}