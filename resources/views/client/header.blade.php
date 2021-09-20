    <!-- Begin: header -->
    <div id="header">
        <!-- Begin: header-top -->
        <div id="header-top" class="clearfix navbar navbar-expand-lg navbar-dark danger-color">
            <div class="container">
              <div class="row">
                <!-- Begin:top-menu -->
                <div id="menuTop" class="col-md-7 col-lg-7 col-xs-7 navbar-nav mr-auto">
                    <div class="catalogies ">
                        <a href="" class="pull-menu-top" id="pull-menu-top"> <i class="fas fa-bars" ></i> </a>
                        <span > Danh mục sản phẩm <i class="fa fa-caret-down"></i> </span>
                        <nav class="menu ">
                            <ul class="sub-nav-item">
                                @if (!empty($subCategory))
                                @foreach ($subCategory as $val_subCategory)

                                <li class="nav-item">
                                    <a href="{{route('subProductTypePage',$val_subCategory->id)}}">
                                        <h3>{{$val_subCategory->name}}</h3>
                                    </a>
                                    <ul class="submenu">
                                        <div class="container">
                                            <div class="row">
                                                @if (!empty($itemCategory))

                                                @foreach ($itemCategory as $value)
                                                    @if ($value->id_type == $val_subCategory->id)
                                                    <!-- Begin: submenu-item 1-->
                                                    <li class="col-lg-3">
                                                        <a href="{{route('childProductTypePage',$value->id)}}">
                                                            <div>
                                                                <img src="{{asset("uploads/admin/$value->images")}}">

                                                            </div>
                                                        </a>
                                                        <h4>{{$value->name}}</h4>
                                                    </li>  <!-- end: submenu-item -->
                                                    @endif
                                                @endforeach
                                                @endif


                                            </div> <!-- End: row -->
                                        </div>  <!-- End: container -->
                                    </ul>  <!-- End: submenu-->
                                </li>  <!-- End: nav-item 1 -->

                                @endforeach
                                @endif


                            </ul>  <!-- End: sub-nav-item -->
                        </nav> <!-- End: #itop-menu -->
                    </div>   <!-- End: categories -->
                    
                </div>
                
                <!-- End:top-menu -->
                <!-- Begin:logo -->
                <div id="logoTop" class="navbar-nav nav-item mr-2 text-center">
                    <a class="text-white waves-light" mdbWavesEffect href="{{route('homePageClient')}}"><i class="fas fa-home"></i> Trang chủ</a>
                </div>
                <!-- End:logo -->

                <!-- Begin: news + hotline-->
                <div class="navbar-nav nav-item mr-2 text-center" >
                    <a class="text-white waves-light" href="{{route('newsPage')}}"> Tin tức </a>
                </div>
                <!-- End: news + hotline -->

            </div>
            <form class="form-inline my-2 my-lg-0 ml-auto" role="search" action="{{route('searchProductPage')}}" method="get">
                <input name="key"  class="form-control" type="search" placeholder="Bạn tìm gì?" aria-label="Bạn tìm gì?">
                <button class="btn btn-outline-white btn-md my-2 my-sm-0 ml-3" type="submit">Tìm</button>
              </form>
            </div>
        </div> <!-- End: header-top -->

        <div id="header-middle"></div>
