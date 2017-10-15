<?php
    date_default_timezone_set('Asia/Bangkok');

    $host="localhost";
    $user="admin_linedoball";
    $pass="pkOG4ZDKaL";
    $name_db="admin_linedoball";
    #$user="doball_db";
    #$pass="vyiWfIhCnBK9SOLB";
    #$name_db="doball_db";
    /*$host="localhost";
    $user="root";
    $pass="";
    $name_db="linedoba_db";*/

    $conn=mysql_connect($host,$user,$pass,$name_db)or die("not connect");
    if($conn){
        mysql_select_db($name_db)or die("not database");
        mysql_query("SET NAMES UTF8");   
    }else{
        echo "no connect db";
    }

    function checkTime($time_txt) {
        $current_hour = date('G');
        $current_minute = date('i');
        $time_txt = preg_replace('/[^0-9]/i', '', $time_txt);
        list($hour, $minute) = str_split($time_txt, 2);
        if ($current_hour >= 12 && $hour >= 12 && $current_hour >= $hour && $current_minute >= $minute)
            return true;
        else if ($current_hour < 12 && $hour < 12 && $current_hour >= $hour && $current_minute >= $minute)
            return true;
        return false;
    }
    
?>