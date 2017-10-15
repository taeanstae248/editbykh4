<?php
$cache_file = 'cache/cache_index.html';
$dynamic_url = 'cache_index';
ob_start('ob_gzhandler'); //Turn on output buffering, "ob_gzhandler" for the compressed page with gzip.
readfile($cache_file); //read Cache file
echo '<!-- cached page - '.date('l jS \of F Y h:i:s A', filemtime($cache_file)).', Page : '.$dynamic_url.' -->';
ob_end_flush(); //Flush and turn off output buffering
exit(); //no need to proceed further, exit the flow.
?>