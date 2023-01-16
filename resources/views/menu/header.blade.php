<ul id="navigation">
  @foreach ($items as $item)
    <li><a href="{{url($item->link())}}">{{$item->title}}</a>
     @if (isset($item->children) && count ($item->children) > 0)
      <ul class="submenu">
        @foreach ($item->children as $subitem)
            <li><a href="{{url($subitem->link())}}">{{$subitem->title}}</a></li>
        @endforeach
      </ul>
    @endif
    </li>
  @endforeach
</ul>
