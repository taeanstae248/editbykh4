<?php
include("Checkname.php");
include("connect.inc.php");
$id=isset($_GET["id"])?$_GET["id"]:'';
$task=isset($_GET["task"])?$_GET["task"]:'';
if($task=='deleteall'){
	$show="delete from team  ";
	$result=mysql_query($show)or die("Not connect delete");
}
if($id!=''){
	
	$show="delete from team where id IN ($id) ";
	$result=mysql_query($show)or die("Not connect delete");
	
	if($result){
		$dynamic_url    = 'http://'.$_SERVER['HTTP_HOST']  .'/buildcache.php?key=AAVVQQ'; // requested dynamic page (full url)
		$ch = curl_init($dynamic_url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_exec($ch);
		curl_close($ch);
			//echo "Delete Complete";
	}
	
}
	echo '<meta http-equiv="refresh" content="0;url=Show_ball.php">';
?>