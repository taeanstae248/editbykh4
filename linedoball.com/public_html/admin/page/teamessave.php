

 <meta charset="UTF-8">
 <?php
 //1. เชื่อมต่อ database:
 include("../connect.php");
 $ftopic=$_POST['ftopic'];
  $id_team=$_POST['id_team'];
/*$a="($id_team)";
echo $a;*/

$sql1 = "SELECT * FROM teames WHERE teames='$ftopic'   ";
  $result1 = $conn->query($sql1);
  $row=$result1->num_rows;
  if($row){
    echo "<script type='text/javascript'>";
    echo "alert('มีชื่อนี้อยู่แล้ว');";
echo "window.location = 'teames.php'; ";
    echo "</script>";

}else{

$teameid="";

foreach($_POST['id_team'] as $row=>$art){

$teameid.="($art)";

 }
$a=$teameid;

 $sql = "INSERT INTO teames (teames,p_id)  VALUES ('$ftopic','$a')";
mysqli_query($conn, "SET NAMES UTF8");


 if($conn->query($sql) === TRUE){
    echo "<script type='text/javascript'>";
    echo "alert('บันทึกเรียบสำเร็จ');";
    echo "window.location = 'teames.php'; ";
    echo "</script>";
    }
    else{
    echo "<script type='text/javascript'>";
    echo "alert('Error back to upload again');";

    echo "</script>";
}

}

 ?>
