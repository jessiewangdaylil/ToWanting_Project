@extends('layouts.master')
@section('title','首頁')
@section('content')
        <!--? Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>{{__('Blog').'-'.$cgy->title}}</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--? Hero Area End-->
        <!--================Blog Area =================-->
        <section class="blog_area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mb-5 mb-lg-0">
                        <div class="blog_left_sidebar">
                        @foreach ($art_cgy as $article)
                           <article class="blog_item">
                                <div class="blog_item_img">
                                    <img class="card-img rounded-0" src="{{Voyager::image($article->getFirstPic())}}" alt="">
                                    <a href="#" class="blog_item_date">
                                        <h3>{{$article->created_at->isoFormat('Do')}}</h3>
                                        <p>{{$article->created_at->isoFormat('MMM')}}</p>
                                    </a>
                                </div>

                                <div class="blog_details">
                                    <a class="d-inline-block" href="single-blog.html">
                                        <h2>{{$article->title}}</h2>
                                    </a>
                                    <p>{{$article->content_small}}</p>
                                    <ul class="blog-info-link">
                                        <li><a href="#"><i class="fa fa-user"></i> {{$cgy->title}}</a></li>
                                        <li><a href="#"><i class="fa fa-comments"></i> 03 {{__('Comments')}}</a></li>
                                    </ul>
                                </div>
                            </article>
                            @endforeach
                          {{$art_cgy->links()}}


                            {{-- <nav class="blog-pagination justify-content-center d-flex">
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a href="#" class="page-link" aria-label="Previous">
                                            <i class="ti-angle-left"></i>
                                        </a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">1</a>
                                    </li>
                                    <li class="page-item active">
                                        <a href="#" class="page-link">2</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link" aria-label="Next">
                                            <i class="ti-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </nav> --}}
                        </div>
                    </div>
                  @include('includes._blog_sidebar')
                </div>
            </div>
        </section>
        <!--================Blog Area =================-->

 @endsection
