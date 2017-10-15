<?php require_once '../config.php';?>
<?php include ROOT.'/templass/header.php';?>
<?php include '../connect.php';?>
<?php
$check=$_GET["check"];
  $sql1 = "SELECT * FROM teames  WHERE ts_id='$check' ";
    $result1 = $conn->query($sql1);
    $row1=mysqli_fetch_assoc($result1);
    $name=$row1['teames'];
  ?>


<div class="page home-page">
  <!-- Main Navbar-->

  <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <?php include('../templass/manuleft.php') ?>
        <div class="col-lg-12">
                                  <div class="card">
                                    <div class="card-close">
                                      <div class="dropdown">
                                        <button type="button" id="closeCard" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard" class="dropdown-menu has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                                      </div>
                                    </div>
                                    <div class="card-header d-flex align-items-center">

                                      <h3 class="h4">แก้ไขทีม</h3>
                                    </div>
                                    <div class="form-group row">
                                    <div class="card-body col-12">


                                            <form id="form_uploadvideo" method="POST" name="form_upload" action="leageteameeditsave.php?check=<?php echo $check; ?>" enctype="multipart/form-data">
                                            <label class="col-sm-2 form-control-label">ชื่อทีม</label>
                                            <div class="col-sm-9">

                                      <input list="browsers" class="form-control input-error"   id="ftopic" name="ftopic" required value="<?php echo $name; ?>">



                                            </div>

                                            <label class="col-sm-2 form-control-label">ลีกที่ได้ร่วมทำการแข่งขัน</label>
                                            <div class="col-sm-9">
                                                </div>



                                          <div class="col-sm-9">
                                            <label class="form-control-label">เพิ่มประเภทรายการแข่งขัน</label>
                                            <select data-placeholder="Your Favorite Types of Bear" multiple class="chosen-select" tabindex="8" id="id_team" name="id_team[]">
                                              <?php

                                               $sqlidt = "SELECT * FROM teames WHERE ts_id = '".$check."' ";
                                                $resultidt = $conn->query($sqlidt);
                                                $rowidt=mysqli_fetch_assoc($resultidt);
                                                $a=$rowidt['p_id'];
                                                  $expo=explode(")(",trim($a,"()"));
                                                  $con="";
                                                  foreach ($expo as  $value) {
                                                      $con.=" and p_id!='$value'";
                                                  }

                                              $sql11 = "SELECT * FROM press  WHERE 1 $con  ";
                                                $result11 = $conn->query($sql11);

                                               while($row11 = mysqli_fetch_array($result11)) {
                                                  $id=$row11['p_id']; $name=$row11['p_name'];
                                                 ?>

                                              <option value=""></option>

                                              <option value="<?php echo "({$id})" ; ?>"><?php echo $name ;?></option>

                                              <?php } ?>




<?php

 $sqlidts = "SELECT * FROM teames WHERE ts_id = '".$check."' ";
  $resultidts = $conn->query($sqlidts);
  $rowidts=mysqli_fetch_assoc($resultidts);
  $a=$rowidts['p_id'];



 $expo=explode(")(",trim($a,"()"));
$l=[]; $i=[];
foreach ($expo as $key=>$value ) {

  $sqlpr = "SELECT * FROM press WHERE p_id = '$value' ";
   $resultpr = $conn->query($sqlpr);
   $rowpr=mysqli_fetch_array($resultpr);

   $l[$key]=$rowpr['p_name'];
    $i[$key]=$rowpr['p_id'];

?>
   <option value="<?php echo "({$i[$key]})"; ?>" selected> <?php echo $l[$key] ;?> </option>
<?php }
    ?>
 </select>



                                          <!--  <input list="browsers1" class="form-control input-error"   id="id_team" name="id_team">
                                            <datalist id="browsers1">

                                            <?php


                                            // while($row = mysqli_fetch_array($result)) { ?>

                                <option value="<?php //echo $row['p_id']  ?>"><?php //echo $row['p_name']; ?></option>
                                        <?php //} ?>
                                         </datalist>
                                       </div> -->


                                        </div>
                                          <br>
                                          <div class="col-sm-1 " id="xlistteame" style="  margin-left: 10px;  ">
                                              <button type="submit" class="btn " >บันทึก</button>
                                            <!--<button type="submit" class="btn btn-warning" >บันทึก</button>-->

                                          </div>
</div>

                                     </form>
                                    </div>

                                  </div>


<!--<ul class="xteame list-group">
   <li>
test

   </li>
</ul>-->




<div class="butalldel">

</div>
</div></div>


      <?php include ROOT.'/templass/footer.html';?></div>
