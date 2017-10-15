<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">

        <!-- Bootstrap -->
        <link href="/css/bootstrap.css" rel="stylesheet">
        <link href="/css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="stylesheet" type="text/css" href="/css/component.css" />
        <link href="/css/cssmenu.css" rel="stylesheet">
        <link rel="stylesheet" href="/css/styles_new.css">

        <link rel="stylesheet" href="/css/styles-update_new.css">

    </head>
    <body>
    <style>
    div.table-responsive.limit_detail{    background: #ffffff;
    color: black;
    font-size: 21px;
    font: -webkit-mini-control;
    border: 1px solid black;
    padding: 5px;
      background-color: #ffffff;}
        td.utable_league{background-color: rgb(225, 149, 23); }
        td.utable_f4.f{display: -webkit-box;}
        td.utable_f2.f{display: -webkit-box;}
          .table__info--table1  {background-color: rgba(5, 143, 255, 0.69);}
            h4, .h4 {font-size: 30px;}

                                </style>
        <!-- start: Header -->
		<?php include './cache_template/header.php'; ?>
    <div class="container" >
    		<div class="row box">
    				<marquee scrollamount="3">อยู่นอกบ้านก็ดูบอลได้!! ดูบอลสดออนไลน์ฟรีบนมือถือของคุณ Doball.com เว็บไซต์รวมลิงค์ดูบอลออนไลน์ผ่านเน็ตฟรี</marquee>
    		</div><br>
        <div class="scorelive">
            <?php
            include('connect.inc.php');
            $yd=date('Y-m-d',strtotime("-1 day"));
              $sql = "SELECT * FROM tbl_tded_program WHERE tded_date='$yd' and id='4'";
              $objQuery = mysql_query($sql) or die ("Error Query [".$sql."]");
              $objResult = mysql_fetch_array($objQuery);
        echo $objResult["tded_program"];
             ?>
           </div>
</div></div></div></div></div>
     <div class="containersco visible-sm visible-xs hidden-xs hidden-sm"> <p><H1>ดูบอลออนไลน์ ดูบอลสด โปรแกรมบอล ผลบอล ดูบอลสดมือถือ</H1>
       <H3>ลิ้งค์ถ่ายทอดสด</H3><H3> โปรแกรมบอล</H3><H3> ผลบอล</H3><H3> ติดต่อเรา</H3>
       <h4>ผลบอล : ผลบอลสด,ผลบอลย้อนหลัง</h4></div>
        <!-- start: insertTabel_ball -->
		<?php include './cache_template/footer.php'; ?>

        <!-- end: JavaScript -->
    </body>
</html>
