<?php require_once '../config.php';?>
<?php include ROOT.'/templass/header.php';
 include("../connect.php");
?>
<?php   $sql = "SELECT * FROM ch  order by t_chanel ASC ";
  $result = $conn->query($sql);?>

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
                                      <div class="row bg-white has-shadow">

                                                                            <div class="card-body col-8">
                                                                              <form id="form_uploadvideo" method="POST" name="form_live" action="chsave.php" enctype="multipart/form-data">

                                                                                <div class="form-group row">





                                                                                    <div class="col-sm-10">
                                                                                      <p>ชื่อชแนลที่ต้องการเพิ่ม</p>
                                                                                <input type="text" id="date_team" name="date_time" placeholder="***  ชื่อต้องตรงกับชแนลที่สร้าง(ifrea)เท่านั้น เช่น ch1  ***" class="form-control input-md" value="<?php echo $time ;?>" data-provide="datepicker" data-date-language="th-th">

                                                                                    </div>
                                                                                    <div class="col-sm-10">
                                                                                      <p>รูปช่อง</p>
                                                                                <input class="form-control" type="file" name="fileupload" id="fileupload" required="required">
                                                                                    </div>

                                                                                </div>
                                                                                  <button type="submit" class="btn btn-primary">บันทึก</button>
                                                                                <div class="form-group row">

                                                                                </div>

                                                                              </form>





                                                                              <div class="project">
                                                                                <label class="col-sm-3 form-control-label">ชแนลทั้งหมด</label>

                                                            <div class="row bg-white has-shadow col-12 col-sm-12 col-md-12 col-lg-10 col-xs-12">

                                            <?php
                                             $sql = "SELECT * FROM ch   order by t_chanel ASC ";
                                              $result = $conn->query($sql);
                                            $Num_Rows=mysqli_num_rows($result);

                                            $Per_Page =18;   // Per Page

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

                                            $sql3 = "SELECT * FROM ch  order by t_chanel DESC  LIMIT " .$Page_Start .','.$Per_Page;
                                               $result3 = mysqli_query($conn,$sql);

                                              while($row3 = mysqli_fetch_array($result3)) {
                                              ?>
                                              <div class="teame col-3"><?php echo $row3["t_chname"] ; ?><div class="editpix">
                                                  <form name="frmMain" action="leagedeleteall.php" method="post" OnSubmit="return onDelete();">
                                                      <img class="imgshow" src="fileupload/ch/<?php echo $row3["t_pix"] ; ?>" title="<?php echo $row3["t_chname"] ; ?>">
                                                   <a href="chedit.php?check=<?php echo $row3["t_chanel"] ; ?>" title="แก้ไข">
                                                  <i class="fa fa-pencil-square-o" aria-hidden="true">  </i> </a>
                                                <a href="chdelete.php?check=<?php echo $row3["t_chanel"] ; ?>" title="ลบ"> <i class="fa fa-window-close" aria-hidden="true"></i></a>
                                            </div></div>
                                                <?php } ?>

                                              </div>
                                              <ul class="pagination">
                                              Total <?php echo $Num_Rows; ?> Record : <?php echo $Num_Pages; ?> Page :

                                              <?php
                                              if ($Prev_Page) {

                                                  ?>
                                                <li class="paginate_button page-item previous" id="example_previous"><a href="ch.php?Page=<?php  echo $Prev_Page; ?>" aria-controls="example" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
                                                    <?php
                                              }

                                              for ($i = 1; $i <= $Num_Pages; $i++) {
                                                  if ($i != $Page) {

                                                      ?>
                                                    </li><li class="paginate_button page-item "><a href="ch.php?Page=<?php echo $i; ?>" aria-controls="example" data-dt-idx="1" tabindex="0" class="page-link"><?php echo $i ?></a></li>
                                                      <?php
                                                  } else {?>
                                                  </li><li class="paginate_button page-item "><a href="ch.php?Page=<?php echo $i; ?>" aria-controls="example" data-dt-idx="1" tabindex="0" class="page-link"><?php echo $i ?></a></li>
                                                      <?php  }}
                                              if ($Page != $Num_Pages) {
                                                  ?>
                                                  <li class="paginate_button page-item next" id="example_next"><a href="ch.php?Page=<?php echo $Next_Page ;?>" aria-controls="example" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li></ul>
                                                  <?php
                                              }
                                              ?>




                                                </div>
                                                                            </div>
                                                                          </div>
                                                                        </div>
                                                                      </div>

                                                                    </div>
                                                                    </div></div>

                                                                      <?php include('../templass/footer.html') ?>
