<div id="sale-product" >
    <div class="container">
        <div class="product-header mt-3">
            <span>Sản phẩm khuyến mãi</span>
        </div>
        <div class="row">
            <div class="product-list mt-3">
                @if(!empty($dataSaleProduct))
                @foreach ($dataSaleProduct as $itemProduct)
                <div class="product-item col-sm-3 col-xs-6 ">
                    <div class="col-product-item">
                        <a href="{{route('detailProductPage',$itemProduct->id)}}" title="{{$itemProduct->name}}">
                            <div class="product-image">
                                <img class="img-product" src="{{asset("uploads/products/$itemProduct->images")}}" alt="" >
                            </div>
                            <div class="product-info">
                                <div class="product-info-name">
                                    <h5 class="text-truncate"> {{$itemProduct->name}}</h5>
                                </div>
                                <div class="product-price text-center">
                                    @if ($itemProduct->promotion_price == 0)
                                        <h5 class="price-original">
                                            <span> {{ number_format($itemProduct->unit_price)}}</span>
                                            <sup>đ</sup>
                                        </h5>
                                    @else
                                        <h5 class="price-sale">
                                            <span> {{ number_format($itemProduct->promotion_price)}}</span>
                                            <sup>đ</sup>
                                        </h5>
                                        <h5 class="price-original-sale ">
                                            <span> {{ number_format($itemProduct->unit_price)}}</span>
                                            <sup>đ</sup>
                                        </h5>
                                    @endif
                                </div>

                                <div class="text-center">
                                    @if($itemProduct->qty_product !=0)
                                        <a onclick="addToCart(this,{{$itemProduct->id}})" class="btn btn-danger btn-rounded btn-sm waves-effect waves-light">
                                                Chọn Mua
                                        </a>
                                        @else
                                        <a class="btn btn-primary btn-rounded btn-sm waves-effect waves-light">
                                                Hết hàng
                                        </a>
                                        @endif
                                    </div>

                            </div>
                            @if ($itemProduct->promotion_price != 0)
                                <div class="sale-label">
                                    <span>{{(int)(100-(($itemProduct->promotion_price * 100 )/$itemProduct->unit_price))}}%</span>
                                </div>
                            @endif
                        </a>
                    </div>
                </div> <!-- End: product-item -->
                @endforeach
                @endif
            </div> <!-- End: product-list -->

            <div  id="saleProductPaginate" style="margin:auto;">@if(!empty($dataSaleProduct)) {{ $dataSaleProduct->links() }} @endif</div> <!-- End: Phan trang -->
        </div> <!-- End: row -->
    </div> <!-- End: container-->
</div> <!-- End: sale-produc -->

<div class="mb-5 "></div>
