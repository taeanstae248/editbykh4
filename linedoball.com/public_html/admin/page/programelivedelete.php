<?php
 include("../connect.php");

$check=$_GET["check"];

$sql = "DELETE FROM teamvs
      WHERE t_id = '".$check."' ";
  $query = mysqli_query($conn,$sql);

  if(!$query){
    echo "<script type='text/javascript'>alert('ไม่สามารถ ลบ ไฟล์ กรุณาลองใหม่')</script>";
   echo "<script> window.history.go(-1);</script>\n";

  }else{
    echo "<script type='text/javascript'>alert(' ลบไฟล์สำเร็จ')</script>";

echo "<meta http-equiv ='refresh'content='0;URL=programelive.php'>";

      }


mysqli_close($conn);
?>
