<?php
 include("../connect.php");

 $check=$_GET["check"];

  $sql = "SELECT * FROM ch WHERE t_chanel = '$check' ";
     $result = $conn->query($sql);
   $row=mysqli_fetch_array($result);
   $img=$row['t_pix'];


 $sqld = "DELETE FROM ch  WHERE t_chanel = '$check' ";
 $query = mysqli_query($conn,$sqld);


 $dir2 = 'fileupload/ch/'.$img.'';
   $remove_file = array_map('unlink', glob("$dir2"));

  if($query){
  echo "<script type='text/javascript'>";
  echo "alert('บันทึกเรียบสำเร็จ');";
  echo "window.location = 'ch.php'; ";

  echo "</script>";
  }
  else{
  echo "<script type='text/javascript'>";
  echo "alert('Error back to upload again');";
  echo "</script>";
  }

 ?>
