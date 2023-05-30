
 <div class="{{$class[0]}}">
    <div class="{{$class[1]}} d-flex flex-column align-items-center">

      <div class="row">
        <div class="col-md-12 d-flex flex-column align-items-center">
          <p>單價${{$item->price_new}}</p>
          <br>
          <p>{{__('Quantity')}}</p>
          @include('includes._cart_counter')
        </div>
      </div>

    </div>

@if ($item->stock == 0)
    <div class="{{$class[9]}} d-flex align-items-center justify-content-center">
        <a href="#" class="btn_3">{{__('Sold out')}}</a>
    </div>
@else
    <div class="{{$class[9]}} d-flex align-items-center justify-content-center">
        <a  class="btn_3"
        wire:click="addCart">{{__('Add to cart')}}</a>
    </div>
@endif
 <script>
    $('div.alert').not('.alert-important').delay(1000).fadeOut(200);
</script>
@include('flash::message')
</div>
