 @foreach ($items as $item)
                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                                <div class="single-popular-items mb-50 text-center">
                                    <div class="popular-img">
                                        <img src="{{Voyager::image($item->getFirstPic())}}" alt="">
                                        <div class="img-cap">
                                          @if ($item->stock > 0)
                                            <a href="{{url('/add_item/'.$item->id)}}"><span>{{__('Add to cart')}}</span></a>
                                          @else
                                            <span>{{__('Sold out')}}</span>
                                          @endif
                                        </div>
                                        <div class="favorit-items">
                                            <span class="flaticon-heart"></span>
                                        </div>
                                    </div>
                                    <div class="popular-caption">
                                        <h3><a href="{{url('/product_details/'.$item->id)}}">{{$item->title}}</a></h3>
                                        <span>${{$item->price_new}}</span>
                                    </div>
                                </div>
                            </div>
                          @endforeach
