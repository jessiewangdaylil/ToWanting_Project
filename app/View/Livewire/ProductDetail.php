<?php

namespace App\View\Livewire;

use App\Models\Item;
use Exception;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class ProductDetail extends Component
{

    public $item;
    public $subTotal;
    public $count;
    public $stock;
    public $class;
    public function addCart()
    {
        // dd($this->item->title)
        try {
            if (!\Cart::session(Auth()->user()->id)->isEmpty()) {
                if ($this->isAvaliItem()) {
                    \Cart::session(Auth::user()->id)->update($this->item->id, array(
                        'quantity' => $this->count,
                    ));
                } else {
                    \Cart::session(Auth::user()->id)->add(array(
                        'id' => $this->item->id,
                        'name' => $this->item->title,
                        'price' => $this->item->price_new,
                        'quantity' => $this->count,
                        'attributes' => array(),
                        'associatedModel' => $this->item->id,
                    ));
                }
            } else {
                \Cart::session(Auth::user()->id)->add(array(
                    'id' => $this->item->id,
                    'name' => $this->item->title,
                    'price' => $this->item->price_new,
                    'quantity' => $this->count,
                    'attributes' => array(),
                    'associatedModel' => $this->item->id,
                ));
            }
            flash('已加入購物車!')->success();
            $this->emit('addCart');
        } catch (Exception $e) {

        }
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
        if (!\Cart::session(Auth()->user()->id)->isEmpty()) {
            if ($this->isAvaliItem()) {
                if ($this->count + 1 + $this->getQuantity() <= $this->getstock()) {
                    $this->count++;
                } else {
                    $this->count = $this->getstock();
                }
            } else {
                if ($this->count + 1 <= $this->getstock()) {
                    $this->count++;
                } else {
                    $this->count = $this->getstock();
                }
            }
        } else {
            if ($this->count + 1 <= $this->getstock()) {
                $this->count++;
            } else {
                $this->count = $this->getstock();
            }
        }
    }
    public function decrement()
    {
        if (!\Cart::session(Auth()->user()->id)->isEmpty()) {
            if ($this->isAvaliItem()) {
                if ($this->count - 1 + $this->getQuantity() >= 1) {
                    $this->count--;
                } else {
                    $this->count = 1;
                }
            } else {
                if ($this->count - 1 >= 1) {
                    $this->count--;
                } else {
                    $this->count = 1;
                }
            }
        } else {
            if ($this->count - 1 >= 1) {
                $this->count--;
            } else {
                $this->count = 1;
            }
        }
    }
    public function getSubTotal()
    {
        return \Cart::session(Auth::user()->id)->getContent()->where('id', $this->item->id)->first()->getPricesum();
    }
    public function getQuantity()
    {
        return $this->getCart()->where('id', $this->item->id)->first()->quantity;
    }
    public function isAvaliItem()
    {
        return $this->getCart()->where('id', $this->item->id)->first() != null;
    }
    public function getStock()
    {
        return Item::where('id', $this->item->id)->first()->stock;
    }
    public function getCart()
    {

        return \Cart::session(Auth::user()->id)->getContent();
    }
    public function mount()
    {
        if (!\Cart::session(Auth()->user()->id)->isEmpty()) {
            if ($this->isAvaliItem()) {
                $this->count = $this->getQuantity();
                $this->subTotal = $this->getSubTotal();
            } else {
                $this->count = 1;
                $this->subTotal = 0;
            }
        } else {
            $this->count = 1;
            $this->subTotal = 0;
        }
    }
    public function render()
    {
        return view('livewire.product-detail');
    }
}
