<META http-equiv=Content-Type content="text/html; charset=Utf-8">


<?php
session_start();
session_destroy();
$_SESSION["UserID"]="";
echo"<script>alert('ออกจากระบบเรียบร้อยแล้ว ขอบคุณครับ...');window.location='login.html';</script>";
exit();
?>
