<?php require_once '../config.php';?>
<?php include ROOT.'/templass/header.php';?>
<?php include '../connect.php';?>


<div class="page home-page">
  <!-- Main Navbar-->

  <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <?php include('../templass/manuleft.php') ?>
        <div class="col-lg-12">
                                  <div class="card">


                                    <?php
$sql="SELECT * FROM teamvs INNER JOIN press ON (teamvs.p_id = press.p_id)  ORDER  BY date_teame ASC , t_time ASC";

                                      $result = $conn->query($sql);
                                      $Num_Rows=mysqli_num_rows($result);

                                      $Per_Page =15;   // Per Page

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

                                       $sql="SELECT * FROM teamvs INNER JOIN press ON (teamvs.p_id = press.p_id)  order by date_teame ASC , t_time ASC  LIMIT " .$Page_Start .','.$Per_Page;
                                        $result1 = $conn->query($sql);

                                      ?>

                                                             <div class="card">
                                                               <div class="card-close">
                                                                 <div class="dropdown">
                                                                   <button type="button" id="closeCard" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                                                   <div aria-labelledby="closeCard" class="dropdown-menu has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                                                                 </div>

                                                               </div>
                                                               <div class="card-header d-flex align-items-center">
                                                                 <h3 class="h4">รายการถ่ายทอดสด</h3>
                                                               </div>


                                                               <div class="card-body col-8 col-sm-8 col-md-8 col-xs-10 col-lg-10 center">
                                                               <table class="table">
                                                               <thead>
                                                               <tr>
                                                               <th>ลำดับ</th>
                                                               <th>เลือก</th>
                                                               <th>ลีกทีมฟุตบอล</th>
                                                               <th>วันที่ถ่ายทอดสด</th>
                                                               <th>เวลาถ่ายทอดสด</th>
                                                               <th>ชื่อคู่ที่ลงแข่ง</th>

                                                                <th>ชแนล</th>
                                                               <th>จัดการ</th>

                                                               </tr>
                                                               </thead>
                                                               <form name="frmMain" action="programelivedeleteall.php" method="post" OnSubmit="return onDelete();">
                                                               <?php  $i=1; while($row = mysqli_fetch_array($result1)) {
                                                                 $leage=$row["p_id"];
                                                                 $date=$row["date_teame"];
                                                                 $time=$row["t_time"];
                                                                 $t_linktype=$row["t_linktype"];

                                                                 $link=$row["t_link1"];
                                                                 $namevs=$row["t_namevs"];
                                                                  $nameleage=$row["p_name"];
                                                                 $chanel=$row["t_chanel"];?>
                                                               <tbody>
                                                               <tr>
                                                               <th scope="row"><?=$i;?></th>
                                                               <td><input name="id[]" type="checkbox" class="form-check-input" value="<?php echo $row["t_id"] ; ?>"></td>

                                                               <td><?php echo $nameleage ?></td>
                                                               <td><?php echo $date ?></td>
                                                               <td><?php echo $time ?></td>
                                                               <td><?php echo $namevs ?></td>

                                                            
                                                               <td><?php echo $chanel ?></td>
                                                               <td class="text-center"><a href="programeliveedit.php?check=<?php echo $row["t_id"];?>"><button type="button" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp;แก้ไข</button></a>
                                                               <a href="programelivedelete.php?check=<?php echo $row["t_id"];?>"><button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span>&nbsp;&nbsp;ลบ</button></a></td>

                                                               </tr>
                                                               </tbody>
                                                               <?php $i++; } ?>   </table>
                                                               <button type="submit" class="btn btn-warning">ลบรายการที่เลือก</button>

                                                            </form>
                                                             </div>
                                                                 </div>

                                                                 <ul class="pagination">

                                                                 Total <?php echo $Num_Rows; ?> Record : <?php echo $Num_Pages; ?> Page :

                                                                 <?php
                                                                 if ($Prev_Page) {

                                                                     ?>
                                                                   <li class="paginate_button page-item previous" id="example_previous"><a href="programelive.php?Page=<?php  echo $Prev_Page; ?>" aria-controls="example" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
                                                                       <?php
                                                                 }

                                                                 for ($i = 1; $i <= $Num_Pages; $i++) {
                                                                     if ($i != $Page) {

                                                                         ?>
                                                                       </li><li class="paginate_button page-item "><a href="programelive.php?Page=<?php echo $i; ?>" aria-controls="example" data-dt-idx="1" tabindex="0" class="page-link"><?php echo $i ?></a></li>
                                                                         <?php
                                                                     } else {?>
                                                                         </li><li class="paginate_button page-item "><a href="programelive.php?Page=<?php echo $i; ?>" aria-controls="example" data-dt-idx="1" tabindex="0" class="page-link"><?php echo $i ?></a></li>
                                                                         <?php  }}
                                                                 if ($Page != $Num_Pages) {
                                                                     ?>
                                                                     <li class="paginate_button page-item next" id="example_next"><a href="programelive.php?Page=<?php echo $Next_Page ;?>" aria-controls="example" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li></ul>
                                                                     <?php
                                                                 }
                                                                 ?>

                                                               </div>


                                                                      </div>

                                                                    </div>
                                                                    </div></div>

                                                                      <?php include('../templass/footer.html') ?>
