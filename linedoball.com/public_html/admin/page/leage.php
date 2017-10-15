<?php require_once '../config.php';?>
<?php include ROOT.'/templass/header.php';?>
<?php include '../connect.php';
$sql = "SELECT * FROM press  order by p_id DESC ";
 $result = $conn->query($sql);
?>

<div class="page home-page">
  <!-- Main Navbar-->

  <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <?php include('../templass/manuleft.php') ?>
        <div class="col-lg-12">
                                  <div class="card ">
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


                                            <form id="form_uploadvideo" method="POST" name="form_uploadvideo" action="leagesave.php" enctype="multipart/form-data">

                                          <label class="col-sm-2 form-control-label">ประเภทรายการแข่งขัน</label>
                                          <div class="col-sm-9">


                                                  <input list="browsers" class="form-control input-error"   id="ftopic" name="ftopic" required>


                                          </div>

                                          <label class="col-sm-2 form-control-label">อัปรูปธง</label>
                                          <div class="col-sm-9">
                                    <input class="form-control" type="file" name="fileupload" id="fileupload" required="required">
                                          </div>
                                          <div class="col-sm-5 " style="  margin-left: 10px;  ">
                                            <button type="submit" class="btn btn-warning" >บันทึก</button>

                                          </div>
                                        </div>




                                      </form>
                                    </div>

                                  </div>
                                  <div class="project">
                                      <h3 class="h4">ลีกทั้งหมด</h3>
                                      <form name="frmSearch" method="get" action="<?php echo $_SERVER['SCRIPT_NAME'];?>">
                                  <div class="serch col-9">  <input type="text" class="form-control" id="search-input" name="txtKeyword" placeholder="Search..." autocomplete="off" value="<?php echo $_GET["txtKeyword"];?>"> </div>
                                    </form>

  <?php  if($_GET["txtKeyword"] != ""){
    $sql1="SELECT * FROM press WHERE p_name LIKE '%".$_GET["txtKeyword"]."%'";
        $query = mysqli_query($conn,$sql1);
        ?>
           <?php
          while($result=mysqli_fetch_array($query,MYSQLI_ASSOC)) {
          ?>
            <div class="row bg-white has-shadow col-12 col-sm-12 col-md-12 col-lg-10 col-xs-12">
              <div class="teame col-12">
                <div class="col-2">
              <img class="imgshow" src="fileupload/pixteam/<?php echo $result["p_icon"] ; ?>" title="<?php echo $result["p_name"] ; ?>">

              <form class="edittext" name="frmMain" action="leagedeleteall.php" method="post" OnSubmit="return onDelete();" >

              <input name="id[]" type="checkbox" class="form-check-input" value="<?php echo $result["p_id"] ; ?>">

               <a href="leageedit.php?check=<?php echo $result["p_id"] ; ?>" title="แก้ไข">
              <i class="fa fa-pencil-square-o" aria-hidden="true">  </i> </a>
              <a href="leagedeletepix.php?check=<?php echo $result["p_id"] ; ?>" title="ลบ"> <i class="fa fa-window-close" aria-hidden="true"></i></a>
              </div></div>
            <?php } ?>
        </div>
        <?php
}else{
         ?>






                <div class="row bg-white has-shadow col-12 col-sm-12 col-md-12 col-lg-10 col-xs-12">

<?php
 $sql = "SELECT * FROM press   order by p_id DESC ";
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


                                         $sql = "SELECT * FROM press  order by p_id DESC  LIMIT " .$Page_Start .','.$Per_Page;
                                     $result1 = mysqli_query($conn,$sql);

  while($row = mysqli_fetch_array($result1)) {
  ?>
    <div class="col-2">

      <div class="teame col-12">
<img class="imgshow" src="fileupload/pixteam/<?php echo $row["p_icon"] ; ?>" title="<?php echo $row["p_name"] ; ?>">  <div class="editpix">

      <form class="edittext" name="frmMain" action="leagedeleteall.php" method="post" OnSubmit="return onDelete();" >

      <input name="id[]" type="checkbox" class="form-check-input" value="<?php echo $row["p_id"] ; ?>">

       <a href="leageedit.php?check=<?php echo $row["p_id"] ; ?>" title="แก้ไข">
      <i class="fa fa-pencil-square-o" aria-hidden="true">  </i> </a>
    <a href="leagedeletepix.php?check=<?php echo $row["p_id"] ; ?>" title="ลบ"> <i class="fa fa-window-close" aria-hidden="true"></i></a>
</div></div></div>
    <?php } ?>

  </div>
  <div class="butalldel">
   <button type="submit" class="btn btn-warning">ลบรายการที่เลือก</button> </form>
  </div>
  <ul class="pagination">
  Total <?php echo $Num_Rows; ?> Record : <?php echo $Num_Pages; ?> Page :

  <?php
  if ($Prev_Page) {

      ?>
    <li class="paginate_button page-item previous" id="example_previous"><a href="leage.php?Page=<?php  echo $Prev_Page; ?>" aria-controls="example" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
        <?php
  }

  for ($i = 1; $i <= $Num_Pages; $i++) {
      if ($i != $Page) {

          ?>
        </li><li class="paginate_button page-item "><a href="leage.php?Page=<?php echo $i; ?>" aria-controls="example" data-dt-idx="1" tabindex="0" class="page-link"><?php echo $i ?></a></li>
          <?php
      } else {?>
          </li><li class="paginate_button page-item "><a href="leage.php?Page=<?php echo $i; ?>" aria-controls="example" data-dt-idx="1" tabindex="0" class="page-link"><?php echo $i ?></a></li>
          <?php  }}
  if ($Page != $Num_Pages) {
      ?>
      <li class="paginate_button page-item next" id="example_next"><a href="leage.php?Page=<?php echo $Next_Page ;?>" aria-controls="example" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li></ul>
      <?php
  }
  ?>



</div></div>

<?php } ?>

    </div>


</div></div>


      <?php include ROOT.'/templass/footer.html';?></div>
