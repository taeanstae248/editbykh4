<?php include 'connect.php';?><?php
error_reporting(E_ALL ^ E_NOTICE);
    session_start();
session_start(); if($_SESSION["m_status"] =="") { // if นี้ใช้ตรวจสอบถ้าไม่ได้ login ให้ไปหน้า login
echo"<script>alert('กรุณาเข้าสู่ระบบ');window.location='login.html';</script>";} ?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ADMIN LINEDOBALL</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- Font Awesome CDN-->
    <!-- you can replace it by local Font Awesome-->
    <script src="https://use.fontawesome.com/99347ac47f.js"></script>
    <!-- Font Icons CSS-->
    <link rel="stylesheet" href="https://file.myfontastic.com/da58YPMQ7U5HY8Rb6UxkNf/icons.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>

    <?php
    /**today*/
    $sql ='select  count(t_id) AS NUMBER , DAY(date_teame) as DAY from teamvs where DAY(date_teame) = DAY(curdate())';
   $result = $conn->query($sql);
   $row = mysqli_fetch_array($result);
/*nextday*/
   $sql1 ='select  count(t_id) AS NUMBER, DAY(date_teame) as DAY from teamvs where DAY(date_teame) = DAY(curdate()+1)';
  $result1 = $conn->query($sql1);
  $row1 = mysqli_fetch_array($result1);

  $sql3="SELECT * FROM teamvs INNER JOIN press ON (teamvs.p_id = press.p_id) WHERE DAY(date_teame) = DAY(curdate()) ORDER BY t_time ASC , date_teame  ";
    $result3 = $conn->query($sql3);

  $tomorrow = date('Y-m-d', strtotime("tomorrow"));
      $sql4="SELECT * FROM teamvs INNER JOIN press ON (teamvs.p_id = press.p_id) WHERE date_teame='$tomorrow' ORDER BY t_time ASC , date_teame  ";
    $result4 = $conn->query($sql4);

     $tomorrow = date('Y-m-d', strtotime("tomorrow"));
        $sql41="SELECT count(t_id) as NUMBER  FROM teamvs INNER JOIN press ON (teamvs.p_id = press.p_id) WHERE date_teame='$tomorrow' ORDER BY t_time ASC , date_teame  ";

      $result41 = $conn->query($sql41);
      $row41 = mysqli_fetch_array($result41) ?>



    <header class="header">
      <nav class="navbar">
        <!-- Search Box-->
        <div class="search-box">
          <button class="dismiss"><i class="icon-close"></i></button>
          <form id="searchForm" action="#" role="search">
            <input type="search" placeholder="What are you looking for..." class="form-control">
          </form>
        </div>
        <div class="container-fluid">
          <div class="navbar-holder d-flex align-items-center justify-content-between">
            <!-- Navbar Header-->
            <div class="navbar-header">

              <!-- Navbar Brand --><a href="indexs.php" class="navbar-brand">
                <div class="brand-text brand-big hidden-lg-down"><span>LINE </span><strong>DOBALL</strong></div>
                <div class="brand-text brand-small"><strong>BD</strong></div></a>
              <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
            </div>
            <!-- Navbar Menu -->
            <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
              <!-- Search-->
              <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>
              <!-- Notifications-->
              <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red">12</span></a>
                <ul aria-labelledby="notifications" class="dropdown-menu">
                  <li><a rel="nofollow" href="#" class="dropdown-item">
                      <div class="notification">
                        <div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>
                        <div class="notification-time"><small>4 minutes ago</small></div>
                      </div></a></li>
                  <li><a rel="nofollow" href="#" class="dropdown-item">
                      <div class="notification">
                        <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                        <div class="notification-time"><small>4 minutes ago</small></div>
                      </div></a></li>
                  <li><a rel="nofollow" href="#" class="dropdown-item">
                      <div class="notification">
                        <div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>
                        <div class="notification-time"><small>4 minutes ago</small></div>
                      </div></a></li>
                  <li><a rel="nofollow" href="#" class="dropdown-item">
                      <div class="notification">
                        <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
                        <div class="notification-time"><small>10 minutes ago</small></div>
                      </div></a></li>
                  <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications    </strong></a></li>
                </ul>
              </li>
              <!-- Messages  -->
              <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange">10</span></a>
                <ul aria-labelledby="notifications" class="dropdown-menu">
                  <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                      <div class="msg-profile"> <img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
                      <div class="msg-body">
                        <h3 class="h5">Jason Doe</h3><span>Sent You Message</span>
                      </div></a></li>
                  <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                      <div class="msg-profile"> <img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                      <div class="msg-body">
                        <h3 class="h5">Frank Williams</h3><span>Sent You Message</span>
                      </div></a></li>
                  <li><a rel="nofollow" href="#" class="dropdown-item d-flex">
                      <div class="msg-profile"> <img src="img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
                      <div class="msg-body">
                        <h3 class="h5">Ashley Wood</h3><span>Sent You Message</span>
                      </div></a></li>
                  <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Read all messages    </strong></a></li>
                </ul>
              </li>
              <!-- Logout    -->
              <li class="nav-item"><a href="logout.php" class="nav-link logout">Logout<i class="fa fa-sign-out"></i></a></li>
            </ul>
          </div>
        </div>
      </nav>
    </header>


    <div class="page home-page">
      <!-- Main Navbar-->

      <div class="page-content d-flex align-items-stretch">

        <!-- Side Navbar -->
        <nav class="side-navbar">
          <!-- Sidebar Header-->
          <div class="sidebar-header d-flex align-items-center">
            <div class="avatar"><img src="img/avatar-1.png" alt="..." class="img-fluid rounded-circle"></div>
            <div class="title">
              <h1 class="h4">Linedoball.com</h1>
              <p>ดูบอลออนไลน์</p>
            </div>
          </div>
          <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
          <ul class="list-unstyled">
            <li class="active1"> <a href="indexs.php"><i class="icon-home"></i>หน้าหลัก</a></li>
            <li><a href="#dashvariants" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>ประเภทรายการแข่งขัน </a>
              <ul id="dashvariants" class="collapse list-unstyled">

                <li><a href="page/leage.php">เพิ่มลีก-แก้ไขทีมในลีก</a></li>
                <li><a href="page/teames.php">เพิ่มทีม-แก้ไขทีม</a></li>
              </ul>
            </li>
            <li><a href="#dashvariants2" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>โปรแกรมถ่ายทอดสด </a>
              <ul id="dashvariants2" class="collapse list-unstyled">
                <li><a href="page/programelive.php">รายการถ่ายทอดสดทั้งหมด</a></li>
                  <li><a href="page/programelive_add.php">เพิ่มรายการถ่ายทอดสด</a></li>
              </ul>

            </li>
            <li> <a href="./page/ch.php"> <i class="icon-grid"></i>เพิ่มช่อง </a></li>

            <li> <a href="login.html"> <i class="icon-interface-windows"></i>Login Page</a></li>
          </ul><span class="heading">Extras</span>
          <ul class="list-unstyled">
            <li> <a href="#"> <i class="icon-flask"></i>Demo </a></li>
            <li> <a href="#"> <i class="icon-screen"></i>Demo </a></li>
            <li> <a href="#"> <i class="icon-mail"></i>Demo </a></li>
            <li> <a href="#"> <i class="icon-picture"></i>Demo </a></li>
          </ul>
        </nav>


        <div class="content-inner">
          <!-- Page Header-->
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">รวมรายการถ่ายทอดสด</h2>
            </div>
          </header>
          <!-- Dashboard Counts Section-->
          <section class="dashboard-counts no-padding-bottom">
            <div class="container-fluid">
              <div class="row bg-white has-shadow">
                <!-- Item -->
                <div class="col-12">
                  
                </div>
                <!-- Item -->

              </div>
            </div>
          </section>
          <!-- Dashboard Header Section    -->

          <!-- Projects Section-->
          <section class="projects no-padding-top">
            <div class="container-fluid">
              <!-- Project-->

              <!-- Project-->

              <!-- Project-->

              <!-- Project-->

            </div>
          </section>
          <!-- Client Section-->

          <!-- Feeds Section-->
          <section class="feeds no-padding-top">
            <div class="container-fluid">
              <div class="row">
                <!-- Trending Articles-->
                <div class="col-lg-6">
                  <div class="articles card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard" class="dropdown-menu has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">

                      <h2 class="h3">รายการถ่ายทอดสดวันนี้  </h2>
                      <div class="badge badge-rounded bg-green"><?php echo $row['NUMBER']; ?></div>
                    </div>
                    <div class="card-body no-padding">
                      <?php  while($row3 = mysqli_fetch_array($result3)){
                        $ch=$row3["t_chanel"]; $time=$row3["t_time"]; ; $name=$row3["t_namevs"]; $icon= $row3["p_icon"];?>
                      <div class="item d-flex align-items-center">
                        <div class="image"><img src="./page/fileupload/pixteam/<?php echo $icon ; ?>" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="text"><a href="#">

                            <h3 class="h5"><?php echo $time; ?></h3></a><larger><?php echo $name ; ?> <?php echo $ch ;?>  </larger></div>
                      </div>
                        <?php } ?>


                    </div>
                  </div>
                </div>
                <!-- Check List -->
                <div class="col-lg-6">
                  <div class="articles card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard" class="dropdown-menu has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-header d-flex align-items-center">

                      <h2 class="h3">รายการถ่ายทอดสดพรุ่งนี้  </h2>
                      <div class="badge badge-rounded bg-green"><?php echo $row41['NUMBER']; ?></div>
                    </div>
                    <div class="card-body no-padding">
                      <?php  while($row4 = mysqli_fetch_array($result4)){
                        $ch=$row4["t_chanel"]; $time=$row4["t_time"]; ; $name=$row4["t_namevs"]; $icon= $row4["p_icon"];?>
                      <div class="item d-flex align-items-center">
                        <div class="image"><img src="./page/fileupload/pixteam/<?php echo $icon ; ?>" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="text"><a href="#">

                            <h3 class="h5"><?php echo $time; ?></h3></a><larger><?php echo $name ; ?> <?php echo $ch ;?>  </larger></div>
                      </div>
                        <?php } ?>


                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- Updates Section                                                -->

          <!-- Page Footer-->
          <footer class="main-footer">
            <div class="container-fluid">
              <div class="row">
                <div class="col-sm-6">
                  <p>Your company &copy; 2017-2019</p>
                </div>
                <div class="col-sm-6 text-right">
                  <p>Design by <a href="#" class="external">Kh4</a></p>
                  <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                </div>
              </div>
            </div>
          </footer>
        </div>
      </div>
    </div>
    <!-- Javascript files-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"> </script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <script src="js/charts-home.js"></script>
    <script src="js/front.js"></script>
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID.-->
    <!---->
    <script>
      (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
      function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
      e=o.createElement(i);r=o.getElementsByTagName(i)[0];
      e.src='//www.google-analytics.com/analytics.js';
      r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
      ga('create','UA-XXXXX-X');ga('send','pageview');
    </script>
  </body>
</html>
