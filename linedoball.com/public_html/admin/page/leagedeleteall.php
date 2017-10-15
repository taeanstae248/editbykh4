<?php
 include("../connect.php");

$a=$_POST["id"];




for($i=0;$i<count($_POST["id"]);$i++){

  $sql = "SELECT * FROM press WHERE p_id = '$a[$i]' ";
     $result = $conn->query($sql);

   while($row = mysqli_fetch_array($result)) {
     $img=$row['p_icon'];

     		if($_POST["id"][$i] != ""){


         $sql = "DELETE FROM press
                 WHERE p_id = '".$_POST["id"][$i]."' ";

             $query = mysqli_query($conn,$sql);

        $dir2 = 'fileupload/pixteam/'.$img.'';
          $remove_file = array_map('unlink', glob("$dir2"));



     		}
  }

	}


if($remove_file){


  $sql = "DELETE FROM press
  			WHERE p_id = '".$check."' ";

  	$query = mysqli_query($conn,$sql);


  if(!$query){
    echo "<script type='text/javascript'>alert('ไม่สามารถ ลบ ไฟล์ กรุณาลองใหม่')</script>";
   echo "<script> window.history.go(-1);</script>\n";

  }else{
  		echo "<script type='text/javascript'>alert(' ลบไฟล์สำเร็จ')</script>";

echo "<meta http-equiv ='refresh'content='0;URL=leage.php'>";


     }

}

mysqli_close($conn);
?>
