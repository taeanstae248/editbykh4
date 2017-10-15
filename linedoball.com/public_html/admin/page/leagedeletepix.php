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


  $sql = "DELETE FROM press
  			WHERE p_id = '".$check."' ";

  	$query = mysqli_query($conn,$sql);

    $sqls = "SELECT * FROM teames WHERE p_id like '%$check%' ";
    $results = $conn->query($sqls);
    while ($rows=mysqli_fetch_array($results)) {
      $pid=$rows['p_id'];
      $tsid=$rows['ts_id'];


      $sqlu="update teames set p_id = REPLACE(p_id, '($check)', '') where ts_id='$tsid'";
      $result1 = $conn->query($sqlu)or die("Error in Query".$conn->error);


    }

  if(!$query){
    echo "<script type='text/javascript'>alert('ไม่สามารถ ลบ ไฟล์ กรุณาลองใหม่')</script>";
   echo "<script> window.history.go(-1);</script>\n";

  }else{
  		echo "<script type='text/javascript'>alert('ลบไฟล์สำเร็จ')</script>";

  		 echo "<script>location.reload(); window.history.go(-1);</script>\n";

      }

}

mysqli_close($conn);
?>
