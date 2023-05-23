@extends('layouts.master')
@section('title','首頁')
@section('content')
         <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>{{__('Shop Detail')}}</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        <!--================Single Product Area =================-->
        <div class="product_image_area">
            <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                <div class="product_img_slide owl-carousel">
                  @foreach ($item->picsArray as $pic)
                  <div class="single_product_img">
                      <img src="{{Voyager::image($pic)}}" alt="#" class="img-fluid">
                  </div>
                  @endforeach
                </div>
                </div>
                <div class="col-lg-8">
                <div class="single_product_text text-center">
                    <h3>{{$item->title}} </h3>
                    <p>
                        {!!$item->chars!!}
                    </p>
                    <div class="card_area">
                        <div class="product_count_area">
                            <p>{{__('Quantity')}}</p>
                            @livewire('counter',
                            ['count'=>1 ,
                            'increClass'=>'number-increment',
                            'decreClass'=>'number-decrement',
                            'inputClass'=>'product_count_item'])
                            {{-- <div class="product_count d-inline-block">
                                <span class="product_count_item inumber-decrement"> <i class="ti-minus"></i></span>
                                <input class="product_count_item input-number" type="text" value="1" min="0" max="10">
                                <span class="product_count_item number-increment"> <i class="ti-plus"></i></span>
                            </div> --}}
                            <p>${{$item->price_new}}</p>
                        </div>
                        @if ($item->stock == 0)
                            <div class="add_to_cart">
                                <a href="#" class="btn_3">{{__('Sold out')}}</a>
                            </div>
                        @else
                            <div class="add_to_cart">
                                <a href="#" class="btn_3">{{__('Add to cart')}}</a>
                            </div>
                        @endif

                    </div>
                </div>
                </div>
            </div>
            </div>
        </div>
        <!--================End Single Product Area =================-->
        <!-- subscribe part here -->
        <section class="subscribe_part section_padding">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="subscribe_part_content">
                            <h2>Get promotions & updates!</h2>
                            <p>Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources credibly innovate granular internal .</p>
                            <div class="subscribe_form">
                                <input type="email" placeholder="Enter your mail">
                                <a href="#" class="btn_1">Subscribe</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- subscribe part end -->

 @endsection
