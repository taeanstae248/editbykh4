<?php
include("Checkname.php");
include("connect.inc.php");
$id=isset($_GET["id"])?$_GET["id"]:'';
$task=isset($_GET["task"])?$_GET["task"]:'';
if($task=='deleteall'){
	
	$sql = "select * from press ";
	$rs_press = mysql_query($sql);
	if(mysql_num_rows($rs_press)> 0){
		while ($press_data = mysql_fetch_array($result)) {
			unlink(@$press_data['icon_press']);
		}
	}
	
	$show="delete from press  ";
	$result=mysql_query($show)or die("Not connect delete");
}
if($id!=''){
	
	$sql = "select * from press where id='$id'";
	$rs_press = mysql_query($sql);
	if(mysql_num_rows($rs_press)> 0){
		while ($press_data = mysql_fetch_array($result)) {
			unlink(@$press_data['icon_press']);
		}
	}
	
	$show="delete from press where id IN ($id) ";
	$result=mysql_query($show)or die("Not connect delete");
	
	if($result){
		$dynamic_url    = 'http://'.$_SERVER['HTTP_HOST']  .'/buildcache.php?key=AAVVQQ'; // requested dynamic page (full url)
		$ch = curl_init($dynamic_url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_exec($ch);
		curl_close($ch);
	}

}
	echo '<meta http-equiv="refresh" content="0;url=Show_Data.php">';
?>