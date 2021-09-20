@extends('layouts.masterClient')
@section('style')
    <style> nav.menu{display:none;} </style>
@endsection
@section('content')

<main class="mt-5 pt-4">
    <div class="container dark-grey-text mt-5">

            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">                                                        
                        <address>                          
                            <strong>{{ $dataCustomer->name }}</strong>
                            <br>
                            {{ $dataCustomer->address }}                           
                            <br>
                            <abbr title="Phone">Điện thoại:</abbr> {{ $dataCustomer->phone }}                           
                        </address>                            
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>{{ $dataBill->date_order }}</em>
                    </p>
                    <p>
                        <em>Đơn hàng số:  #{{ $dataBill->id }}</em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Chi tiết đơn hàng</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr class="">
                            <th>Tên sản phẩm</th>
                            <th>Hinh</th>
                            <th>Số lượng</th>
                            <th class="text-right">Giá</th>
                            <th class="text-right">Tổng giá</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        @foreach ($dataBillDetail as $itemBill_detail)
                            @if ($itemBill_detail->id_bill  == $dataBill->id)
                                @if (!empty($dataProduct))
                                    @foreach ($dataProduct as $itemProduct)
                                        @if ($itemBill_detail->id_product == $itemProduct->id)
                                        <tr>
                                        <td class="text-truncate col-md-6"><a class="text-primary" href="{{ route('detailProductPage',$itemProduct->id) }}">{{ $itemProduct->name }}</a></h4></td>                                        
                                                <td><img src="{{asset("uploads/products/$itemProduct->images")}}" width="40px" height="40px"> <br>
                                                </td>
                                        <td class="col-md-3 text-right"> {{ $itemBill_detail->quantity }} </td>
                                        <td class="col-md-3 text-right">{{ number_format($itemBill_detail->unit_price) }}đ</td>
                                        <td class="col-md-3 text-right">{{ number_format($itemBill_detail->unit_price*$itemBill_detail->quantity) }}đ</td>
                                         </tr>
                                        @endif
                                    @endforeach
                                @endif
                            @endif   
                            @endforeach                     
                     

                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="col-md-4 text-right text-danger"><h5><strong>@foreach ($dataBillDetail as $itemBill_detail)
                                @if ($itemBill_detail->id_bill  == $dataBill->id)
                                    {{number_format($dataBill->money_total)}}đ
                                    @break
                                @endif
                            @endforeach</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
                {{--  <a href="{{ route('confirmBill',$dataBill->id) }}" class="btn btn-success btn-lg btn-block"> <i class="fas fa-check-circle"></i> Gửi xác nhận </a>  </a>
                <a href="{{ route('billPage') }}" class="btn btn-primary btn-lg btn-block"> <i class="fas fa-check-circle"></i> Trở về </a>  </a>  --}}

            </td>
            </div>
        </div>
    </div>
    </main>

    @endsection