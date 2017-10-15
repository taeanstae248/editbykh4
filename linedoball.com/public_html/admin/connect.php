<?php
error_reporting(E_ALL ^ E_NOTICE);

$conn = new mysqli('localhost', 'admin_chline', 'HN0AyKhPIa', 'admin_chline');
mysqli_query($conn, "SET NAMES UTF8");
/* check connection */
if ($conn->connect_errno) {
     echo "<script>";
  echo "alert(\" ไม่สามารถเชื่อมต่อฐานข้อมูล\");";
 echo "window.history.back()";
      echo "</script>";
}else{ }

?>
