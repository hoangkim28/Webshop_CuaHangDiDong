@extends('layouts.masterClient')
@section('style')
<style>
nav.menu {
    display: none;
}
</style>
@endsection
@section('content')
<!-- Begin: page title -->
<div class="container d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center mb-2 mt-2">
    <h1 class="h7 text-uppercase font-weight-bold text-primary"> Chi tiết sản phẩm </h1>
</div> <!-- End: page title  -->

<main class="mt-5 pt-4">
    <div class="container dark-grey-text mt-5">

      <!--Grid row-->
      <div class="row wow fadeIn">

        <!--Grid column-->
        <div class="col-md-6 mb-4">

          <img src="{{ asset("uploads/products/$productDetail->images") }}" class="img-fluid" alt="">

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-md-6 mb-4">
          <!--Content-->
          <div class="p-4">

            <h2 class="text-primary">{{ $productDetail->name }}</h3>
            <div class="mb-3">
              <a href="">
                <span class="badge blue mr-1">New</span>
              </a>              
            </div>

            <p class="lead">
                    @if ($productDetail->promotion_price == 0)
              <span class="mr-1">
                <del>{{ number_format($productDetail->unit_price)}} đ</del>
              </span>
              @else
              <del>{{ number_format($productDetail->unit_price)}} đ</del>
              <span class="text-danger font-weight-bold">{{ number_format($productDetail->promotion_price)}} đ</span>
              @endif
            </p>

            <p class="lead font-weight-bold">Tóm tắt</p>

            <p>
                <h4 class="text-truncate">{!! $productDetail->sumary !!}</h4></p>

            <div class="d-flex justify-content-left">
              <!-- Default input -->
              @if($productDetail->qty_product!=0)
              <a href="{{route('orderNowPage',$productDetail->id)}}" class="btn btn-primary btn-md my-0 p">Đặt hàng <i class="fas fa-shopping-cart ml-1"></i></a>
              <a onclick="addToCart({{$productDetail->id}})" href="#"
                  class="btn btn-primary btn-md my-0 p">Thêm vào giỏ hàng</a>
              @else
              <a class="btn btn-danger btn-md my-0 p">Tạm hết hàng</a>
              @endif
            </div><hr>
            <a href="{{route('homePageClient')}}" class="btn btn-default btn-md my-0 p justify-content-left">Chọn sản phẩm khác</a>
          </div>
          <!--Content-->

        </div>
        <!--Grid column-->

      </div>
      <!--Grid row-->

      <hr>

      <!--Grid row-->
      <div class="row d-flex justify-content-left wow fadeIn">

        <!--Grid column-->
        <div class="col-md-6 text-center">

          <h4 class="my-4 h4">Thông tin chi tiết</h4>
        <!--Grid column-->
      </div>
      <!--Grid row-->

      {!! $productDetail->description !!}
      <!--Grid row-->
      <div class="row wow fadeIn">

        <!--Grid column-->
        @foreach ($productImages as $item)             
        @if($item->name!=null)
        <div class="col-lg-4 col-md-12 mb-4">

          <img src="{{ asset("uploads/products/details/$item->name") }}" class="img-fluid" alt="">

        </div>
        @endif
        @endforeach
        <!--Grid column-->

      </div>
      <!--Grid row-->

    </div>
  </main>
  
<!-- Reply section -->
<section class="my-5 container">

@if (Session::has('thongbao'))
<div class="mx-auto" style="width:95%;">
        <div class="alert alert-success text-center">
            {{session::get('thongbao')}}
        </div>
    </div>
@endif <h3>Bình Luận</h3>
    <div class="d-md-flex mt-3 list-group"> 
            @foreach ($productComment as $item)
            @if($item->status)
            <div class="list-group-item">
            <h5 class="font-weight-bold">
              <a>{{ $item->name }} :</a>
              <a class="pull-right">                
          {{ $item->content }}
              </a>
            </h5>
            </div>
        @endif
        @endforeach
 
    </div>
  <!-- Leave a reply -->
  <!-- Default form reply -->
  <form action="{{ route('AddComment',$productDetail->id )}}" method="POST" class="px-1 mt-4">
        @csrf
    <!-- Comment -->
    <div class="form-group">
      <label for="replyFormComment">Nội dung bình luận</label>
      <textarea name="txtContent" required class="form-control" rows="5"></textarea>
    </div>

    <!-- Name -->
    <label for="replyFormName">Tên của bạn</label>
    <input name="txtName" class="form-control">

    <br>

    <!-- Email -->
    <label for="replyFormEmail">E-mail</label>
    <input name="txtEmail" required type="email" class="form-control">

    <div class="text-center mt-4">
      <button class="btn btn-primary btn-md" type="submit">Bình luận</button>
    </div>
  </form>
  <!-- Default form reply -->

</section>
<!-- Reply section -->
@include('client.cart')

@endsection
@section('script')

<script>
//Begin: top menu dropdown hidden
$('.catalogies ').hover(function() {
    $('nav.menu').show();
}, function() {
    $('nav.menu').hide();
});


$(document).ready(function() {

    $('.color-choose input').on('click', function() {
        var headphonesColor = $(this).attr('data-image');
        $('.active').removeClass('active');
        $('.left-column img[data-image = ' + headphonesColor + ']').addClass('active');
        $(this).addClass('active');
    });
});

/*==================== Begin: Ajax add to cart =========================*/

function addToCart($idProductItem) {
    // alert($idProductItem);
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    }); // fix lỗi 419

    $.ajax({
        type: "POST",
        url: "{{{ route('giohangajax') }}}",
        // http://localhost/app2/public/gio-hang-ajax
        data: {
            'idProduct': $idProductItem
        },
        dataType: "json",
        success: function(data) {
            $("#cart").load(" #cart");
            // location.reload(true);

        }
    });
};
/*==================== End: Ajax add to cart =========================*/
</script>
@endsection