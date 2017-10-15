<?php

 include("../connect.php");

 $check=$_GET["check"];



$sql = "DELETE FROM teames
      WHERE ts_id = '".$check."' ";
      $query = mysqli_query($conn,$sql);


      if(!$query){
      echo "<script type='text/javascript'>alert('ไม่สามารถ ลบ ไฟล์ กรุณาลองใหม่')</script>";
      echo "<script> window.history.go(-1);</script>\n";

      }else{
        echo "<script type='text/javascript'>";
        	echo "alert('ลบไฟล์สำเร็จ');";
        echo "window.location = 'teames.php'; </script>";


        }


?>
