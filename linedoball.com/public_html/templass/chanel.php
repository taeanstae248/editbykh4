<?php  $sql = "SELECT * FROM ch ORDER BY t_chanel ASC LIMIT 0,12  ";
  $result = $conn->query($sql);

  ?>
<div class="allchannal">LINEDOBALL TV <img src="./img/header/tvheader.png" alt="" style="width: 10%;"></div>

<div class="container">

<div class="row">
<div class="headerprogramlive">

      </div>

<?php

while ( $row = mysqli_fetch_array($result)) {
$name=$row["t_chname"];
$ch=$row["t_chanel"];
$pix=$row["t_pix"];
$ch=$row["t_chname"];

$now = date("Y-m-d H:i:s", strtotime('-3 hours'));
$now1 = date("Y-m-d H:i:s", strtotime('+1 day'));
$now2 = date("Y-m-d", strtotime('+2 day'));
$condition[0] = " ( datetime_exp BETWEEN '{$now}' AND '{$now1}' ) ";
        $sql2="SELECT * FROM teamvs INNER JOIN press ON (teamvs.p_id = press.p_id) WHERE $condition[0] AND t_chanel='$ch' ORDER BY /* t_time ASC*/ datetime_exp ASC  ";
          $result2 = $conn->query($sql2);
             $row2=mysqli_fetch_assoc($result2);
               $ch2=$row2["t_chanel"]; $time=$row2["t_time"];  $name=$row2["t_namevs"]; $icon= $row2["p_icon"];

 ?>
<div class="chanel   col-12 col-md-12 col-xs-3 col-lg-3  ">
<div class="col-12">
  <div class="bounce animated "><a href="http://www.linedoball.com/chanellive.php?id=<?php echo $ch ?>" >
  <img class="imgshow2 " src="/admin/page/fileupload/ch/<?php echo $pix; ?>" alt="<?php echo $ch2; ?>" title="<?php echo $ch2; ?>"><div class="textchanel" ">

    <div class="xachanellive col-sm-3 hidden-xs-down">
      <?php if($name!=""){?>
<img data-src="/admin/page/fileupload/pixteam/<?php echo $icon ; ?>"   class="lazyload img-responsive" id="banner-pangto" "></div><div class="name">เวลา <?php echo $time ; ?> <?php echo $name ; ?>  <?php }else{ echo "-";}  ?></div></div></a>

  </div>
  </div>
</div>


<?php  }?>
</div>
<button class="button"><span><a href="http://www.linedoball.com/%E0%B8%94%E0%B8%B9%E0%B8%9A%E0%B8%AD%E0%B8%A5%E0%B8%AD%E0%B8%AD%E0%B8%99%E0%B9%84%E0%B8%A5%E0%B8%99%E0%B9%8C/"style="color: #ffffff;">ช่องรายการทั้งหมด</a></span></button>
</div>

<?/*

  <div class="container">
<div class="row">


<?php

while ( $row = mysqli_fetch_array($result)) {
  $name=$row["t_chname"];
  $ch=$row["t_chanel"];
  $pix=$row["t_pix"];
  $ch=$row["t_chname"];

   ?>
  <div class="chanel  col-12 col-md-12 col-xs-3 col-lg-3 "><div class="col-12"><a href="./chanellive.php?id=<?php echo $ch ?>"><img class=" imgshow2" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a></div></div>

<?php }?>
</div>
</div>

*/?>








<!--
<div class="container">
<div class="row hidden-md-down">
<div class="chanels col-sm">SPORT TV 4</div>
<div class="chanels col-sm">SPORT TV 5</div>
<div class="chanels col-sm">SPORT TV 6</div>
</div></div>-->


                                <!--brannerx footer-->
<?php /*
                                <a href="https://line.me/R/ti/p/%40jdh9322a" target="_blank" class="fixed_warper">
                                <img src="./img/branner/headtdedfree.gif" class="img-responsive" id="banner" >
                                </a>


                                <a href="https://line.me/R/ti/p/%40jdh9322a" target="_blank" class="fixed_warper">
                                <img src="./img/branner/tdedlungwenger2.gif" class="img-responsive" id="banner" >
                                </a> */ ?>

                                <!--brannerx -->
