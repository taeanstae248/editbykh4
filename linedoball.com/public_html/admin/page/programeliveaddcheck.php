 <meta charset="UTF-8">
<?php
include("../connect.php");

 $t_idlist=$_POST['id_teams'];

   $home=$_POST['homes'];
   $away=$_POST['away'];
    $linktype1=$_POST['link_type1'];
      $dates=$_POST['dates'];
      $linktype2=$_POST['link_type2'];
      $linktype3=$_POST['link_type3'];
      $linktype4=$_POST['link_type4'];
       $t_link=$_POST['t_link'];
       $t_link1=$_POST['t_link1'];
       $t_link2=$_POST['t_link2'];
       $t_link3=$_POST['t_link3'];
       $t_link4=$_POST['t_link4'];
        $chanel=$_POST['chanel'];


  //$datetime_exp = $dates.' '.$time;

list($d, $t) = explode(" " ,$dates);

$sqlh="SELECT * FROM teames WHERE ts_id = $home  ";
  $resulth = $conn->query($sqlh);
  $rowh=mysqli_fetch_assoc($resulth);
 $h=$rowh['teames'];


 $sqla="SELECT * FROM teames WHERE ts_id = $away  ";
   $resulta = $conn->query($sqla);
   $rowa=mysqli_fetch_assoc($resulta);
  $a=$rowa['teames'];


$name=$h.' VS '.$a;




$sql = "INSERT INTO teamvs (p_id,datetime_exp,date_teame,t_time,t_namevs,t_linktype,t_link1,t_linktype2,t_link2,t_linktype3,t_link3,t_linktype4,t_link4,t_chanel) VALUES
('$t_idlist','$dates','$d','$t','$name','$linktype1','$t_link1','$linktype2','$t_link2','$linktype3','$t_link3','$linktype4','$t_link4','$chanel')";
mysqli_query($conn, "SET NAMES UTF8");

 //javascript แสดงการ upload file

if($conn->query($sql) === TRUE){
echo "<script type='text/javascript'>";
echo "alert('บันทึกเรียบสำเร็จ');";
echo "window.location = 'programelive_add.php'; ";
echo "</script>";
}
else{
echo "<script type='text/javascript'>";
echo "alert('Error back to upload again');";
echo "</script>";
}




?>
