<?php

namespace App\View\Livewire;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class Total extends Component
{
    public $total;
    protected $listeners = ['increment' => 'total',
        'decrement' => 'total'];

    public function total()
    {
        $this->total = $this->getTotal();
    }
    public function mount()
    {
        $this->total = $this->getTotal();
    }
    public function getTotal()
    {
        return \Cart::session(Auth::user()->id)->getTotal();
    }
    public function render()
    {
        return view('livewire.total');
    }
}