<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Element extends Model
{
    use HasFactory;

    public function getFirstPic()
    {
        $havePics = strstr($this->pic, '[');
        if ($havePics) {

            $pic = json_decode($this->pic, true);
            if (is_array($pic) && count($pic) > 0) {
                return $pic[0];
            } else {
                return null;
            }
        } else {
            return $this->pic;

        }
    }
    public function getFirstIcon()
    {
        $haveIcons = strstr($this->icon, '[');
        if ($haveIcons) {

            $icon = json_decode($this->icon, true);
            if (is_array($icon) && count($icon) > 0) {
                return $icon[0];
            } else {
                return null;
            }
        } else {
            return $this->icon;

        }
    }
}
