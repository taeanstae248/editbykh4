<?php require_once '../config.php';
 include("../connect.php");



  $i=$_GET['pvid'];

          $sqlteame="SELECT * FROM teames WHERE p_id like '%($i)%' order by teames ASC ";
            $resulta = $conn->query($sqlteame);
            $strOption=null;

            while ($rowa=mysqli_fetch_assoc($resulta)) {
            $strOption='<option value="'.$rowa['ts_id'].'">'.$rowa['teames'].'</option>';


            echo $strOption;

            }


  ?>
