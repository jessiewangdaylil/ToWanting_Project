<?php

namespace App\Models;

use App\Models\Article;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    public function Article()
    {
        return $this->belongsTo(Article::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    protected $fillable = ['name', 'email', 'content', 'article_id', 'user_id'];
}