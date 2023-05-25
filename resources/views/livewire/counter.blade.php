<tr>
  <td>
    <div class="media">
      <div class="d-flex">
        <img src="{{Voyager::image($item->getFirstPic())}}" alt="" />
      </div>
      <div class="media-body">
       <a href="{{url("/product_details").'/'.$item->id}}"><p>{{$item->title}}</p></a>
      </div>
    </div>
  </td>
  <td>
    <h5>{{$item->price_new}}</h5>
  </td>
  <td>
    <div class="product_count">
      <span wire:click="decrement" class="input-number-decrement"> <i class="ti-minus"></i></span>
      <input wire:model="count"
      wire:change="change" type="text" min=0 max={{$stock}}>
      <span wire:click="increment" class="input-number-increment"> <i class="ti-plus"></i></span>
      {{-- {{$count}} --}}
    </div>
  </td>
  <td>
    <h5>{{$subTotal}}</h5>
  </td>
</tr>





