

@foreach ($items as $item)
  <li>
      <a href="#" class="d-flex">
          <p>{{__($item)}}</p>
          <p>(37)</p>
      </a>
  </li>
@endforeach

