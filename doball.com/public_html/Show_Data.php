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
        <div class="container">
            <center><a class="navbar-brand" href="#"></a><img src="img/30e9be.png" alt="HTML5 Icon" style="width:500px;height:290px;"><h1>ระบบจัดการไฮไลท์ถ่ายทอดสดฟุตบอล</h1></center>

            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-22 col-sm-push-12" ></div>
                    <div class="col-sm-22 col-sm-pull-0" >
                    </div>
                </div>
                <br>
                <!-- end: title--> 

                <br>

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

                <div class="well">
					<button type="button" class="btn btn-danger" onclick="deleteSelect()"><span class="glyphicon glyphicon-trash"></span>ลบที่เลือก</button>
					<button type="button" class="btn btn-danger" onclick="deleteAll()"><span class="glyphicon glyphicon-trash"></span>ลบทั้งหมด</button>
                    <?php
                    $strSQL = "select id, name_press from press";
                    $result = mysql_query($strSQL) or die("Error Query [" . $strSQL . "]");
                    $Num_Rows = mysql_num_rows($result);
                    error_reporting(E_ALL & ~E_NOTICE);

                    $Per_Page = 9;   // Per Page

                    $Page = isset($_GET["Page"]) ? $_GET["Page"] : '';
                    if (!$_GET["Page"]) {
                        $Page = 1;
                    }

                    $Prev_Page = $Page - 1;
                    $Next_Page = $Page + 1;

                    $Page_Start = (($Per_Page * $Page) - $Per_Page);
                    if ($Num_Rows <= $Per_Page) {
                        $Num_Pages = 1;
                    } else if (($Num_Rows % $Per_Page) == 0) {
                        $Num_Pages = ($Num_Rows / $Per_Page);
                    } else {
                        $Num_Pages = ($Num_Rows / $Per_Page) + 1;
                        $Num_Pages = (int) $Num_Pages;
                    }

                    $strSQL .=" order  by name_press ASC LIMIT $Page_Start , $Per_Page";
                    $result = mysql_query($strSQL);
                    ?>
                    <table class="table table-striped" id="dataTable">
                        <thead>
                            <tr>
                                <th class="text-center" ><input type="checkbox" class="form-check-input" id="selectAll"></th>
                                <th class="text-center" >ลำดับ</th>
                                <th class="text-center" >ลีกทีมฟุตบอล</th>
                                <th class="text-center" colspan="2" >เครื่องมือ</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $num = 1;
                            while ($objResult = mysql_fetch_array($result)) {
                                ?>
                                <tr>
                                    <th class="text-center" scope="row"><input name="id[]" type="checkbox" class="form-check-input" value="<?php echo $objResult["id"]; ?>"></th>  
                                    <td class="text-center" ><?php echo (($Page - 1) * $Per_Page) + $num; ?></th>  
                                    <td class="text-center" ><?php echo $objResult["name_press"]; ?></td>
                                    <td class="text-center" ><a href="press.php?id=<?php echo $objResult["id"]; ?>"><button type="button" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp;แก้ไข</button></a></td>
                                    <td class="text-center" ><a href="deletee.php?id=<?php echo $objResult["id"] ?>"><button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span>&nbsp;&nbsp;ลบ</button></a></td>
                                </tr>
                                <?php
                                $num++;
                            }
                            ?>     

                        </tbody>
                    </table>

                    <!-- start: table--> 
                    Total <?php echo $Num_Rows; ?> Record : <?php echo $Num_Pages; ?> Page :
                    <?php
                    if ($Prev_Page) {
                        echo " <a href='$_SERVER[SCRIPT_NAME]?Page=$Prev_Page'>Previous</a> ";
                    }

                    for ($i = 1; $i <= $Num_Pages; $i++) {
                        if ($i != $Page) {
                            echo "[ <a href='$_SERVER[SCRIPT_NAME]?Page=$i'>$i</a> ]";
                        } else {
                            echo "<b> $i </b>";
                        }
                    }
                    if ($Page != $Num_Pages) {
                        echo " <a href ='$_SERVER[SCRIPT_NAME]?Page=$Next_Page'>Next</a> ";
                    }
                    ?>
                </div>
            </div>
            <!-- end: table-->

            <!-- start: footer --> 
            <footer>
                <div align="center"><p><h4>© 2016 LINEDOBALL. ALL RIGHTS RESERVED.</h4></p></div>
            </footer>
            <!-- end: footer -->  

        </div>
        <!-- start: JavaScript --> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <!-- end: JavaScript -->
        <script>

            $(document).ready(function () {
                $('#selectAll').click(function () {
                    var checkedStatus = this.checked;
                    $('#dataTable tbody tr').find('th:first :checkbox').each(function () {
                        $(this).prop('checked', checkedStatus);
                    });
                });

            });

            function deleteSelect() {
				
				var result = confirm("ยืนยันลบ");
				
				if (result) {
					var val = [];
					$('#dataTable tbody tr').find('th:first :checkbox:checked').each(function (i) {
						val[i] = $(this).prop('value');
					});
					var obj = val.toString();
					console.log(val);
					console.log(obj);
					console.log('---------------');
					//console.log(obj);
					window.location.href = 'deletee.php?id=' + obj;
		
				}

            }

            function deleteAll() {
				
				var result = confirm("ยืนยันลบทั้งหมด");
				
				if (result) {
					window.location.href = 'deletee.php?task=deleteall';
		
				}

            }

        </script>

    </body>
</html>

