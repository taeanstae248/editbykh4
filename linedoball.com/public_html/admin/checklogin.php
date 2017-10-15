<?php
session_start();

	include("connect.php");



	$sql = "SELECT * FROM member WHERE m_user = '".mysqli_real_escape_string($conn,$_POST['login-username'])."'
	and m_pass = '".mysqli_real_escape_string($conn,$_POST['login-password'])."'";


	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_array($result,MYSQLI_ASSOC);

	if(!$row)
	{
    echo "<script>";
                     echo "alert(\" user หรือ  password ไม่ถูกต้อง\");";
                       echo "window.history.back()";
                   echo "</script>";
	}
	else
	{
			$_SESSION["m_id"] = $row["m_id"];
			$_SESSION["m_status"] = $row["m_status"];

			session_write_close();

			if($row["m_status"] == "1")
			{
				header("location:indexs.php");
			}
			else
			{
        "<script>";
                           echo "alert(\" สำหรับผู้ดูแลระบบ และ ผู้ได้รับอนุญาติเท่านั้น\");";
                          echo "window.history.back()";
                       echo "</script>";
			}
	}

?>
