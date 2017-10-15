<?php
include("Checkname.php");
include("connect.inc.php");

?>
<!-- start: insert table data_ball--> 
<?php

$id = isset($_GET["id"]) ? intval($_GET["id"]) : 0;
$task=isset($_GET["task"])?$_GET["task"]:'';
$src=isset($_GET["src"])?$_GET["src"]:'';
if($task=='deleteimg'&&$id>0){
	$sql = " 
			UPDATE 	press 
			SET 	icon_press = NULL
			WHERE 	id='$id'
		";
	$query = mysql_query($sql)or die("Not Delete Image");
	unlink(@$src);
	
	$dynamic_url    = 'http://'.$_SERVER['HTTP_HOST']  .'/buildcache.php?key=AAVVQQ'; // requested dynamic page (full url)
    $ch = curl_init($dynamic_url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_exec($ch);
    curl_close($ch);
	
	echo '<meta http-equiv="refresh" content="0;url='.$_SERVER['HTTP_REFERER'].'">';exit();
}

if (isset($_POST["submit"])) {

    $id_edit = intval($_POST["id_edit"]);
    $name_press = $_POST["name_press"];
    $http_refer = $_POST["http_refer"];
	
	$file_sql = '';
	$file = $_FILES['icon_press'];
	if($file['name'] <> ""){
		
		$txt = "abcdefghijklmnopqrstuvwxyz"; 
		$word = "";
		srand( ( double )microtime()*1000000 ); 
		for( $i=0; $i<8; $i++ ){
				$word  .= $txt[rand()%strlen( $txt )]; 	
		}
		$info = pathinfo($file["name"]);
		$ext = $info['extension'];
		
		$filename  = date("Ymd");
		$filename .= "_" . $word;
		$filename .= "." .$ext;
		
		$uploadpath = "uploads/";
		$filetarget = $uploadpath . $filename;
		if( copy($file['tmp_name'],$filetarget) ){
			$file_sql = ",icon_press='$filetarget'";
		}else{
			
		}
	}

    if($id_edit>0){
        $sql = " 
				UPDATE 	press 
				SET 	name_press='$name_press' 
				$file_sql
				WHERE 	id='$id_edit'
			";
        $query = mysql_query($sql)or die("Not update");

    }else{
        $sql = "
				INSERT INTO press 
				SET 		name_press='$name_press' 
				$file_sql
				";
        $query = mysql_query($sql)or die("Not insert");
    }
    
    $dynamic_url    = 'http://'.$_SERVER['HTTP_HOST']  .'/buildcache.php?key=AAVVQQ'; // requested dynamic page (full url)
    $ch = curl_init($dynamic_url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_exec($ch);
    curl_close($ch);
	/*if($http_refer&&$http_refer){
		echo '<meta http-equiv="refresh" content="0;url='.$http_refer.'">';exit();
	}else{*/
		echo '<meta http-equiv="refresh" content="0;url=Show_Data.php">';exit();
	//}
}
?>
<!-- end: insert table data_ball-->
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
        <div class="container">
            <center><a class="navbar-brand" href="#"></a><img src="img/30e9be.png" alt="HTML5 Icon" style="width:500px;height:290px;"><h1>ระบบจัดการไฮไลท์ถ่ายทอดสดฟุตบอล</h1></center>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-4 col-sm-push-8" ></div>
                    <div class="col-sm-12 col-sm-pull-0" >
                    </div>
                </div>
                <br />
                <!-- end: title--> 
                <!-- start: Menu--> 
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="press.php" TARGET="_blank">รายการแข่งขัน</a>
                            <a class="navbar-brand" href="Data_emp.php" TARGET="_blank">ข้อมูลแมต</a>
                            <a class="navbar-brand" href="Show_ball.php" TARGET="_blank">จัดการข้อมูลแมต</a>
                            <a class="navbar-brand" href="Show_Data.php" TARGET="_blank">จัดการรายการแข่งขัน</a>
                        </div>
                    </div>
                </nav>
                <br>
                <!-- end: Menu--> 
                <!-- start: form -->
                <form name="form1" method="post" action="" enctype="multipart/form-data" class="form-horizontal" style="padding: 10px;background: #f5f5f5;border-radius: 5px;">
                    <?php
                        $id = isset($_GET["id"]) ? intval($_GET["id"]) : 0;
                        $press_data = NULL;
                        if($id>0){
                            $sql = "select * from press where id='$id'";
                            $rs_press = mysql_query($sql)or die("no show");
                            if(mysql_num_rows($rs_press)> 0){
                                $press_data = mysql_fetch_array($rs_press);
                            }
                        }
                    ?>
                    <input type="hidden" name="id_edit" value="<?php echo $id; ?>" />
                    <input type="hidden" name="http_refer" value="<?php echo $_SERVER['HTTP_REFERER']; ?>" />
                    
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name_press">รายการแข่งขันฟุตบอล:</label>
                        <div class="col-sm-8">
                            <input type="text" id="time_team" name="name_press" placeholder="----กรุณากรอกรายการแข่งขันฟุตบอล----" class="form-control input-md" value="<?php echo @$press_data['name_press']; ?>"  />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="deleteimg">รูปธง:</label>
                        <div class="col-sm-8">
                            <?php 
							if(@$press_data['icon_press']){
								echo '<img src="'.@$press_data['icon_press'].'" /> ';
								echo '<button id="deleteimg" type="button" class="btn btn-warning btn-xs" onclick="window.location.href = \'press.php?task=deleteimg&src='.@$press_data['icon_press'].'&id='.$id.'\';" >ลบรูปนี้</button>';
							} 
							?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="icon_press">อัปรูปธง:</label>
                        <div class="col-sm-8">
                            <input type="file" id="icon_press" name="icon_press" class="form-control input-md" accept="image/*" />
                        </div>
                    </div>
                    <div class="form-group"> 
                        <div class="col-sm-offset-4 col-sm-8">
                            <button name="submit" id="submit" type="submit" class="btn btn-primary">บันทึก</button>
                        </div>
                    </div>
                    
                </form>
                <!-- start: form -->
                <footer style="margin-top:20px">
                    <div align="center"><p><h4>© 2016 LINEDOBALL. ALL RIGHTS RESERVED.</h4></p></div>
                </footer>
            </div>
        </div>
        <!-- start: JavaScript --> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/bootstrap-datepicker-thai.js"></script>
        <script src="js/bootstrap-datepicker.th.js"></script>
        <!-- end: JavaScript -->
    </body>
</html>

