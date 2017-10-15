<?php
session_start();
$login=isset($_SESSION["username"])?$_SESSION["username"]:0;
$id=isset($_GET["id"])?$_GET["id"]:'';
?>  