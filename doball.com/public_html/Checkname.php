<?php
session_start();
if(isset($_SESSION["username"])){


}else{
	echo '<meta http-equiv="refresh" content="0;url=index.php">';
	exit();

}
?>
