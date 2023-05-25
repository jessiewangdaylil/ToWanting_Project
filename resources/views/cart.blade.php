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
                              <h2>{{__('Cart List')}}</h2>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <!--================Cart Area =================-->
      <section class="cart_area section_padding">
        <div class="container">
          <div class="cart_inner">
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">{{__('Product')}}</th>
                    <th scope="col">{{__('Price')}}</th>
                    <th scope="col">{{__('Quantity')}}</th>
                    <th scope="col">{{__('Total')}}</th>
                    <th scope="col">{{__('Delete')}}</th>
                  </tr>
                </thead>
                <tbody>
                  @if ($buyItem == null)
                  @else
                  @foreach ($buyItem as $item)
                    @livewire('counter',[
                      'item'=>$item,
                      'cart'=>$cart,
                      'class'=>[
                        'media',
                        'd-flex',
                        'media-body',
                        'product_count',
                        'input-number-decrement',
                        'ti-minus',
                        '',
                        'input-number-increment',
                        'ti-plus'
                      ]
                      ,],key($item->id))
                  @endforeach
                      {{-- @foreach ($buyItem as $item)
                        <tr>
                        <td>
                          <div class="media">
                            <div class="d-flex">
                              <img src="{{Voyager::image($item->getFirstPic())}}" alt="" />
                            </div>
                            <div class="media-body">
                              <p>{{$item->title}}</p>
                            </div>
                          </div>
                        </td>
                        <td>
                          <h5>{{$item->price_new}}</h5>
                        </td>
                        <td>
                          <div class="product_count">
                            <span class="input-number-decrement"> <i class="ti-minus"></i></span>
                            <input class="input-number" type="text" value="{{$cart[$item->id]->quantity}}" min="0" max="10">
                            <span class="input-number-increment"> <i class="ti-plus"></i></span>
                          </div>
                        </td>
                        <td>
                          <h5>$123</h5>
                        </td>
                      </tr>
                      @endforeach --}}
                  @endif
                  <tr class="bottom_button">
                    <td>
                      <a class="btn_1" href="{{url('/cart')}}">{{__('Update Cart')}}</a>
                    </td>
                    <td></td>
                    <td></td>
                    <td>
                      <div class="cupon_text float-right">
                        <a class="btn_1" href="#">{{__('Use Coupon')}}</a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                    <td>
                      <h5>{{__('Subtotal')}}</h5>
                    </td>
                    <td>
                    @livewire('total',)
                    </td>
                  </tr>
                  <tr class="shipping_area">
                    <td></td>
                    <td></td>
                    <td>
                      <h5>Shipping</h5>
                    </td>
                    <td>
                      <div class="shipping_box">
                        <ul class="list">
                          <li>
                            <br>{{__('Flat Rate')}}: $5.00
                            <input  type="radio" aria-label="Radio button for following text input">
                          </li>
                          <li>
                            Free Shipping
                            <input  type="radio" aria-label="Radio button for following text input">
                          </li>
                          <li class="active">
                            Local Delivery: $2.00
                            <input  type="radio" aria-label="Radio button for following text input">
                          </li>
                        </ul>
                        <h6>
                          Calculate Shipping
                          <i class="fa fa-caret-down" aria-hidden="true"></i>
                        </h6>
                        <select class="shipping_select">
                          <option value="1">Bangladesh</option>
                          <option value="2">India</option>
                          <option value="4">Pakistan</option>
                        </select>
                        <select class="shipping_select section_bg">
                          <option value="1">Select a State</option>
                          <option value="2">Select a State</option>
                          <option value="4">Select a State</option>
                        </select>
                        <input class="post_code" type="text" placeholder="Postcode/Zipcode" />
                        <a class="btn_1" href="#">Update Details</a>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
              <div class="checkout_btn_inner float-right">
                <a class="btn_1" href="{{url('/shop')}}">Continue Shopping</a>
                <a class="btn_1 checkout_btn_1" href="#">Proceed to checkout</a>
              </div>
            </div>
          </div>
      </section>
      <!--================End Cart Area =================-->

 @endsection
