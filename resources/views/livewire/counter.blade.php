<tr>
  <td>
    <div class="{{$class[0]}}">
      <div class="{{$class[1]}}">
        <img src="{{Voyager::image($item->getFirstPic())}}" alt="" />
      </div>
      <div class="{{$class[2]}}">
       <a href="{{url("/product_details").'/'.$item->id}}"><p>{{$item->title}}</p></a>
      </div>
    </div>
  </td>
  <td>
    <h5>{{$item->price_new}}</h5>
  </td>

  <td>
        @include('includes._cart_counter')
    {{-- <div class="{{$class[3]}}">
      <span wire:click="decrement" class="{{$class[4]}}"> <i class="{{$class[5]}}"></i></span>
      <input wire:model="count" value="{{$count}}"
      wire:change="change"  type="text" min=0 max={{$stock}}>
      <span wire:click="increment" class="{{$class[6]}}"> <i class="{{$class[7]}}"></i></span>
    </div>--}}
  </td>
  <td>
    <h5>{{$subTotal}}</h5>
  </td>
  <td>

{{-- <span class="{{ti-trash}}" wire: wire:click="dropItemChange"> --}}

</span>
  </td>
</tr>





