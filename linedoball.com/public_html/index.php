
<?php include('./templass/header.html');?>

<?php
$d=strtotime("Monday");
$e= date("Y-m-d", $d)  ;

$day=date("Y-m-d ") ;

if(trim($e)==trim($day)){
?>
<div id="topbar" >
  <div class="x12">

        <a href="" onclick="closebar(); return false" style="display: flex;">  <button type="button" class="btn btn-danger" data-dismiss="modal"style="display: flex;   padding: 10px;
          background: red;
          margin-bottom: 10px;
          font-size: x-large;    margin-top: 10px;">Close</button>
    </a>
  <?/*  <a href="https://line.me/R/ti/p/%40llf7953j" class="popup-sportpool" target="_blank" >
      <img src="http://www.linedoball.com/img/branner/popup.png" class="popupimg" style="padding: 10px;  background: #72b139;"> */?>
      <a href="https://goo.gl/xTXoVw" class="popup-sportpool" target="_blank" >
        <img src="http://www.linedoball.com/img/branner/pool2.gif" class="popupimg" style="padding: 10px;  background: #72b139;">

     </a>  </div>
  </div>
<?php
}else{?>
  <div id="topbar" >
    <div class="x12">

          <a href="" onclick="closebar(); return false" style="display: flex;">  <button type="button" class="btn btn-danger" data-dismiss="modal"style="display: flex;   padding: 10px;
            background: red;
            margin-bottom: 10px;
            font-size: x-large;    margin-top: 10px;">Close</button>
      </a>
      <a href="https://goo.gl/xTXoVw" class="popup-sportpool" target="_blank" >
        <img src="http://www.linedoball.com/img/branner/pool2.gif" class="popupimg" style="padding: 10px;  background: #72b139;">

       </a>  </div>
    </div>
     <?php

?>


  <?php
}?>


<div class="container" >



<div class="row">

  <?php require ('./templass/htbranner.php');?>
  <?php require ('./templass/brannerh1.php');?>

  <?php require ('./templass/branner.php');?>


<?php require('./templass/programe.php');?>

<?php require('./templass/chanel.php');?>

<?php// require('./templass/popup.php');?>
</div>


<!--branner rig-->
  <?php require('./templass/menuleft.html');?>
</div>

</div>
<?php require('./templass/footer.php');?>
<?php require ('./templass/popup.php');?>
