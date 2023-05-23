<?php

namespace App\View\Livewire;

use Livewire\Component;

class SubTotal extends Component
{

    public $cart;
    public $item;

    public function update()
    {

    }
    public function render()
    {
        return view('livewire.sub-total');
    }
}