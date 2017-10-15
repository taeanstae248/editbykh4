<?php include('./templass/header.html');?>
<div class="container" >
<div class="row">
  <?php include('./templass/htbranner.php');?>
  <?php require ('./templass/brannerh1.php');?>
  <?php require ('./templass/branner.php');?>

  <?php include './admin/connect.php';

  if(isset($_GET["id"])){
   $id=$_GET["id"];
;

$now = date("Y-m-d H:i:s", strtotime('-3 hours'));
$now1 = date("Y-m-d H:i:s", strtotime('+1 day'));
$now2 = date("Y-m-d", strtotime('+2 day'));
$condition[0] = " ( datetime_exp BETWEEN '{$now}' AND '{$now1}' ) ";

$sql="SELECT * FROM teamvs INNER JOIN press ON (teamvs.p_id = press.p_id) WHERE $condition[0] AND t_chanel='$id' ORDER BY /* t_time ASC*/ datetime_exp ASC  ";
  $result = $conn->query($sql);
     $row=mysqli_fetch_assoc($result);


          $ch=$row["t_chanel"]; $time=$row["t_time"];  $name=$row["t_namevs"]; $icon= $row["p_icon"];

  ?>

<div class="headshowchanel"><p>Sport TV <?php echo $ch;  ?></p> </div>
  <div class="container ">


  <div class="showdatachanel row ">
  <?php if($ch!=""){ ?>

  <div class="xachanellive col-sm-12"><div class="xachanellive1 col-sm-2"><img src="./admin/page/fileupload/pixteam/<?php echo $icon ; ?>" class="img-responsive" id="banner-pangto" ></div></div>

    <div class="chanellives col-sm-12"> <?php echo $time; ?>  <?php echo $name ; ?></div>


    <?php }else{
        echo "ยังไมมีรายการถ่ายทอดสด";

    } ?>
  </div>
  </div>


  <div class="row">
    <div class="col-lg-9 col-xs-9 col-sm-12 col-md-12 ">  <div class='myIframe' >

          <iframe   src="http://origin.linedoball.com/channel.php?ch=<?php echo $id; ?>"  allowfullscreen width="100%" height="1050"></iframe>


      </div>
      <?php

  }
      ?></div>
      <div class="col-lg-3 col-xs-3 col-sm-12 col-md-12 " style="  padding-left: 0px;">
        <div class="flex-last" style="background: #00a2d9;">

        <h5 style="  background: #263147;  color: #FFFFFF;padding: 10px;">พูดคุยเรื่องฟุตบอล <i class="fa fa-home" aria-hidden="true"></i></h5>

        </div>
      <!--  <iframe src="https://www7.cbox.ws/box/?boxid=835618&boxtag=dlj0WR" width="100%" height="450" allowtransparency="yes" frameborder="0" marginheight="0" marginwidth="0" scrolling="auto"></iframe>-->
        <iframe src="https://www7.cbox.ws/box/?boxid=844430&boxtag=Uf6VAL" width="100%" height="450" allowtransparency="yes" frameborder="0" marginheight="0" marginwidth="0" scrolling="auto"></iframe>
  </div>

  </div>
    <div id="share"></div>
<div class="row">
  <div class="col-12 col-md-12 col-sm-12 col-lg-12 col-xl-12">

        </div>

  <div class="chatro col-12 " ><!-- Begin chatwing.com chatbox -->
      <div class="container">

<!-- End chatwing.com chatbox --></div>
</div>


<?php include('./templass/chanel.php');?>


</div>


<!--branner rig-->
  <?php include('./templass/menuleft.html');?>
</div>
</div>

<?php include('./templass/footer.php');?>
