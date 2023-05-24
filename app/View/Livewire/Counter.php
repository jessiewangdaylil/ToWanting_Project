<?php

namespace App\View\Livewire;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class Counter extends Component
{
    public $item;
    public $count;
    public $cart;
    public $subTotal;
    public $search;
    //視圖佈局
    public $increClass;
    public $decreClass;
    public $inputClass;
    public function increment()
    {
        $this->count++;
        \Cart::session(Auth::user()->id)->update($this->item, array(
            'quantity' => 1,
            'attribute' => array(),
        ));
        $this->subTotal = \Cart::session(Auth::user()->id)->getContent()->where('id', $this->item)->first()->getPriceSum();
        $this->emit('subTotal', $this->subTotal);
    }
    public function decrement()
    {
        if ($this->count - 1 > 0) {
            $this->count--;
            $this->subTotal = $this->count * $this->cart[$this->item]["price"];
            \Cart::session(Auth::user()->id)->update($this->item, array(
                'quantity' => -1,
            ));
            $this->emit('subTotal', $this->subTotal);

        }
    }
    public function mount()
    {
        $this->subTotal = \Cart::session(Auth::user()->id)->getContent()->where('id', $this->item)->first()->getPriceSum();
    }

    public function render()
    {
        return view('livewire.counter');
    }
}
