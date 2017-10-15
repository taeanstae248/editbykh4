<?php
//config.php
define('ROOT',str_replace("\\",'/',dirname(__FILE__)));
define('PATH', ROOT == $_SERVER['DOCUMENT_ROOT']
    ?'' :substr(ROOT,strlen($_SERVER['DOCUMENT_ROOT']))

);
/*echo  ROOT;*/

error_reporting(E_ALL ^ E_NOTICE);
    session_start();
session_start(); if($_SESSION["m_status"] =="") { // if นี้ใช้ตรวจสอบถ้าไม่ได้ login ให้ไปหน้า login

echo"<script>alert('กรุณาเข้าสู่ระบบ');window.history.back()</script>";}
?>
