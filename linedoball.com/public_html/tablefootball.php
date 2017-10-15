<?php   require 'config.php';
    include (ROOT.'/admin/connect.php');
include('./templass/header.html');?>
<div class="container" >



<div class="row">

  <?php include('./templass/htbranner.php'); $time=date("Y-m-d");?>


    <form name="frmSearch" method="get" action="<?php echo $_SERVER['SCRIPT_NAME'];?>">
<div class="serch col-9"> เลือกดูรายการผลบอลย้อนหลัง <input type="text"  id="match_date_time" name="txtKeyword" placeholder="วันที่ที่ต้องการค้นหา" autocomplete="off" value="<?php echo $_GET["txtKeyword"];?>">
  <button type="submit" class="btn btn-primary" value="Search">ค้นหา</button></div>
  </form>

  <?php
$s=trim($_GET["txtKeyword"]);
  if($s!= ""){
    $sql1 = "SELECT * FROM tbl_tded_program WHERE tded_date LIKE '%$s%' ";
    $result1 = $conn->query($sql1);
  $row1 = mysqli_fetch_array($result1);
  echo $row1["tded_program"];

} else {

  $sql = "SELECT * FROM tbl_tded_program WHERE tded_date LIKE '%$time%' ";
  $result = $conn->query($sql);
$row = mysqli_fetch_array($result);
echo $row["tded_program"];
}

        ?>




</div>



<!--branner rig-->
    <?php include('./templass/menuleft.html');?>
</div>

</div>
<?php include('./templass/footer.php');?>
