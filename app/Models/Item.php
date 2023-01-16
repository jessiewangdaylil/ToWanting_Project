<?php

namespace App\Models;

use App\Models\Cgy;
use App\Models\Order;
use App\Models\Tag;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;
    public function Cgy()
    {
        return $this->belongsTo(Cgy::class);
    }
    public function Tags()
    {
        return $this->belongsToMany(Tag::class);
    }
    public function Orders()
    {
        return $this->belongsToMany(Order::class);
    }
    public function getFirstPic()
    {
        $pics = json_decode($this->pics, true);
        if (is_array($pics) && count($pics) > 0) {
            return $pics[0];
        } else {
            return null;
        }
    }
    public function getPicsArrayAttribute()
    {
        $pics = json_decode($this->pics, true);
        return $pics;
    }
}
