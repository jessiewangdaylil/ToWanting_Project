
 <div class="{{$class[0]}}">
    <div class="{{$class[1]}}">
        <p>{{__('Quantity')}}</p>
        @include('includes._cart_counter')
        <p>${{$item->price_new}}</p>
    </div>
@if ($item->stock == 0)
    <div class="{{$class[9]}}">
        <a href="#" class="btn_3">{{__('Sold out')}}</a>
    </div>
@else
    <div class="{{$class[9]}}">
        <a  class="btn_3"
        wire:click="addCart">{{__('Add to cart')}}</a>
    </div>
@endif
 <script>
    $('div.alert').not('.alert-important').delay(3000).fadeOut(350);
</script>
@include('flash::message')
</div>
