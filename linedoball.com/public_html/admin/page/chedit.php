<?php require_once '../config.php';?>
<?php include ROOT.'/templass/header.php';
 include("../connect.php");
?>
<?php
  $check=$_GET["check"];
 $sql = "SELECT * FROM ch  where t_chanel ='$check' ";
  $result = $conn->query($sql);
  $row = mysqli_fetch_array($result);
  $name=$row["t_chname"];
  $ch=$row["t_chanel"];
  $pix=$row["t_pix"];

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
                                      <h3 class="h4">แก้ไขชแนล</h3>
                                    </div>

                                    <div class="card-body">
                                      <div class="row bg-white has-shadow">

                                                                            <div class="card-body">
                                                                              <form id="form_uploadvideo" method="POST" name="form_live" action="chedittsave.php?check=<?php echo $ch; ?>" enctype="multipart/form-data">

                                                                                <div class="form-group row">


                                                                                  <label class="col-sm-2 form-control-label">ชื่อชแนลที่ต้องการแก้ไข </label>
                                                                                    <div class="col-sm-9">
                                                                                  ***  ชื่อต้องตรงกับชแนลที่สร้าง(ifrea)เท่านั้น ***
                                                                                <input type="text" id="date_team" name="date_time" placeholder="----กรุณากรอกชื่อช่อง----" class="form-control input-md" value="<?php echo $name ;?>" data-provide="datepicker" data-date-language="th-th">

                                                                                    </div>
                                                                                    <?php if($pix!=""){?>
                                                                                  <label class="col-sm-2 form-control-label">สัญลักษณ์</label>
                                                                                  <div class="col-sm-2">
                                                                                    <a href="cheditdeletepix.php?check=<?php echo $ch ; ?>" title="ลบ"> <i class="fa fa-window-close" aria-hidden="true"></i></a>
                                                                                <img class="imgshow" src="fileupload/ch/<?php echo $pix; ?>">

                                                                                  </div>
                                                                                  <?php }else{?>
                                                                                  <label class="col-sm-2 form-control-label">อัปรูปธง</label>
                                                                                  <div class="col-sm-9">
                                                                            <input class="form-control" type="file" name="fileupload" id="fileupload" required="required">
                                                                                  </div>
                                                                                  <?php } ?>
                                                                                </div>
                                                                                <div class="form-group row">
                                                                                  <div class="col-sm-4 offset-sm-3">
                                                                                    <br>
                                                                                    <button type="submit" class="btn btn-primary">บันทึก</button>

                                                                                  </div>
                                                                                </div>

                                                                              </form>






                                                                            </div>
                                                                          </div>
                                                                        </div>
                                                                      </div>

                                                                    </div>
                                                                    </div></div>

                                                                      <?php include('../templass/footer.html') ?>
