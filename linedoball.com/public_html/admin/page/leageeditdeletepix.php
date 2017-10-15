<?php
 include("../connect.php");

$check=$_GET["check"];
$sql = "SELECT * FROM press WHERE p_id = '$check' ";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
$x='';
$title=$row["p_name"];

$img=$row["p_icon"];


$dir2 = 'fileupload/pixteam/'.$img.'';

$remove_file = array_map('unlink', glob("$dir2"));
if($remove_file){



        $query = "UPDATE press SET p_icon = ''  where p_id ='$check'";
        $result1 = $conn->query($query)or die("Error in Query".$conn->error);

  	$query = mysqli_query($conn,$sql);


  if(!$query){
    echo "<script type='text/javascript'>alert('ไม่สามารถ ลบ ไฟล์ กรุณาลองใหม่')</script>";
   echo "<script> window.history.go(-1);</script>\n";

  }else{
  		echo "<script type='text/javascript'>alert(' ลบไฟล์สำเร็จ')</script>";

  		 echo "<script>location.reload(); window.history.go(-1);</script>\n";

      }

}

mysqli_close($conn);
?>
