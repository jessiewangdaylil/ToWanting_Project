{{-- 繼承 --}}
@extends('layouts.master')
{{-- 標籤頁名稱 --}}
@section('title','首頁')

@section('content')


    <!-- Hero Slider Begin -->
    <section class="hero-slider">
        <div class="hero-items owl-carousel">
          @foreach($top_titles as $top_title)
            <div class="single-slider-item set-bg" data-setbg="{{Voyager::image($top_title->getFirstPic()) }}">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 style="color:black">{{ $top_title->title }}</h1>
                            <h2 style="color:black">{{ $top_title->subtitle }}.</h2>
                            <a style="color:red"  href="#" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
          @endforeach
        </div>
    </section>
    <!-- Hero Slider End -->

    <!-- Features Section Begin -->
    <section class="features-section spad">
        <div class="features-ads">
            <div class="container">
                <div class="row">
                  @foreach($top_tips as $top_tip)
                    <div class="col-lg-4">
                        <div class="single-features-ads first">
                            <img src="{{ Voyager::image($top_tip->getFirstIcon()) }}" alt="">
                            <h4>{{$top_tip->title}}</h4>
                            <p>{{ $top_tip->content }} </p>
                        </div>
                    </div>
                  @endforeach
                </div>
            </div>
        </div>

    <!-- Latest Product Begin -->
    <section class="latest-products spad">
        <div class="container">
            <div class="product-filter">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>程式語言</h2>
                        </div>
                        <ul class="product-controls">
                          @foreach($top_tabs as $top_tab)
                            <li data-filter="{{ $top_tab->content }}">{{ $top_tab->title }}</li>
                          @endforeach
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row" id="product-list">
              @foreach($top_classes as $top_class)
                <div class="col-lg-3 col-sm-6 mix all {{$top_class->content}}">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="{{ Voyager::image($top_class->getFirstPic()) }}" alt=""></a>
                            <div class="p-status">{{$top_class->subtitle}}</div>
                        </figure>
                        <div class="product-text">
                            <h6>{{$top_class->title}}</h6>
                            <p>${{$top_class->price}}</p>
                        </div>
                    </div>
                </div>
              @endforeach
            </div>
        </div>
    </section>
    <!-- Latest Product End -->

    @endsection
