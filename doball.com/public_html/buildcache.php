<?php

if( $_GET['key'] == 'AAVVQQ'){
    
	include("connect.inc.php");
    $buildcache = new Buildcache();
    $buildcache->build();
    
}
if( $_GET['key'] == 'AAVVQQ2'){
    
	include("connect.inc.php");
    $buildcache = new Buildcache();
    $buildcache->cleardb();
    $buildcache->build();
    
}
if( $_GET['key'] == 'AAVVQQ3'){
    
$dynamic_url    = 'http://goo.gl/UUNCl7'; 
$ch = curl_init($dynamic_url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$data = curl_exec($ch);
curl_close($ch);

$html = new DOMDocument();
$html->loadHTML($data);

foreach($html->getElementsByTagName('a') as $link){
	return $link->getAttribute('href');
}
	
}
    
class Buildcache {
    
    private $page_cache = array(
        array('cache_index','',''),
        array('cache_channel','ch1',''),
        array('cache_channel','ch2',''),
        array('cache_channel','ch3',''),
        array('cache_channel','ch4',''),
        array('cache_channel','ch5',''),
        array('cache_channel','ch6',''),
        array('cache_channel','ch7',''),
        array('cache_channel','ch8',''),
        array('cache_channel','ch9',''),
        array('cache_channel','ch10',''),
        array('cache_channel','ch11',''),
        array('cache_channel','ch12',''),
        array('cache_channel','ch13',''),
        array('cache_channel','ch14',''),
        array('cache_channel','ch15',''),
        array('cache_channel','ch16',''),
        array('cache_channel','ch17',''),
        array('cache_channel','ch18',''),
        array('cache_channel','ch19',''),
        array('cache_channel','ch20',''),
        array('cache_channel','ch21',''),
        array('cache_channel','ch22',''),
        array('cache_channel','ch23',''),
        array('cache_channel','ch24',''),
        array('cache_channel','ch25','')

    );

    public function build(){
        foreach ($this->page_cache as $key => $value){
            $cache_ext  = '.html'; //file extension
            $cache_time     = 86400;  //Cache file expires afere these seconds (1 hour = 3600 sec)
            $cache_folder   = 'cache/'; //folder to store Cache files
            $ignore_pages   = array('', '');

            $dynamic_url    = ($value[1]=='')? $value[0].$value[1] : $value[1] ; // requested dynamic page (full url)
            $cache_file     = $cache_folder.$dynamic_url.$cache_ext; // construct a cache file
            $ignore = (in_array($dynamic_url,$ignore_pages))?true:false; //check if url is in ignore list


            //Turn on output buffering with gzip compression.
           // ob_start('ob_gzhandler'); 
			if (!in_array('ob_gzhandler', ob_list_handlers())) {
				ob_start('ob_gzhandler');
			} else {
				ob_start();
			}
            ######## Your Website Content Starts Below ########
            $id = $value[1];
            $return = include 'cache_template/'.$value[0].'.php';
            //require_once('cache_template/'.$value[0].'.php');
            ######## Your Website Content Ends here #########

            if (!is_dir($cache_folder)) { //create a new folder if we need to
                mkdir($cache_folder);
            }
            if(!$ignore){
                $fp = fopen($cache_file, 'w');  //open file for writing
                fwrite($fp, ob_get_contents()); //write contents of the output buffer in Cache file
                fclose($fp); //Close file pointer
            }
            
            $output = ob_clean(); //Flush and turn off output buffering
        }
     

    }

    public function cleardb(){
		
		$sql = " DELETE FROM `team` WHERE TIMESTAMPDIFF(MINUTE,NOW(),datetime_exp) <-190 ";
		$result = mysql_query($sql) or die("no show");
     
    }
}
?>