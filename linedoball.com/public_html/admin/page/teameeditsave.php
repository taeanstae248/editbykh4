
 <meta charset="UTF-8">
 <?php
 //1. เชื่อมต่อ database:
 include("../connect.php");
 $check=$_GET["check"];
 $ftopic=$_POST['ftopic'];
  $id_team=$_POST['id_team'];
/*$a="($id_team)";
echo $a;*/
$sql="SELECT * FROM teames ";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$idleage=$row['p_id'];



$teameid="";

foreach($_POST['id_team'] as $row=>$art){

$teameid.="$art";

 }
$a=$teameid;



$query = "UPDATE teames SET teames = '$ftopic',p_id='$a'  where ts_id ='$check'";
$result1 = $conn->query($query)or die("Error in Query".$conn->error);

$query = mysqli_query($conn,$sql);


if(!$query){
echo "<script type='text/javascript'>alert('ไม่สามารถ ลบ ไฟล์ กรุณาลองใหม่')</script>";
echo "<script> window.history.go(-1);</script>\n";

}else{
echo "<script type='text/javascript'>alert(' บันทึกสำเร็จ')</script>";

echo "<script>location.reload(); window.history.go(-1);</script>\n";

}





 ?>
