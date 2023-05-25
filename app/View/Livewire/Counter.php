<?php

namespace App\View\Livewire;

use App\Models\Item;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class Counter extends Component
{
    public $item;
    public $cart;
    public $subTotal;
    public $count;
    public $stock;
    public function change()
    {
        if ($this->count < $this->getStock()) {
            \Cart::session(Auth::user()->id)->update($this->item->id, array(
                'quantity' => $this->count - $this->getQuantity(),
            ));
        } else {
            $this->count = $this->getStock();
        }

        $this->subTotal = $this->getSubTotal();
    }
    public function increment()
    {
        $this->count++;
        \Cart::session(Auth::user()->id)->update($this->item->id, array(
            'quantity' => 1,
        ));
        $this->subTotal = $this->getSubTotal();
        $this->emit('increment');
    }
    public function decrement()
    {
        if ($this->count - 1 >= 1) {
            $this->count--;
            \Cart::session(Auth::user()->id)->update($this->item->id, array(
                'quantity' => -1,
            ));
            $this->subTotal = $this->getSubTotal();
        }
        $this->emit('decrement');
    }
    public function mount()
    {
        $this->count = $this->cart[$this->item->id]->quantity;
        $this->subTotal = $this->getSubTotal();

    }
    public function getSubTotal()
    {
        return \Cart::session(Auth::user()->id)->getContent()->where('id', $this->item->id)->first()->getPricesum();
    }
    public function getQuantity()
    {
        return \Cart::session(Auth::user()->id)->getContent()->where('id', $this->item->id)->first()->quantity;
    }
    public function getStock()
    {
        // Item::where('id', $this->item->id)->first()->stock;
        dd(Item::where('id', $this->item->id)->first()->stock);
    }

    public function render()
    {
        return view('livewire.counter');
    }
}