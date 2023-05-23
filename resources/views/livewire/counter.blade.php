
  {{-- <div class="product_count"> --}}

  {{-- <div style="text-align:center">
     <button wire:click="increment">+</button>
     <h1>{{ $count }}</h1>
     <button wire:click="decrement">-</button>
  </div> --}}

{{-- </div> --}}


 <div class="product_count">
    <span class="{{$decreClass}}">
      <i class="ti-minus" wire:click="decrement"></i>
    </span>
    <input class="{{$inputClass}}" type="text" value="{{ $count }}" min="0"  >
    <span class="{{$increClass}}">
      <i class="ti-plus" wire:click="increment"></i>
      </span>
  </div>






