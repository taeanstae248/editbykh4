<!--container-->
<div class="headersocai">
<div class="row">
<div class="col-12 col-md-3 col-lg-3 flex-unordered">
<img src="./img/social/Line.png" ><a href="http://line.me/ti/p/%40doball" style="
color: #ffffff;">  linedoball</a>
</a>
</div>


<div class="col-12  col-md-4  col-lg-4 flex-last">
<img src="./img/social/refect.png"  style="color: #ffffff;">Reload เพื่อ Update
</div>
<div class="col-12  col-md-5 col-lg-5 flex-first">
<img src="./img/social/face.png" > <a class="no-margin" href="https://www.facebook.com/linkdooball/"  style="
color: #ffffff;"> เพจ ดูบอลสด ดูบอลออนไลน์</a>
</div>

</div>
</div>
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
return array('ทูป1','<img class="linktag" src="img/youtube-icon.png">');
break;
case '2':
return array('เฟส1','<img class="linktag" src="img/facebook-icon.png">');
break;
case '3':
return array('ทูป','<img class="linktag" src="img/youtube-icon.png">');
break;
case '4':
return array('เฟส','<img class="linktag" src="img/facebook-icon.png">');
break;
default:
return array('LINK','<span class="linktag">LINK</span>');

}

}
?>
<?php
//$show = "select id,name_press from press ";

$now = date("Y-m-d", strtotime('now')); //วันนี้
$now1 = date("Y-m-d", strtotime('+1 day')); //พรุ่งนี้
$now2 = date("Y-m-d", strtotime('+2 day')); //มะรืน

$condition[0] = " ( datetime_exp BETWEEN '{$now} 00:00:00' AND '{$now} 23:59:59' ) ";
$condition[1] = " ( datetime_exp BETWEEN '{$now1} 00:00:00' AND '{$now1} 23:59:59' ) ";


$template="SELECT * FROM teamvs INNER JOIN press ON (teamvs.p_id = press.p_id) WHERE 	%s ORDER  BY datetime_exp ASC , t_time ASC";



//สองวัน
for($i=0;$i<1;$i++){
//ดึงข้อมูล
$sql = sprintf($template,$condition[$i]);
$result = $conn->query($sql);


if($result->num_rows>0){//เช็คว่ามีมั้ย


?>

<div class="headerprogramlive">
<p style="border-bottom: 6px solid #339900;;">โปรแกรมถ่ายทอดสดประจำวันนี้</p>
</div>


<table class="table table-striped  table-hover">
<thead style="
background:rgba(144, 48, 1, 0.51);
color: #ffffff;
">

<tr>
<td class="box1h">เวลา</td>
<td class="box11h">รายการ</td>
<td class="box111h">เจ้าบ้าน</td>
<td class="box1h">พบ</td>
<td class="box111h">ทีมเยือน</td>
<td class="box1h">ช่อง</td>
</tr>
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



$b=explode(" VS ",$name);

?>
<tr class=" row-match"  data-date_team="<?php echo $row["date_teame"]; ?>" data-time_team="<?php echo $row["t_time"]; ?>">

<td class="boxx1"><?php echo $time; ?></td>
<td class="box11h"><img src="./admin/page/fileupload/pixteam/<?php echo $icon ; ?> " class="flagicon"></td>
<td class="text_right"><?php echo $b[0]; ?></td>
<td class="box111h">VS</td>
<td class="text_left"><?php echo $b[1]; ?></td>
<?php

if($ch==""&&$linktype2==""&&$linktype3==""&&$linktype4==""){?>
<p class="box-link2"style="  display: -webkit-inline-box;">รออัปเดจ</p>



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
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
<a class="box-link2 " href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>


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
<a class="box-link2 " href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
<a class="box-link2 " href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a>
<a class="box-link2 " href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

<?php }else if($ch!=""&&$linktype1!=""&&$linktype2!=""&&$linktype3!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link2_txt = checkLinkTypeText($linktype2);
$link3_txt = checkLinkTypeText($linktype3);
$link1 = checkIsLinedoball($link1);
$link2 = checkIsLinedoball($link2);
$link3 = checkIsLinedoball($link3);
?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2 " href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>

<?php }else if($linktype1!=""&&$linktype2!=""&&$linktype3!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link2_txt = checkLinkTypeText($linktype2);
$link3_txt = checkLinkTypeText($linktype3);
$link1 = checkIsLinedoball($link1);
$link2 = checkIsLinedoball($link2);
$link3 = checkIsLinedoball($link3);
?>
<td class="box-link2">
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>

<?php }else if($ch!=""&&$linktype1!=""&&$linktype2!=""&&$linktype4!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link2_txt = checkLinkTypeText($linktype2);
$link4_txt = checkLinkTypeText($linktype4);
$link1 = checkIsLinedoball($link1);
$link2 = checkIsLinedoball($link2);
$link4 = checkIsLinedoball($link4);?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>


<?php }else if($linktype1!=""&&$linktype2!=""&&$linktype4!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link2_txt = checkLinkTypeText($linktype2);
$link4_txt = checkLinkTypeText($linktype4);
$link1 = checkIsLinedoball($link1);
$link2 = checkIsLinedoball($link2);
$link4 = checkIsLinedoball($link4);?>
<td class="box-link2">
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

<?php }else if($ch!=""&&$linktype1!=""&&$linktype3!=""&&$linktype4!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link3_txt = checkLinkTypeText($linktype3);
$link4_txt = checkLinkTypeText($linktype4);
$link1 = checkIsLinedoball($link1);
$link3 = checkIsLinedoball($link3);
$link4 = checkIsLinedoball($link4);?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

<?php }else if($linktype1!=""&&$linktype3!=""&&$linktype4!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link3_txt = checkLinkTypeText($linktype3);
$link4_txt = checkLinkTypeText($linktype4);
$link1 = checkIsLinedoball($link1);
$link3 = checkIsLinedoball($link3);
$link4 = checkIsLinedoball($link4);?>
<td class="box-link2">
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

<?php }else if(ch!=""&&$linktype2!=""&&$linktype3!=""&&$linktype4!=""){
$link2_txt = checkLinkTypeText($linktype2);
$link3_txt = checkLinkTypeText($linktype3);
$link4_txt = checkLinkTypeText($linktype4);
$link2 = checkIsLinedoball($link2);
$link3 = checkIsLinedoball($link3);
$link4 = checkIsLinedoball($link4);?>

<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div>
<a class="box-link2 " href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?> </td></div>


<?php }else if($linktype2!=""&&$linktype3!=""&&$linktype4!=""){
$link2_txt = checkLinkTypeText($linktype2);
$link3_txt = checkLinkTypeText($linktype3);
$link4_txt = checkLinkTypeText($linktype4);
$link2 = checkIsLinedoball($link2);
$link3 = checkIsLinedoball($link3);
$link4 = checkIsLinedoball($link4);?>
<td class="box-link2">
<a class="box-link2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?> </td></div>


<?php }else if($ch!=""&&$linktype1!=""&&$linktype2!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link2_txt = checkLinkTypeText($linktype2);
$link1 = checkIsLinedoball($link1);
$link2 = checkIsLinedoball($link2);
?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a></td>

<?php }else if($linktype1!=""&&$linktype2!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link2_txt = checkLinkTypeText($linktype2);
$link1 = checkIsLinedoball($link1);
$link2 = checkIsLinedoball($link2);
?>
<td class="box-link2">
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a></td>


<?php }else if($ch!=""&&$linktype1!=""&&$linktype3!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link3_txt = checkLinkTypeText($linktype3);
$link1 = checkIsLinedoball($link1);
$link3 = checkIsLinedoball($link3);
?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>


<?php }else if($linktype1!=""&&$linktype3!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link3_txt = checkLinkTypeText($linktype3);
$link1 = checkIsLinedoball($link1);
$link3 = checkIsLinedoball($link3);
?>
<td class="box-link2">
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>


<?php }else if($ch!=""&&$linktype1!=""&&$linktype4!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link4_txt = checkLinkTypeText($linktype4);
$link1 = checkIsLinedoball($link1);
$link4 = checkIsLinedoball($link4);
?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

<?php }else if($linktype1!=""&&$linktype4!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link4_txt = checkLinkTypeText($linktype4);
$link1 = checkIsLinedoball($link1);
$link4 = checkIsLinedoball($link4);
?>
<td class="box-link2">
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

<?php }else if($ch!=""&&$linktype2!=""&&$linktype3!=""){
$link2_txt = checkLinkTypeText($linktype2);
$link3_txt = checkLinkTypeText($linktype3);
$link2 = checkIsLinedoball($link2);
$link3 = checkIsLinedoball($link2);?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div>
<a class="box-link2 " href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>


<?php }else if($linktype2!=""&&$linktype3!=""){
$link2_txt = checkLinkTypeText($linktype2);
$link3_txt = checkLinkTypeText($linktype3);
$link2 = checkIsLinedoball($link2);
$link3 = checkIsLinedoball($link2);?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>

<?php }else if($ch!=""&&$linktype2!=""&&$linktype4!=""){
$link2_txt = checkLinkTypeText($linktype2);
$link4_txt = checkLinkTypeText($linktype4);
$link2 = checkIsLinedoball($link2);
$link4 = checkIsLinedoball($link4);?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>


<?php }else if($linktype2!=""&&$linktype4!=""){
$link2_txt = checkLinkTypeText($linktype2);
$link4_txt = checkLinkTypeText($linktype4);
$link2 = checkIsLinedoball($link2);
$link4 = checkIsLinedoball($link4);?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2 " href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div>
<a class="box-link2 " href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

<?php }else if($ch!=""&&$linktype3!=""&&$linktype4!=""){
$link3_txt = checkLinkTypeText($linktype3);
$link4_txt = checkLinkTypeText($linktype4);
$link3 = checkIsLinedoball($link2);
$link4 = checkIsLinedoball($link4);?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

<?php }else if($linktype3!=""&&$linktype4!=""){
$link3_txt = checkLinkTypeText($linktype3);
$link4_txt = checkLinkTypeText($linktype4);
$link3 = checkIsLinedoball($link2);
$link4 = checkIsLinedoball($link4);?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div>
<a class="box-link2" href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

<?php }else if($ch!=""&&$linktype1!=""){
$link1_txt = checkLinkTypeText($linktype1);
$link1 = checkIsLinedoball($link1);?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a></td>

<?php }else if($linktype1!=""){
$link2_txt = checkLinkTypeText($linktype2);
 $link2 = checkIsLinedoball($link2);?>
<td class="box-link2">
 <a class="box-link 2" href="<?php echo $link1; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type1; ?>" ><?php echo $link1_txt[1]; ?></div></a></td>
<?php }else if($ch!=""&&$linktype2!=""){
$link2_txt = checkLinkTypeText($linktype2);
$link2 = checkIsLinedoball($link2);?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2 " href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a></td>


<?php }else if($linktype2!=""){
$link2_txt = checkLinkTypeText($linktype2);
 $link2 = checkIsLinedoball($link2);?>
<td class="box-link2">
 <a class="box-link 2" href="<?php echo $link2; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type2; ?>" ><?php echo $link2_txt[1]; ?></div></a></td>

<?php }else if($ch!=""&&$linktype3!=""){
$link3_txt = checkLinkTypeText($linktype3);
$link3 = checkIsLinedoball($link3);?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
 <a class="box-link2 " href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>
 <?php }else if($linktype3!=""){
   $link3_txt = checkLinkTypeText($linktype3);
       $link3 = checkIsLinedoball($link3);?>
<td class="box-link2"><a class="darkgrey " href="<?php echo $link3; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type3; ?>" ><?php echo $link3_txt[1]; ?></div></a></td>

<?php }else if($ch!=""&&$linktype4!=""){
$link4_txt = checkLinkTypeText($linktype4);
$link4 = checkIsLinedoball($link4);?>
<td class="box-link2"><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a>
<a class="box-link2 " href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>

<?php }else if($linktype4!=""){
  $link4_txt = checkLinkTypeText($linktype4);
     $link4 = checkIsLinedoball($link4);?>
<td class="box-link2 ">
         <a class="box-link2 " href="<?php echo $link4; ?>"  target="_blank"><div class="box3 text-center  col-xs-3" data-link_type="<?php echo $link_type4; ?>" ><?php echo $link4_txt[1]; ?></div></a></td>


<?php }else if($ch!=""){?>

<td class="box-link2 "><a href="./chanellive.php?id=<?php echo $ch ;?>"><?php echo $ch; ?></a></td>





</tr>
<?php }  }  }
}?>
</tbody>
</table>

<style>

</style>
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
element.find( ".box-link2 " ).html('<p class="box-link2"style="  display: -webkit-inline-box;">รออัปเดจ</p>');
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


<section class="feeds no-padding-top">
<div class="container-fluid">
<div class="row">
<!-- Trending Articles-->
<div class="col-lg-6">
 <div class="articles card">
   <div class="card-close">
     <div class="dropdown">

       <div aria-labelledby="closeCard" class="dropdown-menu has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
     </div>
   </div>
   <div class="card-header d-flex align-items-center">

     <h2 class="h3">รายการถ่ายทอดสดวันนี้  </h2>
     <div class="badge badge-rounded bg-green">3</div>
   </div>
   <div class="card-body no-padding">
                           <div class="item d-flex align-items-center">
       <div class="image"><img src="./page/fileupload/pixteam/201707191383166119.png" alt="..." class="img-fluid rounded-circle"></div>
       <div class="text"><a href="#">

           <h3 class="h5">13:50</h3></a><larger>RB ลีบซิก VS b ch1  </larger></div>
     </div>
                             <div class="item d-flex align-items-center">
       <div class="image"><img src="./page/fileupload/pixteam/201707191383166119.png" alt="..." class="img-fluid rounded-circle"></div>
       <div class="text"><a href="#">

           <h3 class="h5">13:55</h3></a><larger>อาร์เซน่อล VS เบนฟิก้า ch1  </larger></div>
     </div>
                             <div class="item d-flex align-items-center">
       <div class="image"><img src="./page/fileupload/pixteam/201707191559266008.png" alt="..." class="img-fluid rounded-circle"></div>
       <div class="text"><a href="#">

           <h3 class="h5">23:15</h3></a><larger>a VS b ch1  </larger></div>
     </div>


   </div>
 </div>
</div>
<!-- Check List -->
<div class="col-lg-6">
 <div class="articles card">
   <div class="card-close">
     <div class="dropdown">

       <div aria-labelledby="closeCard" class="dropdown-menu has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
     </div>
   </div>
   <div class="card-header d-flex align-items-center">

     <h2 class="h3">รายการถ่ายทอดสดพรุ้งนี้  </h2>
     <div class="badge badge-rounded bg-green">3</div>
   </div>
   <div class="card-body no-padding">


   </div>
 </div>
</div>
</div>
</div>
</section>
