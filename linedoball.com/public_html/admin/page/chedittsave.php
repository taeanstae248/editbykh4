
<?php
 include("../connect.php");


$check=$_GET["check"];

$sql = "SELECT * FROM ch  WHERE t_chanel = '$check' ";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

$title=$row["t_chname"];
$img=$row["t_pix"];
$name=$_POST["date_time"] ;


if($img==""){
  $fileupload = $_FILES['fileupload'];
  $ftopic=$_POST['ftopic'];
      $txt_text=$_POST['txt_text'];
          date_default_timezone_set('Asia/Bangkok');
  	$date = date("Ymd");
           $numrand = (mt_rand());
  $upload=$_FILES['fileupload'];
  if($upload <> '') {
  $path="fileupload/ch/";

   $type = strrchr($_FILES['fileupload']['name'],".");

  $newname = $date.$numrand.$type;
  $path_copy=$path.$newname;
  $path_link="fileupload/ch/".$newname;

  move_uploaded_file($_FILES['fileupload']['tmp_name'],$path_copy);}

      $query = "UPDATE ch SET t_chname = '$name' , t_pix ='$newname' where t_chanel ='$check'";
      $result1 = $conn->query($query)or die("Error in Query".$conn->error);



 echo "<meta http-equiv ='refresh'content='0;URL=chedit.php?check=".$_GET['check']."'>";


  	if($result1){


  	echo "<script type='text/javascript'>";
  	 echo "<script> window.location.href = 'chedit.php?check=$check'; </script>\n";


  	echo "</script>";
  	}else{
  	echo "<script type='text/javascript'>";
  	echo "alert('Error back to upload again');";
  	echo "</script>";
  }

}else{

  $query = "UPDATE ch SET t_chname = '$name'  where t_chanel ='$check'";
  $result1 = $conn->query($query)or die("Error in Query".$conn->error);
echo "<meta http-equiv ='refresh'content='0;URL=chedit.php?check=".$_GET['check']."'>";

}

?>
