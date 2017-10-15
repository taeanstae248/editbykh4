                 <!--container-->

<?php
include './admin/connect.php';



?>
<?php
function checkIsLinedoball($link){
  /*
  $cur = curl_init($link);
  curl_setopt($cur, CURLOPT_RETURNTRANSFER, true);
  $data = curl_exec($cur);
  curl_close($cur);

  $html = new DOMDocument();
  $html->loadHTML($data);

  $link_href = $html->getElementsByTagName('a')->getAttribute('href');

  */
  if(strpos($link, 'linedoball.com') !== false) {
    $ch = explode('=', $link);
    $link = 'channel.php?id=' . $ch[1];
  }else if(strpos($link, 'linelinedoball.com') !== false) {
    $ch = explode('=', $link);
    $link = 'channel.php?id=' . $ch[1];
  }
  return $link;
}
function checkLinkTypeText($type){
  switch($type){
   case '1':
      return array('ทูป1','<img class="linktag" src="img/youtube-icon.png" alt="ลิงค์ดูบอล youtube" title="ลิงค์ดูบอล youtube">');
      break;
    case '2':
      return array('เฟส1','<img class=" linktag" src="img/facebook-icon.png" alt="ลิงค์ดูบอล facebook" title="ลิงค์ดูบอล facebook">');
      break;
    case '3':
      return array('ทูป','<img class=" linktag" src="img/pscp1.png" alt="ลิงค์ดูบอล pscp1" title=" ลิงค์ดูบอลpscp1" >');
      break;
    case '4':
      return array('เฟส','<img class=" linktag" src="img/facebook-icon.png" alt="ลิงค์ดูบอล facebook" title="ลิงค์ดูบอล facebook">');
      break;
    default:
      return array('LINK','<span class=" linktag" style="font-size: small;">LINK</span>');

  }

}

?>
<?php


//$show = "select id,name_press from press ";
/*
$now = date("Y-m-d", strtotime('now')); //วันนี้
$now1 = date("Y-m-d", strtotime('+1 day')); //พรุ่งนี้
$now2 = date("Y-m-d", strtotime('+2 day')); //มะรืน*/
/*
$condition[0] = " ( datetime_exp BETWEEN '{$now} 00:00:00' AND '{$now} 23:59:59' ) ";
$condition[1] = " ( datetime_exp BETWEEN '{$now1} 00:00:00' AND '{$now1} 23:59:59' ) ";*/


						$now = date("Y-m-d H:i:s", strtotime('-3 hours'));
						$now1 = date("Y-m-d H:i:s", strtotime('+1 day'));
						$now2 = date("Y-m-d", strtotime('+2 day'));
            $condition[0] = " ( datetime_exp BETWEEN '{$now}' AND '{$now1}' ) ";
$template="SELECT * FROM teamvs INNER JOIN press ON (teamvs.p_id = press.p_id) WHERE 	%s ORDER  BY datetime_exp ASC , t_time ASC ,t_chanel ASC";

  //สองวัน
  for($i=0;$i<1;$i++){
    //ดึงข้อมูล
    $sql = sprintf($template,$condition[$i]);
      $result = $conn->query($sql);

?>
      <div class="row">
        <div class="programe col-12 col-md-12 col-sm-12 col-lg-9 col-xs-9"  >
          <?php
    if($result->num_rows>0){//เช็คว่ามีมั้ย
?>
      <div class="headerprogramlive">
      <p >รายการฟุตบอลวันนี้ <img src="./img/header/tvheader.png" alt="" style="width: 10%;"> </p>
      </div>
      <table class="table table-striped  table-hover">
      <thead style="
      background:rgba(144, 48, 1, 0.51);
      color: #ffffff;
      ">


      </thead>
      <tfoot>

      </tfoot>
      <tbody>
           <?php  while($row = mysqli_fetch_array($result)){
              $time=$row["t_time"];  $name=$row["t_namevs"]; $icon= $row["p_icon"];
              $ch=$row["t_chanel"];
             $linktype1=$row["t_linktype"];
             $linktype2=$row["t_linktype2"];
              $linktype3=$row["t_linktype3"];
              $linktype4=$row["t_linktype4"];
             $link1=$row["t_link1"];
              $link2=$row["t_link2"];
               $link3=$row["t_link3"];
                $link4=$row["t_link4"];

                $sqlnamel="SELECT * FROM teamvs INNER JOIN press ON (teamvs.p_id = press.p_id) WHERE teamvs.t_chanel LIKE '%$ch%'";
                    $resultnamel = $conn->query($sqlnamel);
                    $rownamel = mysqli_fetch_array($resultnamel);
                      $nameleage=$rownamel['p_name'];

                //pixshow
                $sqlpixc="SELECT * FROM teamvs INNER JOIN ch ON (teamvs.t_chanel = ch.t_chname) WHERE teamvs.t_chanel LIKE '%$ch%'";
                    $resultpixc = $conn->query($sqlpixc);
                    $rowpixc = mysqli_fetch_array($resultpixc);
                    $pix=$rowpixc['t_pix'];


                  //  $b=explode(" VS ",$name);

             ?>
      <tr class=" row-match"  data-date_team="<?php echo $row["date_teame"]; ?>" data-time_team="<?php echo $row["t_time"]; ?>">
</td>
      <td  class="boxx1"><div class="xa"><?php echo $time; ?></div></td>
      <td class="box11h"><img data-src="./admin/page/fileupload/pixteam/<?php echo $icon ;?>"  alt="<?php echo $nameleage; ?>"  title="<?php echo $nameleage; ?>" class="lazyload flagicon" ></td>

      <td class="text_left"><?php echo $name; ?></td>

      <?php

      if($ch==""&&$linktype2==""&&$linktype3==""&&$linktype4==""){?>
      <td class="box-link2"><p class="box-link2" style="  display: -webkit-inline-box; margin-bottom: -12px;">รออัพเดท ลุ้นบอลคู้นี้</p></td>



      <?php }else if($ch!=""&&$linktype1!=""&&$linktype2!=""&&$linktype3!=""&&$linktype4!=""){
        $link1_txt = checkLinkTypeText($linktype1);
        $link2_txt = checkLinkTypeText($linktype2);
        $link3_txt = checkLinkTypeText($linktype3);
        $link4_txt = checkLinkTypeText($linktype4);
        $link1 = checkIsLinedoball($link1);
        $link2 = checkIsLinedoball($link2);
        $link3 = checkIsLinedoball($link3);
        $link4 = checkIsLinedoball($link4);
        ?>
        <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
          <td class="shch">
            <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
          <a class="box-link21 " href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a>
          <a class="box-link21" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a>
          <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>


          <?php }else if($linktype1!=""&&$linktype2!=""&&$linktype3!=""&&$linktype4!=""){
            $link1_txt = checkLinkTypeText($linktype1);
            $link2_txt = checkLinkTypeText($linktype2);
            $link3_txt = checkLinkTypeText($linktype3);
            $link4_txt = checkLinkTypeText($linktype4);
            $link1 = checkIsLinedoball($link1);
            $link2 = checkIsLinedoball($link2);
            $link3 = checkIsLinedoball($link3);
            $link4 = checkIsLinedoball($link4);
            ?>
            <td class="box-link2">
              <a class="box-link21 " href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
              <a class="box-link21 " href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a>
              <a class="box-link21 " href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a>
              <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

      <?php }else if($ch!=""&&$linktype1!=""&&$linktype2!=""&&$linktype3!=""){
        $link1_txt = checkLinkTypeText($linktype1);
        $link2_txt = checkLinkTypeText($linktype2);
        $link3_txt = checkLinkTypeText($linktype3);
        $link1 = checkIsLinedoball($link1);
        $link2 = checkIsLinedoball($link2);
        $link3 = checkIsLinedoball($link3);
      ?>
      <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
            <td class="shch">   <a class="box-link21 " href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
          <a class="box-link21" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a>
          <a class="box-link21" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>

          <?php }else if($linktype1!=""&&$linktype2!=""&&$linktype3!=""){
            $link1_txt = checkLinkTypeText($linktype1);
            $link2_txt = checkLinkTypeText($linktype2);
            $link3_txt = checkLinkTypeText($linktype3);
            $link1 = checkIsLinedoball($link1);
            $link2 = checkIsLinedoball($link2);
            $link3 = checkIsLinedoball($link3);
          ?>
          <td class="box-link2">
                  <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
              <a class="box-link21" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a>
              <a class="box-link21" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>

      <?php }else if($ch!=""&&$linktype1!=""&&$linktype2!=""&&$linktype4!=""){
        $link1_txt = checkLinkTypeText($linktype1);
        $link2_txt = checkLinkTypeText($linktype2);
        $link4_txt = checkLinkTypeText($linktype4);
        $link1 = checkIsLinedoball($link1);
        $link2 = checkIsLinedoball($link2);
        $link4 = checkIsLinedoball($link4);?>
        <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
              <td class="shch">   <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
        <a class="box-link21" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a>
        <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>


        <?php }else if($linktype1!=""&&$linktype2!=""&&$linktype4!=""){
          $link1_txt = checkLinkTypeText($linktype1);
          $link2_txt = checkLinkTypeText($linktype2);
          $link4_txt = checkLinkTypeText($linktype4);
          $link1 = checkIsLinedoball($link1);
          $link2 = checkIsLinedoball($link2);
          $link4 = checkIsLinedoball($link4);?>
        <td class="box-link2">
              <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
          <a class="box-link21" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a>
          <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

      <?php }else if($ch!=""&&$linktype1!=""&&$linktype3!=""&&$linktype4!=""){
        $link1_txt = checkLinkTypeText($linktype1);
        $link3_txt = checkLinkTypeText($linktype3);
        $link4_txt = checkLinkTypeText($linktype4);
        $link1 = checkIsLinedoball($link1);
        $link3 = checkIsLinedoball($link3);
        $link4 = checkIsLinedoball($link4);?>
        <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
              <td class="shch"> <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
      <a class="box-link21" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a>
        <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

        <?php }else if($linktype1!=""&&$linktype3!=""&&$linktype4!=""){
          $link1_txt = checkLinkTypeText($linktype1);
          $link3_txt = checkLinkTypeText($linktype3);
          $link4_txt = checkLinkTypeText($linktype4);
          $link1 = checkIsLinedoball($link1);
          $link3 = checkIsLinedoball($link3);
          $link4 = checkIsLinedoball($link4);?>
        <td class="box-link2">
          <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
        <a class="box-link21" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a>
          <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

      <?php }else if(ch!=""&&$linktype2!=""&&$linktype3!=""&&$linktype4!=""){
         $link2_txt = checkLinkTypeText($linktype2);
        $link3_txt = checkLinkTypeText($linktype3);
        $link4_txt = checkLinkTypeText($linktype4);
         $link2 = checkIsLinedoball($link2);
         $link3 = checkIsLinedoball($link3);
         $link4 = checkIsLinedoball($link4);?>

         <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
               <td class="shch">   <a class="box-link21" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div>
            <a class="box-link21 " href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div>
          <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?> </td></div>


            <?php }else if($linktype2!=""&&$linktype3!=""&&$linktype4!=""){
               $link2_txt = checkLinkTypeText($linktype2);
              $link3_txt = checkLinkTypeText($linktype3);
              $link4_txt = checkLinkTypeText($linktype4);
               $link2 = checkIsLinedoball($link2);
               $link3 = checkIsLinedoball($link3);
               $link4 = checkIsLinedoball($link4);?>
              <td class="box-link2">
                <a class="box-link21" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div>
                  <a class="box-link21" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div>
                <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?> </td></div>


      <?php }else if($ch!=""&&$linktype1!=""&&$linktype2!=""){
        $link1_txt = checkLinkTypeText($linktype1);
         $link2_txt = checkLinkTypeText($linktype2);
         $link1 = checkIsLinedoball($link1);
         $link2 = checkIsLinedoball($link2);
        ?>
        <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
              <td class="shch">   <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div>
        <a class="box-link21" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a></td>

        <?php }else if($linktype1!=""&&$linktype2!=""){
          $link1_txt = checkLinkTypeText($linktype1);
           $link2_txt = checkLinkTypeText($linktype2);
           $link1 = checkIsLinedoball($link1);
           $link2 = checkIsLinedoball($link2);
          ?>
          <td class="box-link2">
              <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div>
          <a class="box-link21" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a></td>


      <?php }else if($ch!=""&&$linktype1!=""&&$linktype3!=""){
        $link1_txt = checkLinkTypeText($linktype1);
         $link3_txt = checkLinkTypeText($linktype3);
         $link1 = checkIsLinedoball($link1);
         $link3 = checkIsLinedoball($link3);
        ?>
        <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
              <td class="shch">   <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div>
              <a class="box-link21" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>


              <?php }else if($linktype1!=""&&$linktype3!=""){
                $link1_txt = checkLinkTypeText($linktype1);
                 $link3_txt = checkLinkTypeText($linktype3);
                 $link1 = checkIsLinedoball($link1);
                 $link3 = checkIsLinedoball($link3);
                ?>
                <td class="box-link2">
                      <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div>
                      <a class="box-link21" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>


      <?php }else if($ch!=""&&$linktype1!=""&&$linktype4!=""){
        $link1_txt = checkLinkTypeText($linktype1);
        $link4_txt = checkLinkTypeText($linktype4);
        $link1 = checkIsLinedoball($link1);
        $link4 = checkIsLinedoball($link4);
        ?>
        <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
              <td class="shch">   <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div>
            <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

            <?php }else if($linktype1!=""&&$linktype4!=""){
              $link1_txt = checkLinkTypeText($linktype1);
              $link4_txt = checkLinkTypeText($linktype4);
              $link1 = checkIsLinedoball($link1);
              $link4 = checkIsLinedoball($link4);
              ?>
              <td class="box-link2">
                  <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div>
                  <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

      <?php }else if($ch!=""&&$linktype2!=""&&$linktype3!=""){
        $link2_txt = checkLinkTypeText($linktype2);
        $link3_txt = checkLinkTypeText($linktype3);
        $link2 = checkIsLinedoball($link2);
        $link3 = checkIsLinedoball($link2);?>
        <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
              <td class="shch">   <a class="box-link21" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div>
      <a class="box-link21 " href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>


      <?php }else if($linktype2!=""&&$linktype3!=""){
        $link2_txt = checkLinkTypeText($linktype2);
        $link3_txt = checkLinkTypeText($linktype3);
        $link2 = checkIsLinedoball($link2);
        $link3 = checkIsLinedoball($link2);?>
        <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
              <td class="shch">   <a class="box-link21" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div>
      <a class="box-link21" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>

      <?php }else if($ch!=""&&$linktype2!=""&&$linktype4!=""){
          $link2_txt = checkLinkTypeText($linktype2);
        $link4_txt = checkLinkTypeText($linktype4);
            $link2 = checkIsLinedoball($link2);
            $link4 = checkIsLinedoball($link4);?>
            <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
            <td class="shch">   <a class="box-link21" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div>
            <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>


            <?php }else if($linktype2!=""&&$linktype4!=""){
                $link2_txt = checkLinkTypeText($linktype2);
              $link4_txt = checkLinkTypeText($linktype4);
                  $link2 = checkIsLinedoball($link2);
                  $link4 = checkIsLinedoball($link4);?>
                  <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
                        <td class="shch">   <a class="box-link21 " href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div>
                  <a class="box-link21 " href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

      <?php }else if($ch!=""&&$linktype3!=""&&$linktype4!=""){
        $link3_txt = checkLinkTypeText($linktype3);
      $link4_txt = checkLinkTypeText($linktype4);
          $link3 = checkIsLinedoball($link2);
          $link4 = checkIsLinedoball($link4);?>
          <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
                <td class="shch">   <a class="box-link21" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div>
          <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

          <?php }else if($linktype3!=""&&$linktype4!=""){
            $link3_txt = checkLinkTypeText($linktype3);
          $link4_txt = checkLinkTypeText($linktype4);
              $link3 = checkIsLinedoball($link2);
              $link4 = checkIsLinedoball($link4);?>
              <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
                    <td class="shch">   <a class="box-link21" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div>
              <a class="box-link21" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

              <?php }else if($ch!=""&&$linktype1!=""){
                    $link1_txt = checkLinkTypeText($linktype1);
                    $link1 = checkIsLinedoball($link1);?>
                    <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
                          <td class="shch">   <a class="box-link21" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a></td>

                  <?php }else if($linktype1!=""){
                    $link2_txt = checkLinkTypeText($linktype2);
                        $link2 = checkIsLinedoball($link2);?>
            <td class="box-link2">
                        <a class="box-link 2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a></td>
            <?php }else if($ch!=""&&$linktype2!=""){
              $link2_txt = checkLinkTypeText($linktype2);
                  $link2 = checkIsLinedoball($link2);?>
                  <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
                        <td class="shch">   <a class="box-link21 " href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a></td>


                  <?php }else if($linktype2!=""){
                    $link2_txt = checkLinkTypeText($linktype2);
                        $link2 = checkIsLinedoball($link2);?>
            <td class="box-link2">
                        <a class="box-link 2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a></td>

            <?php }else if($ch!=""&&$linktype3!=""){
              $link3_txt = checkLinkTypeText($linktype3);
                  $link3 = checkIsLinedoball($link3);?>
                  <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
                        <td class="shch">   <a class="box-link21 " href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>
                        <?php }else if($linktype3!=""){
                          $link3_txt = checkLinkTypeText($linktype3);
                              $link3 = checkIsLinedoball($link3);?>
                      <td class="box-link2"><a class="darkgrey " href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>

            <?php }else if($ch!=""&&$linktype4!=""){
               $link4_txt = checkLinkTypeText($linktype4);
                  $link4 = checkIsLinedoball($link4);?>
                  <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>"></a>  </td>
                        <td class="shch"">   <a class="box-link21 " href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

                      <?php }else if($linktype4!=""){
                         $link4_txt = checkLinkTypeText($linktype4);
                            $link4 = checkIsLinedoball($link4);?>
                <td class="box-link2 ">
                                <a class="box-link2 " href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>
      <?php }else if($ch!=""){?>
        <td class="box-link2"> <a href="./chanellive.php?id=<?php echo $ch ;?>">  <img class="imgshow" src="./admin/page/fileupload/ch/<?php echo $pix; ?>""></a>  </td>

      </tr>
      <?php }  }  }
      }?>
      </tbody>
      </table>
      <div class="headerprogramlive2">

      </div>
      <?php
      $tomorrow = date('Y-m-d', strtotime("tomorrow"));
      $sql4="SELECT * FROM teamvs INNER JOIN press ON (teamvs.p_id = press.p_id) WHERE date_teame='$tomorrow'  ORDER BY t_time ASC , date_teame  ";
    $result4 = $conn->query($sql4);
    ?>
    <table class="table gray table-striped table-bordered text_center">
      <thead style="background: rgba(144, 48, 1, 0.51);color: #ffffff;">

      </thead>

  </table>

    </div>

    <div class="programe2 col-12 col-md-12 col-sm-12 col-lg-3 col-xs-3">
<div class="facebock">
  <h6 class="headerprogramlive3" >แฟนเพจลิงค์ดูบอลออนไลน์</h6>
      <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Flinkdooball%2F&tabs&width=348&height=300&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"
      width="100%" height="210" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>

      </div>
      <div class="chatro col-12 " ><!-- Begin chatwing.com chatbox -->
      <center>  <H5 style="  background: #263147;  color: #FFFFFF;padding: 10px;">พูดคุยเรื่องฟุตบอล <i class="fa fa-home" aria-hidden="true"></i></h5> </center>
<!--<iframe src="https://www7.cbox.ws/box/?boxid=835618&boxtag=dlj0WR" width="100%" height="450" allowtransparency="yes" frameborder="0" marginheight="0" marginwidth="0" scrolling="auto"></iframe>-->
<iframe src="https://www7.cbox.ws/box/?boxid=844430&boxtag=Uf6VAL" width="100%" height="450" allowtransparency="yes" frameborder="0" marginheight="0" marginwidth="0" scrolling="auto"></iframe>




    <!-- End chatwing.com chatbox --></div>
<div class="brnlef1 hidden-lg-down">
  <a href="https://line.me/R/ti/p/%40wvv7209v" target="_blank" class="fixed_warper">
      <img src="/img/branner/fifa55s.gif" class="img-responsive" id="banner">
    </a>
</div>
    </div>


</div>


	<script>

function matchChecker(){
  var match_remove = -190;
  var match_hide = -180;
  var match_hide2 = 1440;
  var match_show = 20;
  var currentdate = moment(new Date());



  $( ".row-match" ).each(function() {

    element = $( this );

    if (element.css('display') == "table-row") {
      var date_team = element.data('date_team').replace(/-/g, "/"); //วันที่ปัจจุบีน
      var time_team = element.data('time_team'); //เวลาคู่
      var match_date_time = moment(new Date(date_team+' '+time_team)); //2017-07-26 00.00
      var diff = match_date_time - currentdate;
      var minutes = Math.floor((diff/1000)/60);
      var box_link = element.data('box-link');
      var box_link_html ;

      if( typeof box_link !== 'undefined' ){ //box_link ไม่ได้กำหนด
        box_link_html = box_link;

      }else{
        box_link_html = element.find( ".box-link" ).html();
        element.data( "box-link", box_link_html );
      }

      //if(minutes <= match_remove || minutes >= match_hide2 ){
      if( minutes <= match_remove ){
        //pass ลบ หรือ
        element.remove();

      }else if(minutes <= match_hide  ){
        //pass จบ
        element.find( ".linktag" ).removeClass('blink_me');
        element.find( ".linktag" ).parent().addClass('match_end');

      }else if( minutes<=match_show){
        //now สด
        element.removeClass('match_remove');
        element.find( ".box-link2 " ).html(box_link_html);
        element.find( ".linktag " ).addClass('blink_me');

      }else{
        //feture LINK
        element.find( ".box-link2 " ).html('<p class="box-link2" style="  display: -webkit-inline-box;  margin-top: 22px;  margin-bottom: -12px;">รออัพเดท  <a href="https://line.me/R/ti/p/%40yzn3912c" target="_blank" style="color: #0208ff">ลุ้นบอลคู่นี้</a></p></td>');
        element.find( ".box-link21 " ).html('<p class="box-link2" style=" "></p></td>');
        element.find( ".linktag" ).removeClass('blink_me');
      }
    }
  });

}

$(window).on('load',function(){
  matchChecker();
  var intervalMatchChecker = setInterval(function(){
    matchChecker();
  }, 150000);

});




	</script>
