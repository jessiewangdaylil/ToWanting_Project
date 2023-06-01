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
                                <h2>{{$item->title}}</h2>
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

                <div class="col-lg-5 product_owl_cart_area">
                  <div class="product_img_slide owl-carousel">
                    @foreach ($item->picsArray as $pic)
                    <div class="single_product_img">
                        <img src="{{Voyager::image($pic)}}" alt="#" class="img-fluid">
                    </div>
                    @endforeach
                  </div>

              @if(Auth::check())
                  @livewire('product-detail',
                    [
                      'class'=>[
                        "card_area",
                        "product_count_area",
                        '',
                        "product_count d-inline-block",
                        "product_count_item number-decrement",
                        "ti-minus",
                        "product_count_item",
                        "product_count_item number-increment",
                        "ti-plus",
                        "add_to_cart"],
                      'item'=>$item
                    ],
                    key($item->id))
                </div>
                @else
                @livewire('product-detail-unlogin',
                    [
                      'class'=>[
                        "card_area",
                        "product_count_area",
                        '',
                        "product_count d-inline-block",
                        "product_count_item number-decrement",
                        "ti-minus",
                        "product_count_item",
                        "product_count_item number-increment",
                        "ti-plus",
                        "add_to_cart"],
                      'item'=>$item
                    ],
                    key($item->id))
                </div>
              @endif

                <div class="col-lg-7">
                <div class="single_product_text text-center">
                    {{-- <h3>{{$item->title}} </h3> --}}
                    <p>
                        {!!$item->chars!!}
                    </p>
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
                            <h2>專屬優惠送給你!</h2>
                            {{-- <p>Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources credibly innovate granular internal .</p> --}}
                            <div class="subscribe_form">
                                <input type="email" placeholder="Enter your mail">
                                <a href="#" class="btn_1">訂閱</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- subscribe part end -->

 @endsection
