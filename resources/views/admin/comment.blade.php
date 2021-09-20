@extends('layouts.masterAdmin')

@section('content')
<div class="row">
    <div class="col-sm-12 col-lg-12">
        <h5 class="display-4"><a href="{{route('detailProductPage',$product->id)}}" class="text-success">{{ $product->name }}</a></h5><br>
        <div class="table-responsive">
            <table id="tableView" class="table table-striped table-bordered" style="width:100%">
            {{-- <table class="table table-striped table-sm table-hover table-responsive"> --}}
            <thead>
                <tr >
                    <th class="text-center">STT</th>
                    <th>Họ tên</th>
                    <th>Email</th>
                    <th>Nội dung</th>
                    <th>Trạng thái</th>
                    <th>Chức năng</th>
                </tr>
            </thead>
            <tbody >
                @if (!empty($getListComment))
                    <h1 style="display:none;">{{$stt=1}}</h1>
                    @foreach ($getListComment as $item)
                    <tr >
                        <td class="text-center">{{$stt++}}</td>
                        <td class="text-truncate" style="max-width:200px;"> {{$item->name}}</td>
                        <td class="text-truncate"style="max-width:200px;">{{$item->email}}</td>
                        <td class="text-truncate"style="max-width:200px;">{{$item->content}}</td>
                        @if($item->status)
                        <td class="text-truncate"style="max-width:230px;" >Đang hiển thị</td>
                        @else
                        <td class="text-truncate"style="max-width:230px;" >Ẩn</td>
                        @endif
                        <td class="text-center">
                                @if($item->status)
                            <a  href="{{route('getHideComment',$item->id)}}"  class="btn btn-outline-secondary btn-sm text-danger"><i class="fas fa-eye-slash"></i> </a>
                            @else
                            <a  href="{{route('getUnHideComment',$item->id)}}"  class="btn btn-outline-secondary btn-sm"><i class="fas fa-eye"></i> </a>
                            @endif
                        </td>
                    </tr>
                    @endforeach
                @endif
            </tbody>
            </table>
        </div>
    </div>
</div>
<!-- End: show User-->

<!-- Thông báo khi nhập bị lỗi Mảng $errors do vatidate gửi ra =================-->
<div class="thongbao">
<div class="container">
    <div class="row">
        <div class="col-sm-4 offset-4">

                @if (count($errors) > 0)
                <div class="mx-auto" style="width:95%;">
                        <div class="alert alert-success text-center">
                            @foreach ($errors->all() as $error)
                                {{$error}}
                            @endforeach
                        </div>
                    </div>
                @endif
                <!-- Thông báo khi lưu database thành công-->
                @if (Session::has('thongbao'))
                <div class="mx-auto" style="width:95%;">
                        <div class="alert alert-success text-center">
                            {{session::get('thongbao')}}
                        </div>
                    </div>
                @endif
            </div>  <!-- End: Thông báo -->
        </div>
    </div>
</div>
@endsection