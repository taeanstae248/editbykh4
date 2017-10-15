<?php
session_start();
include("connect.inc.php");
$strSQL = "SELECT * FROM useradmin_login WHERE useradmin = '".mysql_real_escape_string($_POST['User'])."' 
and userpass = '".mysql_real_escape_string($_POST['Pass'])."'";
$objQuery = mysql_query($strSQL);
$objResult = mysql_fetch_array($objQuery);
if(!$objResult)
{
	echo "Username and Password Incorrect!";
	echo '<meta http-equiv="refresh" content="1;url=LoginAdmin.php">';
}
else
{
	$_SESSION["id"] = $objResult["id"];
	$_SESSION["username"] = $objResult["useradmin"];
      //session_write_close();
	echo '<meta http-equiv="refresh" content="1;url=press.php">';

}
mysql_close();
?>

