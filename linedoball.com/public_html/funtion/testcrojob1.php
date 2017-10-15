<?php

include (__DIR__.'/../admin/connect.php');

include('simple_html_dom.php');
require_once  ('../config.php');

$yd=date('Y-m-d',strtotime("-1 day"));
$ddsolved=$yd;
$date=explode('-',$ddsolved);
$ddsolved=implode('-',array($date[2],$date[1],$date[0]+543));


    function CronjobTopscorebackBall2(){
        global $conn;
        $dynamic_url = 'http://www.goal.in.th/%E0%B8%9C%E0%B8%A5%E0%B8%9A%E0%B8%AD%E0%B8%A5%E0%B8%A2%E0%B9%89%E0%B8%AD%E0%B8%99%E0%B8%AB%E0%B8%A5%E0%B8%B1%E0%B8%87/?Line=';echo $ddsolved; // requested dynamic page (full url)
        $ch = curl_init($dynamic_url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $html_source = curl_exec($ch);
        curl_close($ch);
        $html = new simple_html_dom();
        $html->load($html_source);
        $programhead = $html->find('div.programhead');
        $table = array();

        foreach ($programhead as $key => $value) {

          $id = $key + 1;


          // save image to host
         $img_element = $value->next_sibling()->next_sibling()->find('img');

          foreach ($img_element as $img) {
            $url = $img->src;
            $url_host = parse_url($url, PHP_URL_HOST);

            if ($url_host == NULL) {
              $url = 'http://up.goal.in.th/' . $url;
            }
            $part = '/img/source/'.pathinfo($url)['basename'];

              $img_part = $part;
                $img_uri_part = $part;
                $img->src = $img_uri_part;
                if (!file_exists($img_part)) {
                  $ch = curl_init ($url);
                  curl_setopt($ch, CURLOPT_HEADER, 0);
                  curl_setopt($ch, CURLOPT_BINARYTRANSFER,1);
                  curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:50.0) Gecko/20100101 Firefox/50.0');
                  curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
                  curl_setopt($ch, CURLOPT_AUTOREFERER, true);
                  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
                  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                  $raw=curl_exec($ch);
                  curl_close ($ch);
                  $fp = fopen($img_part,'x');
                  fwrite($fp, $raw);
                  fclose($fp);
              }
          }
          $value->class = 'program__head program__head--table'. $id;
          $value->next_sibling()->class = 'program__subhead program__subhead--table'. $id;
          $value->next_sibling()->find('strong',0)->outertext = $value->next_sibling()->find('strong',0)->innertext;

          $headtable[$key] = $value->next_sibling();
          $table_tr = $value->next_sibling()->next_sibling()->find('tr');

          $bodytable[$key] = '<div class="table-responsive limit_detail">';

          $bodytable[$key] .= '<table class=" table table--table' . $id . '"><tbody>';

          foreach ($table_tr as $tr) {
            if ($tr->class != 'votes') {
              if ($tr->class == '') {
                $tr->class = 'table__head table__head--table' . $id;
                $tr->children(0)->colspan = 8;
              } else if ($tr->class == 'utable_ht') {
                $tr->class = 'table__info table__info--table' . $id;
                $tr->find('td', 1)->width = '30';
                $tr->children(2)->outertext = '';
                $tr->children(8)->innertext = 'ทีเด็ดบอลคืนนี้';
                $tr->children(9)->outertext = '';
                $tr->children(10)->outertext = '';
                $tr->children(11)->outertext = '';
              } else {
                $tr->class = 'table__data table__data--table' . $id;
                $tr->children(2)->outertext = '';
                $tr->children(8)->children(0)->innertext = $tr->children(8)->children(0)->plaintext;
                $tr->children(9)->outertext = '';
                $tr->children(10)->outertext = '';
                $tr->children(11)->outertext = '';
              }
              $tr->outertext = str_replace("บ้านผลบอล ","",$tr->outertext);
              $tr->outertext = str_replace("โปรแกรมบอล ราคาบอล","",$tr->outertext);

              $bodytable[$key] .= $tr;
            }
          }
          $bodytable[$key] .= '</tbody></table></div>';
          $table[$key] = $headtable[$key] . $bodytable[$key];
      $a=$table[0];

        }
$yd=date('Y-m-d',strtotime("-1 day"));
        $sql1="SELECT * FROM  tbl_tded_program  WHERE status='0' AND tded_date = '$yd' ";
        $result1 = $conn->query($sql1);
        $row=$result1->num_rows;




 if($row){
    echo 'มีข้อมูลแล้ว' ;
 }else{

    $sql=" INSERT INTO tbl_tded_program (tded_program, tded_date)
      VALUES ('$a','$yd')";
      $query1 = mysqli_query($conn,$sql);
}


      /* $query = "UPDATE tbl_tded_program SET tded_program='$a',tded_date = NOW(),status='1' WHERE id='2'";
        $result1 = $conn->query($query)or die("Error in Query".$conn->error);*/




    }





    CronjobTopscorebackBall2();
