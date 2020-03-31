<body>
    <!-- Sidenav -->
    <nav class="sidenav navbar navbar-vertical fixed-left navbar-expand-xs navbar-light bg-white" id="sidenav-main">
        <div class="scrollbar-inner">
            <!-- Brand -->
            <div class="sidenav-header d-flex align-items-center">
                <a class="navbar-brand" href="/dashboard">
                    <img src="{{asset('image/index-land.png')}}" class="navbar-brand-img" alt="...">
                </a>
                <div class="ml-auto">
                    <!-- Sidenav toggler -->
                    <div class="sidenav-toggler d-none d-xl-block" data-action="sidenav-unpin"
                        data-target="#sidenav-main">
                        <div class="sidenav-toggler-inner">
                            <i class="sidenav-toggler-line"></i>
                            <i class="sidenav-toggler-line"></i>
                            <i class="sidenav-toggler-line"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="navbar-inner">
                <!-- Collapse -->
                <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                    <!-- Heading -->
                    <h6 class="navbar-heading p-0 text-muted">Overview</h6>
                    <!-- Nav items -->
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="/dashboard">
                                <i class="ni ni-chart-pie-35 text-primary"></i>
                                <span class="nav-link-text">Dashboard</span>
                            </a>
                        </li>

                    </ul>
                    <!-- Divider -->
                    <hr class="my-3">
                    <!-- Heading -->
                    <h6 class="navbar-heading p-0 text-muted">Data Management</h6>
                    <!-- Navigation -->
                    <ul class="navbar-nav mb-md-3">
                        <li class="nav-item">
                            <a class="nav-link" href="/dashboard/songs">
                                <i class="ni ni-note-03 text-red"></i>
                                <span class="nav-link-text">Songs</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/dashboard/albums">
                                <i class="ni ni-folder-17 text-orange"></i>
                                <span class="nav-link-text">Albums</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/dashboard/artists">
                                <i class="ni ni-circle-08 text-green"></i>
                                <span class="nav-link-text">Artists</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/dashboard/users">
                                <i class="ni ni-satisfied text-info"></i>
                                <span class="nav-link-text">Users</span>
                            </a>
                        </li>


                    </ul>


                </div>
            </div>
        </div>
    </nav>
    <!-- Main content -->
    <div class="main-content" id="panel">
        <!-- Topnav -->
        <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Search form -->
                    <form action="/dashboard/search" method="post"
                        class="navbar-search navbar-search-light form-inline mr-sm-3" id="navbar-search-main">
                        @csrf
                        <div class="form-group mb-0">
                            <div class="input-group input-group-alternative input-group-merge">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-search"></i></span>
                                </div>
                                <input class="form-control" name="search-data" placeholder="Search Song" type="text">
                            </div>
                        </div>
                        <button type="button" class="close" data-action="search-close" data-target="#navbar-search-main"
                            aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </form>
                    <!-- Navbar links -->

                    <ul class="navbar-nav align-items-center ml-md-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <div class="media align-items-center">
                                    <span class="avatar avatar-sm rounded-circle">
                                        <img alt="Image placeholder" src="{{asset('raw/assets/img/theme/team-4.jpg')}}">
                                    </span>
                                    <div class="media-body ml-2 d-none d-lg-block">
                                        <span
                                            class="mb-0 text-sm text-white font-weight-bold">{{ Auth::user()->name }}</span>
                                    </div>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <div class="dropdown-header noti-title">
                                    <h6 class="text-overflow m-0">Welcome!</h6>
                                </div>
                                <a href="#!" class="dropdown-item">
                                    <i class="ni ni-single-02"></i>
                                    <span>My profile</span>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a href="#!" class="dropdown-item">
                                    <i class="ni ni-user-run"></i>
                                    <span>Logout</span>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header -->
        <!-- Header -->
        <div class="header bg-primary pb-6">
            <div class="container-fluid">
                <div class="header-body">
                    <div class="row align-items-center py-4">
                        <div class="col-lg-6 col-7">
                            <h6 class="h2 text-white d-inline-block mb-0">Welcome</h6>
                            <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                                <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                    <li class="breadcrumb-item"><a href="#"><i class="fas fa-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href="/dashboard">Dashboards</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">@yield('page-name')</li>
                                </ol>
                            </nav>
                        </div>
                        <div class="col-lg-6 col-5 text-right">
                            {{-- <a href="#" class="btn btn-sm btn-neutral">New</a>
                            <a href="#" class="btn btn-sm btn-neutral">Filters</a> --}}
                        </div>
                    </div>