<?php require_once '../config.php';?>
<?php include ROOT.'/templass/header.php';
 include("../connect.php");
?>

<?php   $sql = "SELECT * FROM press  order by p_name ASC   ";
  $result = $conn->query($sql);


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
                                      <h3 class="h4">เพิ่มรายการถ่ายทอดสด</h3>
                                    </div>

                                    <div class="card-body">
                                      <div class="row bg-white has-shadow col-10">

                                                                            <div class="card-body">
                                                                              <form id="form_uploadvideo" method="POST" name="form_live" action="programeliveaddcheck.php" enctype="multipart/form-data">

                                                                                <div class="form-group row">

                                                                                  <label class="col-sm-3 form-control-label">เลือกรายการการแข่งขัน</label>
                                                                                  <div class="col-sm-8">

                                                              <select required data-placeholder="กรุณาเลือกรายการแข่งขัน" class="chosen-select" tabindex="2" id="id_teams" name="id_teams">
                                                                            <option value=""></option>
                                                                          <?php   while($row = mysqli_fetch_array($result)) { ?>

                                                                          <option value="<?php echo $row['p_id']  ?>"><?php echo $row['p_name']; ?></option>
                                                                                  <?php } ?>
                                                                                      </select>


                                                                                  </div>
                                                                                  <label class="col-sm-3 form-control-label" type="date">วันและเวลาที่ถ่ายทอดสด</label>
                                                                                  <div class="col-sm-9">

                                                                                <input type="text" id="match_date_time" name="dates"class="form-control input-error">

                                                                                  </div>

                                                                                    <?php echo $row['t_namevs'];
                                                                                     list($d, $t) = explode(" " ,$t_namevs); ?>
                                                                                  <label class="col-sm-3 form-control-label">ทีมเหย้า</label>
                                                                                    <div class="col-sm-9">
                                                                                    <!--  <select required data-placeholder="กรุณาเลือกรายการแข่งขัน" class="chosen-select" tabindex="2"  id="homes" name="homes"  >-->
                                                                                            <option value=""></option>

                                                                                     <select class="form-control chosen" id="homes" name="homes"  data-placeholder="Choose an option please" style="height: 40px;">

                                                                                                            </select>







                                                                                  </div>

                                                                                  <label class="col-sm-3 form-control-label">ทีมเยือน</label>
                                                                                  <div class="col-sm-9">
                                                                                      <select class="form-control chosen"  id="away" name="away" data-placeholder="Choose an option please" style="height: 40px;">

                                                                                                      </select>
                                                                                  </div>
                                                                                  <label class="col-sm-3 form-control-label">อัพลิงค์ถ่ายทอดสด1</label>
                                                                                  <div class="col-sm-9">
                                                                                    <label class="radio-inline"><input type="radio" name="link_type1" value="1">youtube</label>
      							                                                                         <label class="radio-inline"><input type="radio" name="link_type1" value="2">facebook</label>
      							                                                                                <label class="radio-inline"><input type="radio" name="link_type1" value="3">pscp</label>
      							                                                                                       <label class="radio-inline"><input type="radio" name="link_type1" value="4">facebook</label>
      							                                                                                              <label class="radio-inline"><input type="radio" name="link_type1" value="5">อื่นๆ</label>
                                                                                                                  <input type="text" id="t_link" name="t_link1" placeholder="--กรุณากรอกอัพลิงค์ถ่ายทอดทางChannel--" class="form-control input-md" value="">
                                                                                  </div>
                                                                                  <label class="col-sm-3 form-control-label">อัพลิงค์ถ่ายทอดสด2</label>
                                                                                  <div class="col-sm-9">
                                                                                    <label class="radio-inline"><input type="radio" name="link_type2" value="1">youtube</label>
  							                                                                           <label class="radio-inline"><input type="radio" name="link_type2" value="2">facebook</label>
  							                                                                                  <label class="radio-inline"><input type="radio" name="link_type2" value="3">pscp</label>
  							                                                                                         <label class="radio-inline"><input type="radio" name="link_type2" value="4">facebook</label>
  							                                                                                                <label class="radio-inline"><input type="radio" name="link_type2" value="5">อื่นๆ</label>
                                                                                                                <input type="text" id="t_link" name="t_link2" placeholder="--กรุณากรอกอัพลิงค์ถ่ายทอดทางChannel--" class="form-control input-md" value="">
                                                                                  </div>
                                                                                  <label class="col-sm-3 form-control-label">อัพลิงค์ถ่ายทอดสด3</label>
                                                                                  <div class="col-sm-9">
                                                                                    <label class="radio-inline"><input type="radio" name="link_type3" value="1">youtube</label>
      							                                                                       <label class="radio-inline"><input type="radio" name="link_type3" value="2">facebook</label>
      							                                                                              <label class="radio-inline"><input type="radio" name="link_type3" value="3">pscp</label>
      							                                                                                     <label class="radio-inline"><input type="radio" name="link_type3" value="4">facebook</label>
      							                                                                                             <label class="radio-inline"><input type="radio" name="link_type3" value="5">อื่นๆ</label>
                                                                                                                 <input type="text" id="t_link" name="t_link3" placeholder="--กรุณากรอกอัพลิงค์ถ่ายทอดทางChannel--" class="form-control input-md" value="">
                                                                                  </div>
                                                                                  <label class="col-sm-3 form-control-label">อัพลิงค์ถ่ายทอดสด4</label>
                                                                                  <div class="col-sm-9">
                                                                                    <label class="radio-inline"><input type="radio" name="link_type4" value="1">youtube</label>
    							                                                                         <label class="radio-inline"><input type="radio" name="link_type4" value="2">facebook</label>
    							                                                                                <label class="radio-inline"><input type="radio" name="link_type4" value="3">pscp</label>
    							                                                                                       <label class="radio-inline"><input type="radio" name="link_type4" value="4">facebook</label>
    							                                                                                              <label class="radio-inline"><input type="radio" name="link_type4" value="5">อื่นๆ</label>
                                                                                                                <input type="text" id="t_link" name="t_link4" placeholder="--กรุณากรอกอัพลิงค์ถ่ายทอดทางChannel--" class="form-control input-md" value="">
                                                                                  </div>
                                                                                  <?php   $sql6 = "SELECT * FROM ch  order by t_chanel ASC ";
                                                                                    $result6 = $conn->query($sql6);?>
                                                                                  <label class="col-sm-3 form-control-label">ชแนล</label>
                                                                                  <div class="col-sm-9">
                                                                                    <select type="text" id="chanel" name="chanel" data-placeholder="กรุณากรอกรายการแข่งขันฟุตบอล" class="form-control input-md">
                                                                                      <option value=""></option>
                                                                                      <?php   while($row6 = mysqli_fetch_array($result6)) {?>

                                                                            <option value="<?php echo $row6['t_chname']; ?>"><?php echo $row6['t_chname']; ?></option>
                                                                            <?php } ?>
                                                                          </select>

                                                                                  </div>
                                                                                </div>
                                                                                <div class="form-group row">
                                                                                  <div class="col-sm-4 offset-sm-3">
                                                                                    <button type="submit" class="btn btn-primary">บันทึก</button>
                                                                             <button type="reset" class="btn btn-secondary">ยกเลิก</button>
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
