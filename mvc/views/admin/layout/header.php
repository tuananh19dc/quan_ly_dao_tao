<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="<?php echo ROOT_URL."public/assets/img/favicon.ico" ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Quản Lý Đào Tạo</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- Bootstrap core CSS     -->
    <link href="<?php echo ROOT_URL."public/assets/css/bootstrap.min.css" ?>" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    
    <!--  Light Bootstrap Table core CSS    -->
    <link href="<?php echo ROOT_URL."public/assets/css/light-bootstrap-dashboard.css?v=1.4.0" ?>" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="<?php echo ROOT_URL."public/assets/css/demo.css" ?>" rel="stylesheet" />
    <link href="<?php echo ROOT_URL."public/assets/css/fontello.css" ?>" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="<?php echo ROOT_URL."public/assets/css/pe-icon-7-stroke.css" ?>"  rel="stylesheet" />

</head>
<body>
<style>
    body{
        font-family: 'Open Sans', sans-serif;
    }
    .sidebar-logo i {
    display: block;
    font-size: 100px;
    text-align: center;
    padding: 25px 0px;
}
.active-bot{
    color: #FFFFFF;
    opacity: 1;
    background: rgba(255, 255, 255, 0.23);
}
.fw-500 {
    font-size: 1.7rem;
    font-weight: 500 !important;
    padding: 10px 0px ;
}
th {
    font-size: 0.9rem !important;
    color: #828282 !important;
}
ul.nav.list_act i {
    font-size: 17px !important;
    margin-right: 0 !important;
}
.mh-565px{
    min-height: 565px !important;
}
span.mes {
    display: inline-block;
    padding: 8px 16px;
    background: #63e5a0;
    border-radius: 4px;
    color: black;
    font-size: 18px;
    position: absolute;
    z-index: 1;
    right: 30px;
    top: -14px;
}
.content{
    position: relative;
}
td.d-flex a:first-child {
    margin-right: 5px;
}
input[placeholder], [placeholder], *[placeholder] {
    color: #a8a8a8 !important;
}
input.form-control, textarea.form-control {
    color: #373737 !important;
}
.content-course {
    box-sizing: border-box;
    padding: 20px;
    transform: translateX(-10px);
}
.card .card-top{
    overflow: hidden;
}
.card .card-top img{
    transition: all 0.15s linear;
}
.img-hover:hover {
    transform: scale(1.05);
}
.color-red{
    color: red !important;
}

</style>
<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="<?php echo ROOT_URL."public/assets/img/sidebar-5.jpg" ?>">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="<?php echo ROOT_URL."admin" ?>" class="simple-text">
                    ADMIN
                </a>
            </div>
            <div class="sidebar-logo">
            <img src="<?php echo ROOT_URL.'public/assets/img/n.png' ?>" style=" width: 100%; display: block; " alt="">
            </div>
            <ul class="nav list_act">
                <li class="<?php if(isset($_SESSION['select']) && $_SESSION['select'] == '1') echo "active"; ?>">
                    <a class="nav-link d-flex" href="<?php echo ROOT_URL."admin" ?>">
                        <i class="icon-th"></i>
                        <p>Danh Sách Nhân Viên</p>
                    </a>
                </li>
                
                <li  class="<?php if(isset($_SESSION['select']) && $_SESSION['select'] == '2') echo "active"; ?>">
                    <a class="nav-link d-flex" href="<?php echo ROOT_URL."admin/add" ?>">
                        <i class="icon-th"></i>
                        <p>Thêm Mới Nhân Viên</p>
                    </a>
                </li>
                <li class="nav-item active-pro">
                    <a class="nav-link active-bot " href="<?php echo ROOT_URL."login/logout" ?>">                      
                        <p class="d-block text-center">Đăng Xuất</p>
                    </a>
                </li>
                
                
                
				
            </ul>
    	</div>
    </div>

    <!-- END SIDEBAR  -->
    
    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Bảng Điều Khiển</a>
                </div>
                <div class="collapse navbar-collapse">
                    <!-- <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
								<p class="hidden-lg hidden-md">Dashboard</p>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret hidden-lg hidden-md"></b>
									<p class="hidden-lg hidden-md">
										5 Notifications
										<b class="caret"></b>
									</p>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                              </ul>
                        </li>
                        <li>
                           <a href="">
                                <i class="fa fa-search"></i>
								<p class="hidden-lg hidden-md">Search</p>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="">
                               <p>Account</p>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <p>
										Dropdown
										<b class="caret"></b>
									</p>

                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                              </ul>
                        </li>
                        <li>
                            <a href="#">
                                <p>Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg"></li>
                    </ul> -->
                </div>
            </div>
        </nav>
