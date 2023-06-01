@extends('layouts.master')
@section('title','首頁')
@section('content')
      <!-- Hero Area Start-->
        {{-- <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>{{__('Shop')}}</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> --}}
<div class="carousel-wrapper">
  <div id="carouselExample" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="{{asset('img/gallery/banner1.png')}}" alt="">
        </div>
        <div class="carousel-item">
            <img src="{{asset('img/gallery/banner2.png')}}" alt="">

        </div>
        <div class="carousel-item">
            <img src="{{asset('img/gallery/banner3.png')}}" alt="">
        </div>
    </div>

    <ol class="carousel-indicators">
        <li data-target="#carouselExample" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExample" data-slide-to="1"></li>
        <li data-target="#carouselExample" data-slide-to="2"></li>
    </ol>

    <a class="carousel-control-prev" href="#carouselExample" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExample" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
  </div>
</div>

        <!-- Hero Area End-->


        {{-- 訊息跑馬燈 --}}
       <div class="marquee-bg">
        <div class="marquee">
          <div class="marquee-content">
            <!-- 在此放置跑馬燈的內容 -->
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <span>Memora&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>


            {{-- <span></span> --}}
          </div>
        </div>
      </div>



        {{-- 訊息跑馬燈end --}}



        <!-- Latest Products Start -->
        <section class="popular-items latest-padding">
            <div class="container">
                <div class="row product-btn justify-content-between mb-40">
                    <div class="properties__button">
                        <!--Nav Button  -->
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">{{$rlImCgy->title}}</a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false"> {{$vlImCgy->title}}</a>
                                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false"> {{__("Most populer")}} </a>
                            </div>
                        </nav>
                        <!--End Nav Button  -->
                    </div>
                    <!-- Grid and List view -->
                    <div class="grid-list-view">
                    </div>
                    <!-- Select items -->
                    {{-- <div class="select-this">
                        <form action="#">
                            <div class="select-itms">
                                <select name="select" id="select1">
                                    <option value="">40 {{__('per page')}}</option>
                                    <option value="">50 {{__('per page')}}</option>
                                    <option value="">60 {{__('per page')}}</option>
                                    <option value="">70 {{__('per page')}}</option>
                                </select>
                            </div>
                        </form>
                    </div> --}}
                </div>
                <!-- Nav Card -->
                <div class="tab-content" id="nav-tabContent">
                    <!--  card(1) 實體商品 rlIm -->
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                        <div class="row">
                        @include('includes._itemCard',['items' => $rlIm])
                        </div>
                    </div>
                    <!-- Card(2) 虛擬商品 vlIm -->
                    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                        <div class="row">
                         @include('includes._itemCard',['items' => $vlIm])
                        </div>
                    </div>
                    <!-- Card(3)人氣商品 prIm -->
                    <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                        <div class="row">
                         @include('includes._itemCard',['items' => $prIm])
                        </div>
                    </div>
                </div>
                <!-- End Nav Card -->
            </div>
        </section>
        <!-- Latest Products End -->
        {{-- <!--? Shop Method Start-->
        <div class="shop-method-area">
            <div class="container">
                <div class="method-wrapper">
                    <div class="row d-flex justify-content-between">
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="single-method mb-40">
                                <i class="ti-package"></i>
                                <h6>Free Shipping Method</h6>
                                <p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="single-method mb-40">
                                <i class="ti-unlock"></i>
                                <h6>Secure Payment System</h6>
                                <p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="single-method mb-40">
                                <i class="ti-reload"></i>
                                <h6>Secure Payment System</h6>
                                <p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Shop Method End--> --}}

 @endsection
