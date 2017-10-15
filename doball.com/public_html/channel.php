<?php
include 'cache_head.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Cache-control" content="public">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive Retina-Friendly Menu with different, size-dependent layouts" />
    <meta name="keywords" content="responsive menu, retina-ready, icon font, media queries, css3, transition, mobile" />
    <meta name="author" content="Codrops" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <title>Linedoball.com เว็บไซต์รวมลิงค์ดูบอลออนไลน์ผ่านเน็ตฟรี ภาพคมชัดระดับHD ไม่กระตุก ครบทุกคู่ ทุกลีกดัง</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="shortcut icon" href="../favicon.ico"> 
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <link href="css/cssmenu.css" rel="stylesheet">
    <link rel="stylesheet" href="css/styles_new.css">
    <link rel="stylesheet" href="css/styles-update_new.css">
</head>
<body>

    
		<?php include 'cache_template/header.php'; ?>



<!-- start: marquee -->
 <div class="container">
<div class="row box">
    <marquee scrollamount="3">อยู่นอกบ้านก็ดูบอลได้!! ดูบอลสดออนไลน์ฟรีบนมือถือของคุณ Linedoball.com เว็บไซต์รวมลิงค์ดูบอลออนไลน์ผ่านเน็ตฟรี ภาพคมชัดระดับHD ไม่กระตุก ครบทุกคู่ ทุกลีกดัง</marquee>
</div>
<style>
   /* iframe, object, embed {
        width: 100%px;
        height:480px;
        border:none;

    }
*/
.myIframe {
position: relative;
padding-bottom: 65.25%;
padding-top: 30px;
height: 0;
overflow: auto; 
-webkit-overflow-scrolling:touch;
        border:none;
} 
.myIframe iframe {
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
        border:none;
}
</style>
<br>
<div style="text-align:center;">
<?php
    include("connect.inc.php");
    if(isset($_GET["id"])){ 
      $id=$_GET["id"];
       
        ?>
        <div class='myIframe' > 
			<iframe src="http://live.linedoball.com/channel.php?ch=<?php echo $id; ?>" allowfullscreen="true" ></iframe>
        </div>
        <?php
    }
        ?>
        </div>
        <!--<section id="channel-match" class="container bg_darkgrey padtb-50">
        <div class="col-sm-4 no-padding team-name home">
            &nbsp;
        </div>
        <div class="col-sm-4 no-padding tcenter date-time-box">
            <p class="null-stream">ขณะนี้ยังไม่มีการถ่ายทอดสด!!</p>
        </div>
        <div class="col-sm-4 no-padding team-name away">
            &nbsp;
        </div>
    </section>-->


    <!-- start: footer -->
    <footer class="box-foot">
        <div class="row con-mar center">
            Linedoball.com เว็บไซต์ดูบอลสดออนไลน์ผ่านเน็ตกันแบบฟรีๆ ภาพชัดระดับ HD ไม่มีกระตุก ถ่ายทอดฟุตบอลสดครบทุกลีกดังระดับโลก<br>

            © 2016 LINEDOBALL. ALL RIGHTS RESERVED.
        </div>
    </footer>
    <!-- end: footer -->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 


    <!-- start: JavaScript --> 
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/cssmenu.js"></script>
    <script src="js/common1.js"></script>
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-83608519-1', 'auto');
      ga('send', 'pageview');

    </script>


    <!-- end: JavaScript --> 

</body>
</html>
<?php
include 'cache_footer.php';
?>
