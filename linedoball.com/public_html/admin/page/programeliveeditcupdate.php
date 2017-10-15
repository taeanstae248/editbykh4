<meta charset="UTF-8">
<?php
include("../connect.php");
$check=$_GET["check"];

$t_idlist=$_POST['id_teams'];
// $time=$_POST['date_time'];
  $name=$_POST['name'];
   $linktype1=$_POST['link_type1'];
     $dates=$_POST['dates'].':00';
     $linktype2=$_POST['link_type2'];
     $linktype3=$_POST['link_type3'];
     $linktype4=$_POST['link_type4'];
      $t_link=$_POST['t_link'];
      $t_link1=$_POST['t_link1'];
      $t_link2=$_POST['t_link2'];
      $t_link3=$_POST['t_link3'];
      $t_link4=$_POST['t_link4'];
       $chanel=$_POST['chanel'];
       $home=$_POST['homes'];
       $away=$_POST['away'];

       $sqlh="SELECT * FROM teames WHERE ts_id = $home  ";
         $resulth = $conn->query($sqlh);
         $rowh=mysqli_fetch_assoc($resulth);
        $h=$rowh['teames'];


        $sqla="SELECT * FROM teames WHERE ts_id = $away  ";
          $resulta = $conn->query($sqla);
          $rowa=mysqli_fetch_assoc($resulta);
         $a=$rowa['teames'];


$datetime_exp = $dates.' '.$time;
$namex=$h.' VS '.$a;

  //$datetime_exp = $dates.' '.$time;

list($d, $t) = explode(" " ,$dates);


$k= date('H:i',strtotime("$t"));


$time = preg_replace('/[^0-9]/i', '', $time);
  list($hour, $minute) = str_split($time, 2);
$time = $hour.':'.$minute;


      $query = "UPDATE teamvs SET p_id = '$t_idlist' , datetime_exp ='$datetime_exp', date_teame ='$d', t_time ='$k', t_namevs ='$namex', t_linktype ='$linktype1', t_link1 ='$t_link1', t_linktype2 ='$linktype2', t_link2 ='$t_link2', t_linktype3 ='$linktype3'
       , t_link3 ='$t_link3', t_linktype4 ='$linktype4', t_link4 ='$t_link4', t_chanel ='$chanel' where t_id ='$check'";
       $result1 = $conn->query($query)or die("Error in Query".$conn->error);


//javascript แสดงการ upload file

if($result1){
  echo "<script type='text/javascript'>";
  echo "alert('แก้ไขเรียบสำเร็จ');";
  echo "window.location = 'programelive.php'; ";
  echo "</script>";

}
else{
  echo "<script type='text/javascript'>";
 echo "alert('Error back to upload again');";
 echo "</script>";
}




?>
