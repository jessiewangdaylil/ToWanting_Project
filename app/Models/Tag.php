<?php

namespace App\Models;

use App\Models\Article;
use App\Models\Item;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    use HasFactory;
    public function Articles()
    {
        return $this->belongsToMany(Article::class);
    }
    public function Items()
    {
        return $this->belongsToMany(Item::class);
    }
}
