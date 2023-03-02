<div class="col-lg-4">
  <div class="blog_right_sidebar">
      <aside class="single_sidebar_widget search_widget">
          <form action="#">
              <div class="form-group">
                  <div class="input-group mb-3">
                      <input type="text" class="form-control" placeholder='Search Keyword'
                          onfocus="this.placeholder = ''"
                          onblur="this.placeholder = '{{__('Search Keyword')}}'">
                      <div class="input-group-append">
                          <button class="btns" type="button"><i class="ti-search"></i></button>
                      </div>
                  </div>
              </div>
              <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                  type="submit">{{__('Search')}}</button>
          </form>
      </aside>

      <aside class="single_sidebar_widget post_category_widget">
          <h4 class="widget_title">{{__('Category')}}</h4>
          <ul class="list cat-list">

              <li>
                  <a href="{{url("/blog/{$allCgy->id}")}}" class="d-flex">
                      <p>{{__('All Articles')}}</p>
                      <p>({{$onArt->count()}})</p>
                  </a>
              </li>
              <li>
                  <a href="{{url('/blog')}}" class="d-flex">
                      <p>{{__('New Articles')}}</p>
                      <p>({{count($newOnArt)}})</p>
                  </a>
              </li>
      @foreach ($artCgies as $cgy)
      <li>
                  <a href="{{url("/blog/{$cgy->id}")}}" class="d-flex">
                      <p>{{$cgy->title}}</p>
              @if ($loop->index ==0)
                  <p>(0)</p>
              @else
                  <p>({{$artQty[$loop->index]}})</p>
              @endif
                  </a>
              </li>
      @endforeach
          </ul>
      </aside>

  @if ($enabled)
      <aside class="single_sidebar_widget popular_post_widget">
      <h3 class="widget_title">{{__('Recent Post')}}</h3>
    @foreach ($authorArticle as $article)
      <div class="media post_item">
          <img src="{{asset('img/post/post_1.png')}}" alt="post">
          <div class="media-body">
              <a href="single-blog.html">
                  <h3>{{$article->title}}</h3>
              </a>
              <p>{{$article->created_at}}</p>
          </div>
      </div>
    @endforeach


  </aside>
  <aside class="single_sidebar_widget tag_cloud_widget">
      <h4 class="widget_title">{{__('Tag Clouds')}}</h4>
      <ul class="list">
          <li>
              <a href="#">project</a>
          </li>
      </ul>
  </aside>
  <aside class="single_sidebar_widget newsletter_widget">
      <h4 class="widget_title">{{__('Newsletter')}}</h4>

      <form action="#">
          <div class="form-group">
              <input type="email" class="form-control" onfocus="this.placeholder = ''"
                  onblur="this.placeholder = 'Enter email'" placeholder='Enter email' required>
          </div>
          <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
              type="submit">{{__('Send')}}</button>
      </form>
  </aside>
  @else

  @endif
  </div>
</div>
