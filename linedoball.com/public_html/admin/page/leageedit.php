<?php require_once '../config.php';?>
<?php include ROOT.'/templass/header.php';?>
<?php include '../connect.php';?>


<div class="page home-page">
  <!-- Main Navbar-->

  <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <?php include('../templass/manuleft.php');
        $check=$_GET["check"];
        ?>


        <div class="col-lg-12">
                                  <div class="card">
                                    <div class="card-close">
                                      <div class="dropdown">
                                        <button type="button" id="closeCard" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard" class="dropdown-menu has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                                      </div>
                                    </div>
                                    <div class="card-header d-flex align-items-center">
                                      <h3 class="h4">เพิ่มข้อมูลประเภทการแข่งขัน</h3>
                                    </div>
                                    <div class="form-group row">
                                    <div class="card-body col-12">

<?php $sql = "SELECT * FROM press  WHERE p_id = '$check'  ";
$result = mysqli_query($conn, $sql);
$row = $result->fetch_assoc();
$name=$row["p_name"] ;
$pix=$row["p_icon"]?>
                                            <form id="form_uploadvideo" method="POST" name="form_uploadvideo" action="leageupdate.php?check=<?php echo $row["p_id"] ; ?>" enctype="multipart/form-data">

                                          <label class="col-sm-2 form-control-label">ประเภทรายการแข่งขัน</label>
                                          <div class="col-sm-9">
                                          <input class="form-control input-error" name="ftopic" id="ftopic" type="text" required="" value="<?php echo $name; ?>">
                                          </div>
                                            <?php if($pix!=""){?>
                                          <label class="col-sm-2 form-control-label">สัญลักษณ์</label>
                                          <div class="col-sm-2">
                                            <a href="leageeditdeletepix.php?check=<?php echo $row["p_id"] ; ?>" title="ลบ"> <i class="fa fa-window-close" aria-hidden="true"></i></a>
                                        <img class="imgshow" src="fileupload/pixteam/<?php echo $pix; ?>">

                                          </div>
                                          <?php }else{?>
                                          <label class="col-sm-2 form-control-label">อัปรูปธง</label>
                                          <div class="col-sm-9">
                                    <input class="form-control" type="file" name="fileupload" id="fileupload" required="required">
                                          </div>
                                          <?php } ?>

                                        </div>

                                          <div class="col-sm-1  " style="  margin-left: 10px;  ">
                                            <button type="submit" class="btn btn-warning" >บันทึก</button>

                                          </div>


                                      </form>
                                    </div>
                                    <div class="project">
                                      <form id="form_uploadvideo" method="POST" name="form_uploadvideo" action="leageeditsave.php?check=<?php echo $row["p_id"] ; ?>" enctype="multipart/form-data">
                                        <h3 class="h4">เพิ่มทีมในลีก</h3>
                                        <div class="col-sm-12">
                                          <select data-placeholder="กรุณาเลือกทีมที่ต้องการ" multiple class="chosen-select" type="text" tabindex="8" id="id_team" name="id_team[]">
                                            <?php

                                              $i="($check)";
                                            $sql11 = "SELECT * FROM teames WHERE p_id  NOT like '%$i%'   ";
                                              $result11 = $conn->query($sql11);

                                                while( $row11=mysqli_fetch_array($result11)){
                                              $id=$row11['ts_id'];
                                              $name=$row11['teames'];
                                              ?>
                                              <option value="<?php echo $id ; ?>"><?php echo $name ;?></option>
                                              <?php
                                            }
                                                    ?>


  <?php/*
  $sqlidts = "SELECT * FROM teames WHERE p_id like '%($check)%'  ";
  $resultidts = $conn->query($sqlidts);

  while ($rowidts=mysqli_fetch_assoc($resultidts)) {
    $a=$rowidts['ts_id'];
      $l=$rowidts['teames'];

    ?>
  <option disabled value="<?php echo "($i)"; ?>"><?php echo $l ;?></option>

    <?php}*/?>

  </select>
                                              <button type="submit" class="btn btn-warning" >+</button>
                                        </div>
                                    </form>
                                                                        <label class="col-sm-3 form-control-label">รายชื่อทีมที่ร่วมแข่งขันภายในลีก</label>

                                                    <div class="row bg-white has-shadow col-12 col-sm-12 col-md-12 col-lg-10 col-xs-12">

                                                      <table class="table table-striped">
                                                        <thead>

                                                          <tr>
                                                            <th>ลำดับ</th>
                                                            <th>ชื่อทีม</th>
                                                            <th>แก้ไข</th>

                                                          </tr>
                                                        </thead>
                                                        <?php

                                                        $sql = "SELECT * FROM teames   order by ts_id DESC ";
                                                         $result = $conn->query($sql);
                                                       $Num_Rows=mysqli_num_rows($result);

                                                       $Per_Page =24;   // Per Page


                                                       $Page = isset($_GET["Page"]) ? $_GET["Page"] : '';
                                                       if (!$_GET["Page"]) {
                                                           $Page = 1;
                                                       }

                                                       $Prev_Page = $Page - 1;
                                                       $Next_Page = $Page + 1;

                                                       $Page_Start = (($Per_Page * $Page) - $Per_Page);
                                                       if ($Num_Rows <= $Per_Page) {
                                                           $Num_Pages = 1;
                                                       } else if (($Num_Rows % $Per_Page) == 0) {
                                                           $Num_Pages = ($Num_Rows / $Per_Page);
                                                       } else {
                                                           $Num_Pages = ($Num_Rows / $Per_Page) + 1;
                                                           $Num_Pages = (int) $Num_Pages;
                                                       }

                                        $sql = "SELECT * FROM teames WHERE p_id like '%($check)%'  LIMIT " .$Page_Start .','.$Per_Page;
                                                $result1 = mysqli_query($conn,$sql);
                                                  $i=1;  while($row = mysqli_fetch_array($result1)) {
                      ?>
                                                        <thead>
                                                          <tr>
                                                            <td><?php echo $i; ?></td>
                                                            <td><?php echo $row['teames'];?></td>

                                                              <td><a href="leageteameedit.php?check=<?php echo $row['ts_id'];?>" title="แก้ไข"><i class="fa fa-pencil-square-o" aria-hidden="true">  </i>  <a href="leageteamedelete.php?check=<?php echo $row['ts_id'];?>&check2=<?php echo $check;?>" title="ลบ"> <i class="fa fa-window-close" aria-hidden="true"></i></a></td>

                                                          </tr>
                                                        </thead>
                                                        <?php $i++; } ?>
                                                                                                <tbody>
                                                          <tr>
                                                          </tr>
                                                        </tbody>
                                                      </table>

                                      </div>
                                      <ul class="pagination">
                                        </ul></div>
                                  </div>
                                    </div>

  </div></div>


      <?php include ROOT.'/templass/footer.html';?>
