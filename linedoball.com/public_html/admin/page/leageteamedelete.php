
 <?php

  include("../connect.php");

  $check=$_GET["check"];
  $check2=$_GET["check2"];


   $sqlu="update teames set p_id = REPLACE(p_id, '($check2)', '') where ts_id='$check'";
  $result1 = $conn->query($sqlu)or die("Error in Query".$conn->error);



       if(!$result1){
       echo "<script type='text/javascript'>alert('ไม่สามารถ ลบ ไฟล์ กรุณาลองใหม่')</script>";
       echo "<script> window.history.go(-1);</script>\n";

       }else{
         echo "<script type='text/javascript'>";
         	echo "alert('ลบไฟล์สำเร็จ');";
         echo "window.location = 'leageedit.php?check=$check2'; </script>";


         }


 ?>
