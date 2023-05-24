
 <div class="product_count">
    <span class="{{$decreClass}}">
      <i class="ti-minus" wire:click="decrement"></i>
    </span>
    <input class="{{$inputClass}}"  type="text" value="{{ $count }}" min="0"  >
    <span class="{{$increClass}}">
      <i class="ti-plus"  wire:click="increment"></i>
      </span>
  </div>





