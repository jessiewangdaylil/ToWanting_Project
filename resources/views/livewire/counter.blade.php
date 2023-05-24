<tr>
  <td>
    <div class="media">
      <div class="d-flex">
        <img src="{{Voyager::image($item->getFirstPic())}}" alt="" />
      </div>
      <div class="media-body">
        <p>{{$item->title}}</p>
      </div>
    </div>
  </td>
  <td>
    <h5>{{$item->price_new}}</h5>
  </td>
  <td>
    <div class="product_count">
      <span class="input-number-decrement"> <i class="ti-minus"></i></span>
      <input class="input-number" type="text" value="{{$cart[$item->id]->quantity}}" min="0" max="10">
      <span class="input-number-increment"> <i class="ti-plus"></i></span>
    </div>
  </td>
  <td>
    <h5>$123</h5>
  </td>
</tr>





