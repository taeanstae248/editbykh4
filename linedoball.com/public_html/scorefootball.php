<?php   require 'config.php';
    include (ROOT.'/admin/connect.php');
include('./templass/header.html');?>
<div class="container" >



<div class="row">
  <?php include('./templass/htbranner.php');?>

  <?php
  $yd=date('Y-m-d',strtotime("-1 day"));
    $sql = "SELECT * FROM tbl_tded_program WHERE tded_date = '$yd' and status='1' and  id='2'";
    $result = $conn->query($sql);
  $row = mysqli_fetch_array($result);
  echo $row["tded_program"];
   ?>

</div>



<!--branner rig-->
    <?php include('./templass/menuleft.html');?>
</div>

</div>
<?php include('./templass/footer.php');?>
