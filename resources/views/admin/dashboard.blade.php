@extends('layouts.masterAdmin');

@section('content')
    <!-- Begin: page title -->
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 mb-3 border-bottom">
        <h1 class="h5"> Trang chủ </h1>
       
    </div>
    <div class="container">
        <div class="row">            
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
                <div class="card card-statistics alert-primary">
                  <div class="card-body">
                    <div class="clearfix">
                      <div class="float-left">
                        <i class="mdi mdi-receipt text-warning icon-lg"></i>
                      </div>
                      <div class="float-right">
                        <p class="mb-0 text-right">Đơn hàng mới</p>
                        <div class="fluid-container">
                          <h3 class="font-weight-medium text-right mb-0">{{ $getNewOrderCount }}</h3>
                        </div>
                      </div>
                    </div>
                    <p class="text-muted mt-3 mb-0">
                      <i class="mdi mdi-bookmark-outline mr-1" aria-hidden="true"></i> <a class="btn btn-primary btn-sm" href="{{ route('billPage')}}">Kiễm tra</a>
                    </p>
                  </div>
                </div>
            </div>
            
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
                <div class="card card-statistics alert-danger">
                  <div class="card-body">
                    <div class="clearfix">
                      <div class="float-left">
                        <i class="mdi mdi-receipt text-warning icon-lg"></i>
                      </div>
                      <div class="float-right">
                        <p class="mb-0 text-right">Sản phẩm hết hàng</p>
                        <div class="fluid-container">
                          <h2 class="font-weight-medium text-right mb-0">{{ $product }}</h2>
                        </div>
                      </div>
                    </div>
                    <p class="text-muted mt-3 mb-0">
                      <i class="mdi mdi-bookmark-outline mr-1" aria-hidden="true"></i> <a class="btn btn-primary btn-sm" href="{{ route('productPage')}}">Kiễm tra</a>
                    </p>
                  </div>
                </div>
            </div>
            
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
                <div class="card card-statistics">
                  <div class="card-body">
                    <div class="clearfix">
                      <div class="float-left">
                        <i class="mdi mdi-receipt text-warning icon-lg"></i>
                      </div>
                      <div class="float-right">
                        <p class="mb-0 text-right">Người dùng mới</p>
                        <div class="fluid-container">
                          <h3 class="font-weight-medium text-right mb-0">{{ $getNewOrderCount }}</h3>
                        </div>
                      </div>
                    </div>
                    <p class="text-muted mt-3 mb-0">
                      <i class="mdi mdi-bookmark-outline mr-1" aria-hidden="true"></i> Đơn hàng chưa xác nhận
                    </p>
                  </div>
                </div>
            </div>
        </div>
    </div>
       
    <!-- End: page title  -->



@endsection
