@foreach ($items as $item)
@switch($loop->iteration)
    @case(1)
       <div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
    @break
    @case(2)
      <div class="col-xl-2 col-lg-3 col-md-4 col-sm-7">
    @break
    @case(3)
      <div class="col-xl-2 col-lg-3 col-md-5 col-sm-7">
    @break
    @default
      <div class="col-xl-2 col-lg-3 col-md-5 col-sm-7">
@endswitch
        <div class="single-footer-caption mb-50">
                <div class="footer-tittle">
                    <h4>{{$item->title}}</h4>
                    <ul>
                      @foreach ($item->children as $subitem)
                        <li><a href="{{url($subitem->link())}}">{{$subitem->title}}</a></li>
                      @endforeach
                    </ul>
                </div>
            </div>
        </div>
@endforeach
    </div>



