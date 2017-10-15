 <meta charset="UTF-8">
 <?php
 //1. เชื่อมต่อ database:
 include("../connect.php");
   $check=$_GET["check"];
  $id_team[]=$_POST['id_team'];
/*$a="($id_team)";
echo $a;*/



$teameid="";

foreach($_POST['id_team'] as $row=>$art){ //เช็คทีมที่เพิ่ม
$teameid.=$art;

$sql="SELECT * FROM teames WHERE  ts_id =$art";
$result=$conn->query($sql);

while ($row=mysqli_fetch_assoc($result)) {
$l=$row['p_id'];

$ai= "($check)".$l;


$query = "UPDATE teames SET p_id='$ai'  where ts_id ='$art'";
$result1 = $conn->query($query)or die("Error in Query".$conn->error);


}
 }


 if(!$result1){
 echo "<script type='text/javascript'>alert('ไม่สามารถ เพิ่มทีมได้')</script>";
  echo "<script>location.reload(); window.history.go(-1);</script>\n";

 }else{
 echo "<script type='text/javascript'>alert(' บันทึกสำเร็จ')</script>";

 echo "<script>location.reload(); window.history.go(-1);</script>\n";

 }




 ?>
