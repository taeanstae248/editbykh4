<?php
include("Checkname.php");
include("connect.inc.php");

?>
<!-- start: insert table data_ball--> 
<?php
if (isset($_POST["submit"])) {
    
    $id_edit = intval($_POST["id_edit"]);
    $id_team = $_POST["id_team"];
    $date_team = $_POST["date_team"];
    $time_team = $_POST["time_team"];
    $name_team = $_POST["name_team"];
    $link_type = $_POST["link_type"];
    $link_team = $_POST["link_team"];
    $link2_type = $_POST["link2_type"];
    $link2_team = $_POST["link2_team"];
    $link3_type = $_POST["link3_type"];
    $link3_team = $_POST["link3_team"];
    $link4_type = $_POST["link4_type"];
    $link4_team = $_POST["link4_team"];
    $http_refer = $_POST["http_refer"];
	

	list($day, $month, $year,) = explode("/", $date_team);
	$date_team = ($year-543).'-'.$month.'-'.$day;
	
	$time_team = preg_replace('/[^0-9]/i', '', $time_team);
    list($hour, $minute) = str_split($time_team, 2);
	$time_team = $hour.':'.$minute;
	
    $datetime_exp = $date_team.' '.$time_team;

    if($id_edit>0){
        $sql = "update team set id_team='$id_team', datetime_exp='$datetime_exp', date_team='$date_team', time_team='$time_team', name_team='$name_team', link_type='$link_type', link_team='$link_team', link2_type='$link2_type', link2_team='$link2_team', link3_type='$link3_type', link3_team='$link3_team', link4_type='$link4_type', link4_team='$link4_team' where id='$id_edit'";
        $query = mysql_query($sql)or die("Not update");
    
    }else{
        $sql = "INSERT INTO team (id_team,datetime_exp,date_team, time_team, name_team, link_type, link_team, link2_type, link2_team, link3_type, link3_team, link4_type, link4_team) VALUES ('$id_team', '$datetime_exp', '$date_team', '$time_team', '$name_team', '$link_type', '$link_team', '$link2_type', '$link2_team', '$link3_type', '$link3_team', '$link4_type', '$link4_team')";
        $query = mysql_query($sql)or die("Not insert");
    }
    $dynamic_url    = 'http://'.$_SERVER['HTTP_HOST']  .'/buildcache.php?key=AAVVQQ'; // requested dynamic page (full url)
    $ch = curl_init($dynamic_url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_exec($ch);
    curl_close($ch);
	if($http_refer){
		echo '<meta http-equiv="refresh" content="0;url='.$http_refer.'">';exit();
	}else{
		echo '<meta http-equiv="refresh" content="0;url=Show_ball.php">';exit();
	}
    
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
                        $team_data = NULL;
                        if($id>0){
                            $sql = "select * from team where id='$id'";
                            $rs_team = mysql_query($sql)or die("no show");
                            if(mysql_num_rows($rs_team)> 0){
                                $team_data = mysql_fetch_array($rs_team);
                            }
                        }
                    ?>
                    <input type="hidden" name="id_edit" value="<?php echo $id; ?>" />
                    <input type="hidden" name="http_refer" value="<?php echo $_SERVER['HTTP_REFERER']; ?>" />
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="id_team">เพิ่มรายการแข่งขันฟุตบอล:</label>
                        <div class="col-sm-8">
                            <select type="text" id="id_team" name="id_team"  placeholder="----กรุณากรอกรายการแข่งขันฟุตบอล----" class="form-control input-md" >
                                <?php
                                $sql = "SELECT id,name_press from press order by name_press ASC";
                                $rs_press = mysql_query($sql)or die("no show");
                                while ($data_press = mysql_fetch_array($rs_press)) {
                                    $selected = ($team_data['id_team']==$data_press['id'])? ' selected="selected" ': '' ;
                                    ?>
                                    <option value="<?php echo $data_press["id"]; ?>" <?php echo $selected; ?>><?php echo $data_press["name_press"]; ?></option>
                                    <?php
                                }
                                ?>    
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="date_team">วันที่ถ่ายทอดสด:</label>
                        <div class="col-sm-8">
                            <?php 
                                if($team_data['date_team']){
                                    list($year, $month, $day) = explode("-", $team_data['date_team']);
                                    $team_data['date_team'] = $day.'/'.$month.'/'.($year+543);
                                }
                            ?>
                            <input type="text" id="date_team" name="date_team" placeholder="----กรุณากรอกวันถ่ายทอดสด----" class="form-control input-md" value="<?php echo @$team_data['date_team']; ?>" data-provide="datepicker" data-date-language="th-th" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="time_team">เวลาถ่ายทอดสด:</label>
                        <div class="col-sm-8">
                            <input type="text" id="time_team" name="time_team" placeholder="----กรุณากรอกเวลาถ่ายทอดสด----" class="form-control input-md" value="<?php echo @$team_data['time_team']; ?>"  />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="name_team">ชื่อคู่ที่ลงแข่ง:</label>
                        <div class="col-sm-8">
                            <input type="text" id="name_team" name="name_team" placeholder="----กรุณากรอกชื่อคู่ที่ลงแข่ง----" class="form-control input-md" value="<?php echo @$team_data['name_team']; ?>" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="link_team">อัพลิงค์ถ่ายทอด1:</label>
                        <div class="col-sm-8">
							<label class="radio-inline"><input type="radio" name="link_type" value='1' <?php echo (@$team_data['link_type']=='1')? "checked='checked' ": '' ; ?> >ลุง</label>
							<label class="radio-inline"><input type="radio" name="link_type" value='2' <?php echo (@$team_data['link_type']=='2')? "checked='checked' ": '' ; ?> >โอ้</label>
							<label class="radio-inline"><input type="radio" name="link_type" value='3' <?php echo (@$team_data['link_type']=='3')? "checked='checked' ": '' ; ?> >youtube</label>
							<label class="radio-inline"><input type="radio" name="link_type" value='4' <?php echo (@$team_data['link_type']=='4')? "checked='checked' ": '' ; ?> >facebook</label>
							<label class="radio-inline"><input type="radio" name="link_type" value='5' <?php echo (@$team_data['link_type']=='5')? "checked='checked' ": '' ; ?> >อื่นๆ</label>
                            <input type="text" id="link_team" name="link_team" placeholder="--กรุณากรอกอัพลิงค์ถ่ายทอดทางChannel--" class="form-control input-md" value="<?php echo @$team_data['link_team']; ?>" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="link2_team">อัพลิงค์ถ่ายทอด2:</label>
                        <div class="col-sm-8">
							<label class="radio-inline"><input type="radio" name="link2_type" value='1' <?php echo (@$team_data['link2_type']=='1')? "checked='checked' ": '' ; ?> >ลุง</label>
							<label class="radio-inline"><input type="radio" name="link2_type" value='2' <?php echo (@$team_data['link2_type']=='2')? "checked='checked' ": '' ; ?> >โอ้</label>
							<label class="radio-inline"><input type="radio" name="link2_type" value='3' <?php echo (@$team_data['link2_type']=='3')? "checked='checked' ": '' ; ?> >youtube</label>
							<label class="radio-inline"><input type="radio" name="link2_type" value='4' <?php echo (@$team_data['link2_type']=='4')? "checked='checked' ": '' ; ?> >facebook</label>
							<label class="radio-inline"><input type="radio" name="link2_type" value='5' <?php echo (@$team_data['link2_type']=='5')? "checked='checked' ": '' ; ?> >อื่นๆ</label>
                            <input type="text" id="link2_team" name="link2_team" placeholder="--กรุณากรอกอัพลิงค์ถ่ายทอดทางChannel--" class="form-control input-md" value="<?php echo @$team_data['link2_team']; ?>" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="link3_team">อัพลิงค์ถ่ายทอด3:</label>
                        <div class="col-sm-8">
							<label class="radio-inline"><input type="radio" name="link3_type" value='1' <?php echo (@$team_data['link3_type']=='1')? "checked='checked' ": '' ; ?> >ลุง</label>
							<label class="radio-inline"><input type="radio" name="link3_type" value='2' <?php echo (@$team_data['link3_type']=='2')? "checked='checked' ": '' ; ?> >โอ้</label>
							<label class="radio-inline"><input type="radio" name="link3_type" value='3' <?php echo (@$team_data['link3_type']=='3')? "checked='checked' ": '' ; ?> >youtube</label>
							<label class="radio-inline"><input type="radio" name="link3_type" value='4' <?php echo (@$team_data['link3_type']=='4')? "checked='checked' ": '' ; ?> >facebook</label>
							<label class="radio-inline"><input type="radio" name="link3_type" value='5' <?php echo (@$team_data['link3_type']=='5')? "checked='checked' ": '' ; ?> >อื่นๆ</label>
                            <input type="text" id="link3_team" name="link3_team" placeholder="--กรุณากรอกอัพลิงค์ถ่ายทอดทางChannel--" class="form-control input-md" value="<?php echo @$team_data['link3_team']; ?>" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-4" for="link4_team">อัพลิงค์ถ่ายทอด4:</label>
                        <div class="col-sm-8">
							<label class="radio-inline"><input type="radio" name="link4_type" value='1' <?php echo (@$team_data['link4_type']=='1')? "checked='checked' ": '' ; ?> >ลุง</label>
							<label class="radio-inline"><input type="radio" name="link4_type" value='2' <?php echo (@$team_data['link4_type']=='2')? "checked='checked' ": '' ; ?> >โอ้</label>
							<label class="radio-inline"><input type="radio" name="link4_type" value='3' <?php echo (@$team_data['link4_type']=='3')? "checked='checked' ": '' ; ?> >youtube</label>
							<label class="radio-inline"><input type="radio" name="link4_type" value='4' <?php echo (@$team_data['link4_type']=='4')? "checked='checked' ": '' ; ?> >facebook</label>
							<label class="radio-inline"><input type="radio" name="link4_type" value='5' <?php echo (@$team_data['link4_type']=='5')? "checked='checked' ": '' ; ?> >อื่นๆ</label>
                            <input type="text" id="link4_team" name="link4_team" placeholder="--กรุณากรอกอัพลิงค์ถ่ายทอดทางChannel--" class="form-control input-md" value="<?php echo @$team_data['link4_team']; ?>" />
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

