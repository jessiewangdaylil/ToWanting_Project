<?php

namespace App\Models;

use App\Models\Cgy;
use App\Models\Tag;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;
    public function Cgy()
    {
        return $this->hasOne(Cgy::class);
    }
    public function Tags()
    {
        return $this->belongsTomany(Tag::class);
    }
    public function User()
    {
        return $this->belongsTo(User::class);
    }
}