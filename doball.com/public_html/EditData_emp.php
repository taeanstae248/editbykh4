<?php
include("Checkname.php");
include("connect.inc.php");
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Linedoball.com เว็บไซต์รวมลิงค์ดูบอลออนไลน์ผ่านเน็ตฟรี ภาพคมชัดระดับHD ไม่กระตุก ครบทุกคู่ ทุกลีกดัง</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <!-- end: Bootstrap -->
        <link href="css/datepicker.css" rel="stylesheet">
        <!-- start: CSS -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/bootstrappage.css" rel="stylesheet">
        <!-- end: CSS -->

        <!-- start: style -->
        <style type="text/css">
            body {

                background-image: url(img/tg.jpg);
                background-repeat: no-repeat;
                background-size:100%;
            }
        </style>
        <!-- end: style -->
    </head>

    <!-- start: background -->
    <body>


        <!-- start: Header -->
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                     
                    </button>
                    <a class="navbar-brand" href="#"></a><img src="img/logo-doballfree.png" alt="HTML5 Icon" style="width:250px;height:50px;">
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"> <img src="img/avatar_circle_blue_512dp.png" alt="HTML5 Icon" style="width:30px;height:30px;"></a>
                            <ul class="dropdown-menu">
                                <li>&nbsp;&nbsp;&nbsp;<img src="img/avatar_circle_blue_512dp.png" alt="HTML5 Icon" style="width:50px;height:50px;"> &nbsp;&nbsp;&nbsp;<?php echo $_SESSION["username"]; ?></body></li></a></li><br/>
                        <li><a href="loginAdmin.php"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>         
                    </ul>     
                    </ul>
                </div>
            </div>
        </nav>
        <!-- end: Header-->


        <!-- start: title-->
        <div class="col-md-4"></div>
        <div class="col-md-6"> 
            <div class="form-top-left" >
                <div class="col-sm-9 font1">
                    <center><a class="navbar-brand" href="#"></a><img src="img/30e9be.png" alt="HTML5 Icon" style="width:500px;height:290px;"><h1>ระบบจัดการไฮไลท์ถ่ายทอดสดฟุตบอล</h1></center>

                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-4 col-sm-push-8" ></div>
                            <div class="col-sm-12 col-sm-pull-0" >
                            </div>
                        </div>
                        <br>
                        <!-- end: title--> 

                        <?php
                        $id = isset($_GET["id"]) ? $_GET["id"] : '';
                        $show = "select * from team where id='$id'";
                        $result = mysql_query($show)or die("no show");
                        $data = mysql_fetch_array($result);
                        ?>
                        <br>

                        <!-- start: Menu--> 
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <div class="navbar-header">
                                    <a class="navbar-brand" a href="press.php" TARGET="_blank">รายการแข่งขัน</a>
                                    <a class="navbar-brand" a href="Data_emp.php" TARGET="_blank">ข้อมูลแมต</a>
                                    <a class="navbar-brand" a href="Show_ball.php" TARGET="_blank">จัดการข้อมูลแมต</a>
                                    <a class="navbar-brand" a href="Show_Data.php" TARGET="_blank">จัดการรายการแข่งขัน</a>
                                </div>
                            </div>
                        </nav>
                        <br>
                        <!-- end: Menu--> 

                        <!-- start: form -->
                        <div class="well">
                            <form name="form1" method="post" action="" enctype="multipart/form-data">
                                <center><div class="form-group">
                                        <label class="col-md-7 control-label" for="txtName"><h3>รายการแข่งขันฟุตบอล :</h3></label>  
                                        <div class="col-md-5">
                                            <select type="text" id="txtName" name="txtName" class="form-control input-md"></input>
                                                <?php
                                                $show = "SELECT id,name_press from press";
                                                $result_press = mysql_query($show)or die("no show");
                                                while ($data_press = mysql_fetch_array($result_press)) {
                                                    ?>
                                                    <option value="<?php echo $data_press["id"] ?>"><?php echo $data_press["name_press"] ?></option>
                                                    <?php
                                                }
                                                ?>    
                                            </select>
                                            <br>
                                            <div class="form-group">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-7 control-label" for="startdate"><h3>เวลาถ่ายทอดสด : </h3></label>  
                                            <div class="col-md-5">
                                                <input type="text" id="startdate" name="startdate" class="form-control input-md" value="<?php echo $data["time_team"]; ?>"></input>
                                                <div class="form-group">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-7 control-label" for="football"><h3>ชื่อคู่ที่ลงแข่ง : </h3></label>  
                                                <div class="col-md-5">
                                                    <input type="text" id="football" name="football"  class="form-control input-md" value="<?php echo $data["name_team"]; ?>"></input>
                                                    <div class="form-group">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-7 control-label" for="Channel"><h3>อัพลิงค์ถ่ายทอดทางChannel : </h3></label>  
                                                    <div class="col-md-5">
                                                        <input type="text" id="Channel" name="Channel" class="form-control input-md" value="<?php echo $data["link_team"]; ?>"></input> 
                                                        <div class="form-group">
                                                        </div>
                                                    </div>
                                                </div></center>
                                                <br><br>
                                                <!-- end: form -->


                                                <!-- start: MenuSave --> 
                                                <br><br><br><br><br><br><br><br>

                                                <button class="button button1" name="submit" id="submit" >บันทึก </button></div>
                                            <hr>
                                        </div></form>
                                        <!-- end: MenuSave --> 


                                        <!-- start: footer --> 
                                        <footer><div align="center"><p><h4>© 2016 LINEDOBALL. ALL RIGHTS RESERVED.</h4></p></div>
                                        </footer>
                                        <!-- end: footer -->  


                                        <!-- start: JavaScript --> 
                                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
                                        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
                                        <!-- end: JavaScript -->

                                        </body>
                                        </html>

                                        <!-- start: insert table data_ball--> 
                                        <?php
                                        if (isset($_POST["submit"])) {
                                            $AtxtName = $_POST["txtName"];
                                            $Astartdate = $_POST["startdate"];
                                            $Afootball = $_POST["football"];
                                            $AChannel = $_POST["Channel"];

                                            $str = "update team set id_team='$AtxtName', time_team='$Astartdate', name_team='$Afootball', link_team='$AChannel' where id='$id'";
                                            $insert = mysql_query($str)or die("Not update");
                                            if ($insert) {
                                                echo "success";
                                                echo '<meta http-equiv="refresh" content="0;url=Show_ball.php">';
                                            }
                                        }
                                        ?>
                                        <!-- end: insert table data_ball-->
