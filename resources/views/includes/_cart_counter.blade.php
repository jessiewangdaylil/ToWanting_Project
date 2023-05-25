
    <div class="{{$class[3]}}">
      <span wire:click="decrement" class="{{$class[4]}}">
         <i class="{{$class[5]}}"></i>
      </span>
      <input class="{{$class[6]}}" wire:model="count" value="{{$count}}"
      wire:change="change"  type="text" min=0 max={{$stock}}>
      <span wire:click="increment" class="{{$class[7]}}">
         <i class="{{$class[8]}}"></i>
      </span>
    </div>
