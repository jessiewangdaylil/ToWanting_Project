<?php

namespace App\View\Livewire;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class Counter extends Component
{
    public $item;
    public $count;
    public $increClass;
    public $decreClass;
    public $inputClass;
    public function increment()
    {
        $this->count++;
        \Cart::session(Auth::user()->id)->update($this->item, array(
            'quantity' => 1,
        ));
    }
    public function decrement()
    {
        if ($this->count - 1 > 0) {
            $this->count--;
            \Cart::session(Auth::user()->id)->update($this->item, array(
                'quantity' => -1,
            ));

        }
    }

    public function render()
    {
        return view('livewire.counter');
    }
}