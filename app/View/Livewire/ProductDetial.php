<?php

namespace App\View\Livewire;

use App\Models\Item;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class ProductDetial extends Component
{

    public $item;
    public $cart;
    public $subTotal;
    public $count;
    public $stock;
    public $class;
    public function addCart()
    {
        \Cart::session(Auth::user()->id)->update($this->item->id, array(
            'quantity' => $this->count,
        ));
        $this->emit('addCart');
    }
    public function change()
    {
        // dd($this->count);
        if ($this->count + $this->getQuantity() < $this->getStock()) {
            //
        } else {
            $this->count = $this->getStock();
        }
    }
    public function increment()
    {
        if ($this->count + 1 + $this->getQuantity() <= $this->getstock()) {
            $this->count++;
        } else {
            $this->count = $this->getstock();
        }
    }
    public function decrement()
    {
        if ($this->count - 1 + $this->getQuantity() >= 1) {
            $this->count--;
        }
    }

    // public function getSubTotal()
    // {
    //     return \Cart::session(Auth::user()->id)->getContent()->where('id', $this->item->id)->first()->getPricesum();
    // }
    public function getQuantity()
    {
        return \Cart::session(Auth::user()->id)->getContent()->where('id', $this->item->id)->first()->quantity;
    }

    public function getStock()
    {
        // dd(Item::where('id', $this->item->id)->first()->stock);
        return Item::where('id', $this->item->id)->first()->stock;
    }
    public function mount()
    {
        $this->count = $this->cart[$this->item->id]->quantity;
        $this->subTotal = $this->getSubTotal();
    }
    public function render()
    {
        return view('livewire.product-detial');
    }
}