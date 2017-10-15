<?php require_once '../config.php';?>
<?php include ROOT.'/templass/header.php';?>
<?php include '../connect.php';?>
<?php   $sql = "SELECT * FROM press  order by p_id DESC ";
  $result = $conn->query($sql);
  $sql1 = "SELECT * FROM teames  order by ts_id DESC ";
    $result1 = $conn->query($sql1);
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

                                      <h3 class="h4">เพิ่มทีม</h3>
                                    </div>
                                    <div class="form-group row">
                                    <div class="card-body col-12">


                                            <form id="form_uploadvideo" method="POST" name="form_uploadvideo" action="teamessave.php" enctype="multipart/form-data">
                                            <label class="col-sm-2 form-control-label">ชื่อทีม</label>
                                            <div class="col-sm-9">


                                                <input list="browsers" class="form-control input-error"   id="ftopic" name="ftopic" required>


                                            </div>



                                          <div class="col-sm-9">
                                            <label class="form-control-label">ประเภทรายการแข่งขัน</label>

                                            <select required data-placeholder="กรุณาเลือกรายการแข่งขัน" multiple class="chosen-select"  type="text" id="id_team" name="id_team[]" tabindex="8">
                                            
                                              <?php  while($row = mysqli_fetch_array($result)) { ?>

                                              <option value="<?php echo $row['p_id']  ?>"><?php echo $row['p_name']; ?></option>
                                              <?php } ?>


                                            </select>


  <button type="submit" class="btn " >บันทึก</button>

                                        </div>


</div>

                                     </form>
                                    </div>

                                  </div>


                                    <div class="project">
                                          <div class="sert1 col-9">  <h3 class="h4">รายชื่อทีมที่ร่วมแข่งขัน</h3>
                                            <form name="frmSearch" method="get" action="<?php echo $_SERVER['SCRIPT_NAME'];?>">

                                                <input type="text" class="form-control" id="search-input" name="txtKeyword" placeholder="Search..." autocomplete="off" value="<?php echo $_GET["txtKeyword"];?>"> </div>
                                              </form>
                                                <?php  if($_GET["txtKeyword"] != ""){
                                                    $sql1="SELECT * FROM teames WHERE teames  LIKE '%".$_GET["txtKeyword"]."%'";
                                                        $query = mysqli_query($conn,$sql1);

                                                         ?>
                                                             <div class="row bg-white has-shadow col-12 col-sm-12 col-md-12 col-lg-10 col-xs-12">
                                                         <table class="table table-striped">
                                                           <thead>

                                                             <tr>
                                                               <th>ลำดับ</th>
                                                               <th>ชื่อทีม</th>
                                                               <th>ลีก</th>
                                                               <th>แก้ไข</th>

                                                             </tr>
                                                           </thead>
                                                           <?php
                                                          $i=1;    while($result=mysqli_fetch_array($query,MYSQLI_ASSOC)){
                                                            $a=trim($result['p_id'],'()'); //id 1)(2

                                                              $b=explode(')(',$a);

                                                              foreach ($b as $value) { //id=1,2 หาค่าในอาเรย์
                                                             $sqlv="SELECT * FROM press WHERE p_id='$value'";
                                                             $resultr = mysqli_query($conn,$sqlv);
                                                             $rowr=mysqli_fetch_assoc($resultr);
                                                             $g=$rowr['p_id'];

                                                           }
                                                              ?>
                                                              <thead>

                                                                <tr>
                                                                  <td><?php echo $i; ?></td>
                                                                  <td><?php echo $result['teames'];?></td>

                                                                  <td>  <?php   foreach ($b as $value) { //id=1,2 หาค่าในอาเรย์
                                                                     $sqlv="SELECT * FROM press WHERE p_id='$value'";
                                                                     $resultr = mysqli_query($conn,$sqlv);
                                                                     $rowr=mysqli_fetch_assoc($resultr);

                                                                      ?>
                                                                    <?php echo $rowr['p_name'];?> &nbsp;
                                                                  <?php } ?></td>

                                        <td><a href="teameedit.php?check=<?php echo $result['ts_id'];?>" title="แก้ไข"><i class="fa fa-pencil-square-o" aria-hidden="true">  </i>  <a href="teamedelete.php?check=<?php echo $result['ts_id'];?>" title="ลบ"> <i class="fa fa-window-close" aria-hidden="true"></i></a></td>

                                                                </tr>
                                                              </thead><!--cloase sert -->
                                                              <?php
                                                           $i++;}
                                                            ?> </div> <?php

                                                         }else{


                                                  ?>



                                                    <div class="row bg-white has-shadow col-12 col-sm-12 col-md-12 col-lg-10 col-xs-12">

                                      <table class="table table-striped">
                                        <thead>

                                          <tr>
                                            <th>ลำดับ</th>
                                            <th>ชื่อทีม</th>
                                            <th>ลีก</th>
                                            <th>แก้ไข</th>

                                          </tr>
                                        </thead>
                                        <?php
                                        $sql = "SELECT * FROM teames   order by ts_id DESC ";
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



                        $sql = "SELECT * FROM teames  order by ts_id DESC  LIMIT " .$Page_Start .','.$Per_Page;
                                $result1 = mysqli_query($conn,$sql);
                                  $i=1;  while($row = mysqli_fetch_array($result1)) {
                                $a=trim($row['p_id'],'()'); //id 1)(2

                                  $b=explode(')(',$a);

                                  foreach ($b as $value) { //id=1,2 หาค่าในอาเรย์
                                 $sqlv="SELECT * FROM press WHERE p_id='$value'";
                                 $resultr = mysqli_query($conn,$sqlv);
                                 $rowr=mysqli_fetch_assoc($resultr);
                                 $g=$rowr['p_id'];

                               }

/*
                             $sqlr="select * from teames inner join press on teames.p_id like concat('%(',press.p_id,')%') where teames.p_id = '$value' ";
                                $resultr = mysqli_query($conn,$sqlr);
                                $rowr = mysqli_fetch_array($resultr);*/

                                  //echo $rowr['p_id']; ?>

                                        <thead>

                                          <tr>
                                            <td><?php echo $i; ?></td>
                                            <td><?php echo $row['teames'];?></td>
                                          <td>  <?php   foreach ($b as $value) { //id=1,2 หาค่าในอาเรย์
                                             $sqlv="SELECT * FROM press WHERE p_id='$value'";
                                             $resultr = mysqli_query($conn,$sqlv);
                                             $rowr=mysqli_fetch_assoc($resultr);

                                              ?>
                                            <?php echo $rowr['p_name'];?> &nbsp;
                                          <?php } ?></td>
                                              <td><a href="teameedit.php?check=<?php echo $row['ts_id'];?>" title="แก้ไข"><i class="fa fa-pencil-square-o" aria-hidden="true">  </i>  <a href="teamedelete.php?check=<?php echo $row['ts_id'];?>" title="ลบ"> <i class="fa fa-window-close" aria-hidden="true"></i></a></td>

                                          </tr>
                                        </thead>
                                        <?php $i++; } ?>
                                                                                <tbody>
                                          <tr>



                                          </tr>

                                        </tbody>

                                      </table>


                                      Total <?php echo $Num_Rows; ?> Record : <?php echo $Num_Pages; ?> Page :

                                      <?php
                                      if ($Prev_Page) {

                                          ?>
                                        <li class="paginate_button page-item previous" id="example_previous"><a href="teames.php?Page=<?php  echo $Prev_Page; ?>" aria-controls="example" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
                                            <?php
                                      }

                                      for ($i = 1; $i <= $Num_Pages; $i++) {
                                          if ($i != $Page) {
                                              ?>
                                            </li><li class="paginate_button page-item "><a href="teames.php?Page=<?php echo $i; ?>" aria-controls="example" data-dt-idx="1" tabindex="0" class="page-link"><?php echo $i ?></a></li>
                                              <?php
                                          } else {?>
                                              </li><li class="paginate_button page-item "><a href="teames.php?Page=<?php echo $i; ?>" aria-controls="example" data-dt-idx="1" tabindex="0" class="page-link"><?php echo $i ?></a></li>
                                              <?php  }}
                                      if ($Page != $Num_Pages) {
                                          ?>
                                          <li class="paginate_button page-item next" id="example_next"><a href="teames.php?Page=<?php echo $Next_Page ;?>" aria-controls="example" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li></ul>
                                          <?php
                                      }
                                      ?>
                                        <?php } ?>
                                      </div>
                                      <ul class="pagination">
                                        </ul></div>


<div class="butalldel">

</div>
</div></div>


      <?php include ROOT.'/templass/footer.html';?></div>
