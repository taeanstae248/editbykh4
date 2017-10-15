
 <meta charset="UTF-8">
 <?php
 //1. เชื่อมต่อ database:
 include("../connect.php");
$ftopic=$_POST['date_time'];


 $sql1 = "SELECT * FROM ch WHERE t_chname='$ftopic'   ";
   $result1 = $conn->query($sql1);
   $row=$result1->num_rows;
   if($row){
     echo "<script type='text/javascript'>";
     echo "alert('ชื่อชแนลนี้มีอยู่แล้ว');";
 echo "window.location = 'ch.php'; ";
     echo "</script>";
}else{


 $fileupload = $_FILES['fileupload']; //รับค่าไฟล์จากฟอร์ม

     $txt_text=$_POST['txt_text'];
 date_default_timezone_set('Asia/Bangkok');
 	$date = date("Ymd");
  $numrand = (mt_rand());
 $upload=$_FILES['fileupload'];
 if($upload <> '') {   //not select file
 //โฟลเดอร์ที่จะ upload file เข้าไป
 $path="fileupload/ch/";

 //เอาชื่อไฟล์เก่าออกให้เหลือแต่นามสกุล
  $type = strrchr($_FILES['fileupload']['name'],".");

 //ตั้งชื่อไฟล์ใหม่โดยเอาเวลาไว้หน้าชื่อไฟล์เดิม
 $newname = $date.$numrand.$type;
 $path_copy=$path.$newname;
 $path_link="fileupload/ch/".$newname;

 //คัดลอกไฟล์ไปเก็บที่เว็บเซริ์ฟเวอร์
 move_uploaded_file($_FILES['fileupload']['tmp_name'],$path_copy);
 	}
 	// เพิ่มไฟล์เข้าไปในตาราง uploadfile

 	/*$sql = "INSERT INTO tbl_video (v_img)
 		VALUES('$newname')";*/



   $sql = "INSERT INTO ch (t_chname,t_pix)
VALUES ('$ftopic','$newname')";
mysqli_query($conn, "SET NAMES UTF8");


 	// javascript แสดงการ upload file
if($conn->query($sql) === TRUE){
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
}
 ?>
