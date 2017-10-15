<?php   require 'config.php';
    include (ROOT.'/admin/connect.php');
include('./templass/header.html');?>
<div class="container" >



<div class="row">
  <?php include('./templass/htbranner.php');?>
  <?php  $sql = "SELECT * FROM ch   ";
    $result = $conn->query($sql);

    ?>
  <div class="allchannal">LINEDOBALL TV <img src="/img/header/tvheader.png" alt="" style="width: 10%;"></div>

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
    <div class="chanel  col-12 col-md-12 col-xs-4 col-lg-4 ">

      <div class="bounce animated "><a href="http://www.linedoball.com/chanellive.php?id=<?php echo $ch ?>" >
      <img class="imgshow2 " src="/admin/page/fileupload/ch/<?php echo $pix; ?>"><div class="textchanel" ">

        <div class="xachanellive col-sm-3 hidden-xs-down">
          <?php if($name!=""){?>
<img data-src="/admin/page/fileupload/pixteam/<?php echo $icon ; ?>"   class="lazyload img-responsive" id="banner-pangto" "></div><div class="name"> <?php echo $name ; ?> เวลา <?php echo $time ; ?> <?php }else{ echo "-";}  ?></div></div></a>

      </div>

    </div>


  <?php  }?>
  </div>
  </div>



</div>


<!--branner rig-->
    <?php include('./templass/menuleft.html');?>
</div>

</div>
<?php include('./templass/footer.php');?>
