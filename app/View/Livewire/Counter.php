<?php

namespace App\View\Livewire;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class Counter extends Component
{
    public $item;
    public $cart;
    public $subtotal;

    public function increment()
    {

    }
    public function decrement()
    {

    }
    public function mount()
    {
        $this->subtotal = \cart::session(Auth::user()->id)->getContent->where('id', $this->id)->first();
    }

    public function render()
    {
        return view('livewire.counter');
    }
}
