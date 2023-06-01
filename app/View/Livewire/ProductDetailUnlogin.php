<?php

namespace App\View\Livewire;

use App\Models\Item;
use Livewire\Component;

class ProductDetailUnlogin extends Component
{
    public $item;
    public $count;
    public $stock;
    public $class;
    // public function addCart()
    // {
    //     session(['unloginCart', ["item" => $this->item, "count" => $this->count]]);
    // }
    public function getStock()
    {
        return Item::where('id', $this->item->id)->first()->stock;
    }
    public function mount()
    {
        $this->count = 1;
        $this->stock = $this->getStock();
    }
    public function render()
    {
        return view('livewire.product-detail-unlogin');
    }
}