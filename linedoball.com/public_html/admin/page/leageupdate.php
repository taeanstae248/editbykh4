<?php
 include("../connect.php");


$check=$_GET["check"];

$sql = "SELECT * FROM press  WHERE p_id = '$check' ";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

$title=$row["p_name"];
$img=$row["p_icon"];
$name=$_POST["ftopic"] ;


if($img==""){
  $fileupload = $_FILES['fileupload'];
  $ftopic=$_POST['ftopic'];
      $txt_text=$_POST['txt_text'];
          date_default_timezone_set('Asia/Bangkok');
  	$date = date("Ymd");
           $numrand = (mt_rand());
  $upload=$_FILES['fileupload'];
  if($upload <> '') {
  $path="fileupload/pixteam/";

   $type = strrchr($_FILES['fileupload']['name'],".");

  $newname = $date.$numrand.$type;
  $path_copy=$path.$newname;
  $path_link="fileupload/pixvideo/".$newname;

  move_uploaded_file($_FILES['fileupload']['tmp_name'],$path_copy);}

      $query = "UPDATE press SET p_name = '$name' , p_icon ='$newname' where p_id ='$check'";
      $result1 = $conn->query($query)or die("Error in Query".$conn->error);
 echo "<meta http-equiv ='refresh'content='0;URL=leageedit.php?check=".$_GET['check']."'>";


  	if($result1){


  	echo "<script type='text/javascript'>";
  	 echo "<script> window.location.href = 'leageedit.php?check=$check'; </script>\n";


  	echo "</script>";
  	}else{
  	echo "<script type='text/javascript'>";
  	echo "alert('Error back to upload again');";
  	echo "</script>";
  }

}else{
  $query = "UPDATE press SET p_name = '$name'  where p_id ='$check'";
  $result1 = $conn->query($query)or die("Error in Query".$conn->error);
echo "<meta http-equiv ='refresh'content='0;URL=leageedit.php?check=".$_GET['check']."'>";

}

?>
