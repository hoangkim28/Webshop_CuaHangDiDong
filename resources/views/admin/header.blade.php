<!-- Begin: Top-navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top flex-md-nowrap p-0">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="{{route('adminHomePage')}}">Quốc Tuấn Shop</a>
    <ul class="navbar-nav navbar-expand">
        @if (Auth::check())
        <li class="nav-item text-nowrap mr-4">
            <a href="" class="nav-link"><i class="fa fa-user "></i> Hi {{Auth::user()->name}}</a>
        </li>
        <li class="nav-item text-nowrap">
            <a class="nav-link" href="{{route('logoutPage')}}"><i class="fas fa-sign-out-alt"></i> Đăng xuất </a>
        </li>
        @endif
    </ul>
</nav>
<!-- End: Top-navigation -->

<!-- Begin: Left-Sidebar -->
<div class="container-fluid">
    <div class="row">
        <!-- Begin: Left-Navigation -->
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <!-- Begin: Left Menu  -->
                <ul class="nav text-uppercase">

                    <li class="nav-item">
                        <a class="nav-link active" href="{{route('adminHomePage')}}">
                            <i class="fas fa-home"></i>
                            Trang chủ <span class="sr-only">(current)</span>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{route('userPage')}}"><i class="fas fa-users"></i>
                            Quản lý nhân viên
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{route('productTypePage')}}">
                        <i class="fas fa-list-ul"></i>
                            Danh mục SP cha
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{route('productTypeItemPage')}}">
                        <i class="fas fa-list-ul"></i>
                            Danh mục SP cấp I
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{route('productPage')}}">
                        <i class="fas fa-list-ul"></i>
                            Quản lý sản phẩm
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{route('billPage')}}">
                        <i class="fas fa-shopping-cart"></i>
                            Quản lý Đơn hàng
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{route('slidePage')}}">
                        <i class="fas fa-sliders-h"></i>
                            Quản lý Slide
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{route('newsAdminPage')}}">
                        <i class="fas fa-newspaper"></i>
                            Quản lý Tin tức
                        </a>
                    </li>

                </ul>
                <!-- End: Left Menu  -->

                <!-- Begin: extend-Left Menu  -->
                {{-- <div>
                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>See more</span>
                        <a class="d-flex align-items-center text-muted" href="#">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus-circle"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="16"></line><line x1="8" y1="12" x2="16" y2="12"></line></svg>
                        </a>
                    </h6>

                    <ul class="nav flex-column mb-2">
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                                Lorem ipsum
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                                Lorem ipsum
                            </a>
                        </li>

                    </ul>
                </div>  --}}
                <!-- End: extend-Left Menu  -->
            </div> <!-- End: sidebar-sticky -->
        </nav> <!-- End: Left-Navigation -->

        <!-- Begin: Content -->
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="chartjs-size-monitor"
                style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
                <div class="chartjs-size-monitor-expand"
                    style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                    <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>
                </div>
                <div class="chartjs-size-monitor-shrink"
                    style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                    <div style="position:absolute;width:200%;height:200%;left:0; top:0"></div>
                </div>
            </div>