<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Element extends Model
{
    use HasFactory;
    public function User()
    {
        return $this->belongsTo(User::class);
    }
    public function getFirstPic()
    {
        $pics = json_decode($this->pic, true);
        if (is_array($pics) && count($pics) > 0) {
            return $pics[0];
        } else {
            return null;
        }
    }
    public function getJsonDecodeAttribute()
    {
        return json_decode($this->content, true);
    }
}
