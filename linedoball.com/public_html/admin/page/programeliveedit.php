<?php require_once '../config.php';?>
<?php include ROOT.'/templass/header.php';
 include("../connect.php");
?>


<div class="page home-page">
  <!-- Main Navbar-->

  <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <?php include('../templass/manuleft.php') ?>
        <div class="col-lg-10">
                                  <div class="card">
                                    <div class="card-close">
                                      <div class="dropdown">
                                        <button type="button" id="closeCard" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard" class="dropdown-menu has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                                      </div>
                                    </div>
                                    <div class="card-header d-flex align-items-center">
                                      <h3 class="h4">แก้ไขรายการถ่ายทอดสด</h3>
                                    </div>

                                    <div class="card-body">
                                      <div class="row bg-white has-shadow">

                                        <?php
                                        $sql1 = "SELECT p_id,p_name FROM press  order by p_name ASC";
                                          $result1 = $conn->query($sql1);
                                            $check=$_GET["check"];

                                         $sql = "SELECT * FROM teamvs  where t_id ='$check'";
                                          $result = $conn->query($sql);
                                          $row = mysqli_fetch_assoc($result);

                                          $leage=$row["p_id"];
                                          $date=$row["date_teame"];
                                          $datas=$row["date_teame"];
                                          $time=$row["t_time"];
                                          $t_linktype=$row["t_linktype"];
                                          $t_linktype2=$row["t_linktype2"];
                                          $t_linktype3=$row["t_linktype3"];
                                          $t_linktype4=$row["t_linktype4"];
                                          $link=$row["t_link1"];
                                          $link2=$row["t_link2"];
                                          $link3=$row["t_link3"];
                                          $link4=$row["t_link4"];
                                          $namevs=$row["t_namevs"];
                                          $chanel=$row["t_chanel"];
                                          $date_exp=$row["datetime_exp"];
                                            $a=$row['t_namevs'];
                                            $b=explode(" VS ",$a);

                                            $sql3 = "SELECT * FROM press WHERE p_id='$leage'";
                                              $result3 = $conn->query($sql3);
                                              $row3 = mysqli_fetch_array($result3);
                                              $namele= $row3["p_name"] ;
                                              $teameid=$row3["p_id"] ;
                                          ?>
                                            <div class="card-body">
                                                <form id="form_uploadvideo" method="POST" name="form_live" action="programeliveeditcupdate.php?check=<?php echo $row["t_id"] ; ?>" enctype="multipart/form-data">
                                          <div class="form-group row">
                                                      <label class="col-sm-3 form-control-label">เลือกรายการการแข่งขัน</label>
                                                            <div class="col-sm-8">
                                            <select required data-placeholder="กรุณาเลือกรายการแข่งขัน" class="chosen-select" tabindex="2" id="id_teams" name="id_teams" type="text" >
                                                                                          <option value="<?php echo $leage?>"><?php echo $namele; ?></option>
                                                                                                    <?php   while($row1 = mysqli_fetch_array($result1))
                                                                                                    {


                                                                                                      ?>

                                                                                        <option value="<?php echo $row1['p_id']  ?>"><?php echo $row1['p_name']; ?></option>
                                                                                                <?php } ?>
                                                                                                    </select>


                                                                                  </div>

                                                                                  <label class="col-sm-3 form-control-label" type="date">วันและเวลาที่ถ่ายทอดสด <?php echo $date_exp; ?></label>
                                                                                  <div class="col-sm-9">
                                                                                <input type="text" id="match_date_time" name="dates"class="form-control input-md" value="<?php echo substr($date_exp,0,-3); ?>">

                                                                                  </div>

                                                                                  <label class="col-sm-3 form-control-label">ทีมเหย้า</label>
                                                                                  <div class="col-sm-9">
                                                                                    <?php  $sqlh = "SELECT * FROM teames  where teames ='$b[0]'";
                                                                                      $resulth = $conn->query($sqlh);
                                                                                      $rowh = mysqli_fetch_assoc($resulth);
                                                                                          $h=$rowh['ts_id'];
                                                                                          ?>
                                                                                    <select   data-placeholder="กรุณาเลือกรายการแข่งขัน"  id="homes" name="homes"  type="text">
                                                                                            <option value="<?php echo $h  ?>"><?php echo $b[0];?></option>
                                                                                                      </select>

                                                                                  </div>
                                                                                  <?php  $sqla = "SELECT * FROM teames  where teames ='$b[1]'";
                                                                                    $resulta = $conn->query($sqla);
                                                                                    $rowa = mysqli_fetch_assoc($resulta);
                                                                                        $aw=$rowa['ts_id']; ?>
                                                                                  <label class="col-sm-3 form-control-label">ทีมเยือน</label>
                                                                                  <div class="col-sm-9">
                                                                                    <select  data-placeholder="กรุณาเลือกรายการแข่งขัน"  id="away" name="away"  type="text">
                                                                                        <option value="<?php echo $aw ?>"><?php echo $b[1]; ?></option>
                                                                                                      </select>

                                                                                  </div>
                                                                                  <label class="col-sm-3 form-control-label">อัพลิงค์ถ่ายทอดสด1</label>
                                                                                  <div class="col-sm-9">



                                <label class="radio-inline"><input type="radio" name="link_type1" value="1" <?php echo ($t_linktype=='1')? "checked='checked' ": '' ; ?>>youtube</label>
                                      <label class="radio-inline"><input type="radio" name="link_type1" value="2" <?php echo ($t_linktype=='2')? "checked='checked' ": '' ; ?>>facebook</label>
                                          <label class="radio-inline"><input type="radio" name="link_type1" value="3" <?php echo ($t_linktype=='3')? "checked='checked' ": '' ; ?>>pscp</label>
                                              <label class="radio-inline"><input type="radio" name="link_type1" value="4" <?php echo ($t_linktype=='4')? "checked='checked' ": '' ; ?>>facebook</label>
                                                  <label class="radio-inline"><input type="radio" name="link_type1" value="5" <?php echo ($t_linktype=='5')? "checked='checked' ": '' ; ?>>อื่นๆ</label>
                                                    <input type="text" id="t_link" name="t_link1"  class="form-control input-md" value="<?php echo $link ?>">
                                                                                  </div>
                                                                                  <label class="col-sm-3 form-control-label">อัพลิงค์ถ่ายทอดสด2</label>
                                                                                  <div class="col-sm-9">
                                                                                    <label class="radio-inline"><input type="radio" name="link_type2" value="1" <?php echo ($t_linktype2=='1')? "checked='checked' ": '' ; ?>>youtube</label>
                                                                                          <label class="radio-inline"><input type="radio" name="link_type2" value="2" <?php echo ($t_linktype2=='2')? "checked='checked' ": '' ; ?>>facebook</label>
                                                                                              <label class="radio-inline"><input type="radio" name="link_type2" value="3" <?php echo ($t_linktype2=='3')? "checked='checked' ": '' ; ?>>pscp</label>
                                                                                                  <label class="radio-inline"><input type="radio" name="link_type2" value="4" <?php echo ($t_linktype2=='4')? "checked='checked' ": '' ; ?>>facebook</label>
                                                                                                      <label class="radio-inline"><input type="radio" name="link_type2" value="5" <?php echo ($t_linktype2=='5')? "checked='checked' ": '' ; ?>>อื่นๆ</label>
                                                                                                                <input type="text" id="t_link" name="t_link2" class="form-control input-md" value="<?php echo $link2 ?>">
                                                                                  </div>
                                                                                  <label class="col-sm-3 form-control-label">อัพลิงค์ถ่ายทอดสด3</label>
                                                                                  <div class="col-sm-9">
                                                                                    <label class="radio-inline"><input type="radio" name="link_type3" value="1" <?php echo ($t_linktype3=='1')? "checked='checked' ": '' ; ?>>youtube</label>
                                                                                          <label class="radio-inline"><input type="radio" name="link_type3" value="2" <?php echo ($t_linktype3=='2')? "checked='checked' ": '' ; ?>>facebook</label>
                                                                                              <label class="radio-inline"><input type="radio" name="link_type3" value="3" <?php echo ($t_linktype3=='3')? "checked='checked' ": '' ; ?>>pscp</label>
                                                                                                  <label class="radio-inline"><input type="radio" name="link_type3" value="4" <?php echo ($t_linktype3=='4')? "checked='checked' ": '' ; ?>>facebook</label>
                                                                                                      <label class="radio-inline"><input type="radio" name="link_type3" value="5" <?php echo ($t_linktype3=='5')? "checked='checked' ": '' ; ?>>อื่นๆ</label>
                                                                                                                 <input type="text" id="t_link" name="t_link3"  class="form-control input-md" value="<?php echo $link3 ?>">
                                                                                  </div>
                                                                                  <label class="col-sm-3 form-control-label">อัพลิงค์ถ่ายทอดสด4</label>
                                                                                  <div class="col-sm-9">
                                                                                    <label class="radio-inline"><input type="radio" name="link_type4" value="1" <?php echo ($t_linktype4=='1')? "checked='checked' ": '' ; ?>>youtube</label>
                                                                                          <label class="radio-inline"><input type="radio" name="link_type4" value="2" <?php echo ($t_linktype4=='2')? "checked='checked' ": '' ; ?>>facebook</label>
                                                                                              <label class="radio-inline"><input type="radio" name="link_type4" value="3" <?php echo ($t_linktype4=='3')? "checked='checked' ": '' ; ?>>pscp</label>
                                                                                                  <label class="radio-inline"><input type="radio" name="link_type4" value="4" <?php echo ($t_linktype4=='4')? "checked='checked' ": '' ; ?>>facebook</label>
                                                                                                      <label class="radio-inline"><input type="radio" name="link_type4" value="5" <?php echo ($t_linktype4=='5')? "checked='checked' ": '' ; ?>>อื่นๆ</label>

                                                                                                                <input type="text" id="t_link" name="t_link4"  class="form-control input-md" value="<?php echo $link4 ?>">
                                                                                  </div>


                                                                                  <?php


                                                                                   $sql6 = "SELECT * FROM teamvs where t_id ='$check' ";
                                                                                    $result6 = $conn->query($sql6);
                                                                                    $row6 = mysqli_fetch_array($result6);

                                                                                    ?>

                                                                                  <label class="col-sm-3 form-control-label">ชแนล</label>
                                                                                  <div class="col-sm-9">
                                                                                    <select type="text" id="chanel" name="chanel" placeholder="----กรุณากรอกรายการแข่งขันฟุตบอล----" class="form-control input-md">

                                                                        <option value="<?php echo $row6['t_chanel']; ?>"><?php echo $row6['t_chanel']; ?></option>
                                                                          <?php
                                                                        $sql61 = "SELECT * FROM ch  order by t_chanel ASC ";
                                                                           $result61 = $conn->query($sql61);


                                                                           while($row61 = mysqli_fetch_array($result61)) {?>

                                                                <option value="<?php echo $row61['t_chname']; ?>"><?php echo $row61['t_chname']; ?></option>
                                                                <?php } ?>
                                                                                          <option value="">ยกเลิก</option>
                                                                          </select>

                                                                                  </div>
                                                                                </div>



                                                                                  <div class="col-sm-4 offset-sm-3">
                                                                                    <button type="submit" class="btn btn-primary">บันทึก</button>
                                                                                    <button type="reset" class="btn btn-secondary">ยกเลิก</button>
                                                                                  </div>
                                                                          </form>


                                                                            </div>
                                                                          </div>
                                                                        </div>
                                                                      </div>

                                                                    </div>
                                                                    </div></div>

                                                                      <?php include('../templass/footer.html') ?>
