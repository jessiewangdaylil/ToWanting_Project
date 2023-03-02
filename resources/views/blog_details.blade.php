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
                              <h2>{{__('Blog details')}}</h2>
                           </div>
                        </div>
                  </div>
               </div>
            </div>
      </div>
@include('flash::message')
      <!--================Blog Area =================-->
      <section class="blog_area single-post-area section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-8 posts-list">
                  <div class="single-post">
                     <div class="feature-img">
                        <img class="img-fluid" src="{{Voyager::image($article->getFirstPic())}}" alt="">
                     </div>
                     <div class="blog_details">
                        <h2>{{$article->title}}
                        </h2>
                        <ul class="blog-info-link mt-3 mb-4">
                           <li><a href="#"><i class="fa fa-user"></i>
                          @foreach ($tags as $tag)
                            {{$tag->title}}
                          @endforeach
                          </a></li>
                           <li><a href="#"><i class="fa fa-comments"></i> {{count($comments)}} {{__('Comments')}}</a></li>
                        </ul>
                        <p class="excert">
                           {!!$article->content!!}
                        </p>
                        {{-- <div class="quote-wrapper">
                           <div class="quotes">
                              MCSE boot camps have its supporters and its detractors. Some people do not understand why you
                              should have to spend money on boot camp when you can get the MCSE study materials yourself at
                              a fraction of the camp price. However, who has the willpower to actually sit through a
                              self-imposed MCSE training.
                           </div> --}}
                        </div>
                     </div>
                  </div>
@include('includes._blog_sidebar',['enabled'=>1])

                  <div class="navigation-top col-8">
                     <div class="d-sm-flex justify-content-between text-center">
                        <p class="like-info"><span class="align-middle"><i class="fa fa-heart"></i></span> Lily and 4
                           people like this</p>
                        <div class="col-sm-4 text-center my-2 my-sm-0">
                           <!-- <p class="comment-count"><span class="align-middle"><i class="fa fa-comment"></i></span> 06 Comments</p> -->
                        </div>
                        <ul class="social-icons">
                           <li><a href="{{setting('site.Tw_url')}}"><i class="fab fa-twitter"></i></a></li>
                           <li><a href="{{setting('site.fb_url')}}"><i class="fab fa-facebook-f"></i></a></li>
                           <li><a href="{{setting('site.ig_url')}}"><i class="fa-brands fa-instagram"></i></a></li>
                           <li><a href="{{setting('site.paypal_url')}}"><i class="fa-brands fa-paypal"></i></i></a></li>
                        </ul>
                     </div>

                     <div class="navigation-area col-12">
                        <div class="row">
                           <div
                              class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
                              <div class="thumb">
                                 <a href="#">
                                    <img class="img-fluid" src="{{asset('img/post/preview.png')}}" alt="">
                                 </a>
                              </div>
                              <div class="arrow">
                                 <a href="#">
                                    <span class="lnr text-white ti-arrow-left"></span>
                                 </a>
                              </div>
                              <div class="detials">
                                 <p>{{__('Prev Post')}}</p>
                                 <a href="#">
                                    <h4>Space The Final Frontier</h4>
                                 </a>
                              </div>
                           </div>
                           <div
                              class="col-lg-6 col-md-6 col-12 nav-right flex-row d-flex justify-content-end align-items-center">
                              <div class="detials">
                                 <p>{{__('Next Post')}}</p>
                                 <a href="#">
                                    <h4>Telescopes 101</h4>
                                 </a>
                              </div>
                              <div class="arrow">
                                 <a href="#">
                                    <span class="lnr text-white ti-arrow-right"></span>
                                 </a>
                              </div>
                              <div class="thumb">
                                 <a href="#">
                                    <img class="img-fluid" src="{{asset('img/post/next.png')}}" alt="">
                                 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="blog-author col-8">
                     <div class="media align-items-center">
                        <img src="{{Voyager::image($author->pic)}}" alt="">
                        <div class="media-body">
                           <a href="#">
                              <h4>{{$author->name}}</h4>
                           </a>
                           <p>{{$author->desc}}</p>
                        </div>
                     </div>
                  </div>
                  <div class="comments-area col-12">
                     <h4>{{count($comments)}} {{__('Comments')}}</h4>
                    @if (count($comments)!=0)
@include('includes._comment_list',$comments)
                    @else
                    @endif
                  </div>
                  <div class="comment-form">
                     <h4>{{__('Leave a Reply')}}</h4>
                     <form class="form-contact comment_form" action="{{url('commentstored')}}" method="post" id="">
                      @csrf
                        <div class="row">
                           <div class="col-sm-6">
                              <div class="form-group">
                                 <input class="form-control" name="name" id="name" type="text" placeholder="{{__("Name")}}">
                              </div>
                           </div>
                           <div class="col-sm-6">
                              <div class="form-group">
                                 <input class="form-control" name="email" id="email" type="email" placeholder="{{__("Email")}}">
                              </div>
                           </div>
                           <div class="col-12">
                              <div class="form-group">
                                 <textarea class="form-control w-100" name="content" id="content" cols="30" rows="9"
                                    placeholder="{{__("Write Comment")}}"></textarea>
                              </div>
                           </div>
                        </div>
                        <div class="form-group">
                           <button type="submit" class="button button-contactForm btn_1 boxed-btn">{{__('Send Message')}}</button>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--================ Blog Area end =================-->

 @endsection
