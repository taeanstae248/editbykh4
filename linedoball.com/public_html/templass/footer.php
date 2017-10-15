<footer class="container-black font-white">

    <div class="container">
    <br>
		<div class="row flex-items-xs-top">


      <ul class="nav justify-content-center col-sm-12 col-xs-12 col-md-12 hidden-md-down">
    <div class="iconpix"> <a href="http://linedoball.com" target="_self" title=""> <img src="/img/header/linedoball.com.png" alt="linedoball" title=" linedoball" style="width: 80%;"> </a></div>
  <li class="nav-item">

    <a class="nav-link active" href="http://linedoball.com">ดูบอลสด</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="http://www.linedoball.com/%E0%B8%94%E0%B8%B9%E0%B8%9A%E0%B8%AD%E0%B8%A5%E0%B8%AD%E0%B8%AD%E0%B8%99%E0%B9%84%E0%B8%A5%E0%B8%99%E0%B9%8C/">ดูบอลออนไลน์</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="http://www.linedoball.com/%E0%B9%82%E0%B8%9B%E0%B8%A3%E0%B9%81%E0%B8%81%E0%B8%A3%E0%B8%A1%E0%B8%9A%E0%B8%AD%E0%B8%A5/">โปรแกรมบอล</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="http://www.linedoball.com/%E0%B8%9C%E0%B8%A5%E0%B8%9A%E0%B8%AD%E0%B8%A5/">ผลบอล</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="http://www.linedoball.com/%E0%B8%95%E0%B8%B4%E0%B8%94%E0%B8%95%E0%B9%88%E0%B8%AD%E0%B9%80%E0%B8%A3%E0%B8%B2/">ติดต่อเรา</a>
  </li>


</ul>


		</div>
	</div>

</footer>

<?php
$template="SELECT * FROM teamvs INNER JOIN press ON (teamvs.p_id = press.p_id) WHERE DAY(date_teame) = DAY(curdate()) ORDER BY t_time ASC , date_teame  ";
  $result = $conn->query($template);
 ?>
<div class="footer-menu footer-menu-dark hidden-sm-down" style="height: 25px; background-color: rgba(0,0,0,0.85)"> <marquee behavior="scroll" direction="left" style="color: #ffffff
  !important;position: fixed;z-index: 99;bottom: 0px;width: 100%;background: #321446;">

  <span><i class="fa fa-television" aria-hidden="true"></i> LINEDOBAlL TV <span> รายการถ่ายทอดสดฟุตบอลประจำวัน เวลา   <?php while($row = mysqli_fetch_array($result)){
       $time=$row["t_time"];  $name=$row["t_namevs"]; $icon= $row["p_icon"];
       $ch=$row["t_chanel"];?> &nbsp; <?php echo $time ; ?>  <?php echo $name ;       }?>   </marquee> </div>
</body>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.4/build/jquery.datetimepicker.full.js"></script>
  <script src="/js/tether.min.js"></script>
  <script src="/js/bootstrap.min.js"> </script>
  <script src="/js/moment.js"></script>
  <script src="/js/lz/lazyload.min.js"></script>
  <script src="/js/jssocials/jssocials.min.js"></script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-83608519-1', 'auto');
  ga('send', 'pageview');

</script>
<script>

             $('#match_date_time').datetimepicker({
                 format:"Y-m-d ",
                 allowTimes:[
                     '00:00', '00:15', '00:30', '00:45', '01:00', '01:15', '01:30', '01:45',
                     '02:00', '02:15', '02:30', '02:45', '03:00', '03:15', '03:30', '03:45',
                     '04:00', '04:15', '04:30', '04:45', '05:00', '05:15', '05:30', '05:45',
                     '06:00', '06:15', '06:30', '06:45', '07:00', '07:15', '07:30', '07:45',
                     '08:00', '08:15', '08:30', '08:45', '09:00', '09:15', '09:30', '09:45',
                     '10:00', '10:15', '10:30', '10:45', '11:00', '11:15', '11:30', '11:45',
                     '12:00', '12:15', '12:30', '12:45', '13:00', '13:15', '13:30', '13:45',
                     '14:00', '14:15', '14:30', '14:45', '15:00', '15:15', '15:30', '15:45',
                     '16:00', '16:15', '16:30', '16:45', '17:00', '17:15', '17:30', '17:45',
                     '18:00', '18:15', '18:30', '18:45', '19:00', '19:15', '19:30', '19:45',
                     '20:00', '20:15', '20:30', '20:45', '21:00', '21:15', '21:30', '21:45',
                     '22:00', '22:15', '22:30', '22:45', '23:00', '23:15', '23:30', '23:45',
              ],timepicker:false
             });

             window.addEventListener("load", function(event) {
    lazyload();
});
           </script>

           <script>
      var loadDeferredStyles = function() {
        var addStylesNode = document.getElementById("deferred-styles");
        var replacement = document.createElement("div");
        replacement.innerHTML = addStylesNode.textContent;
        document.body.appendChild(replacement)
        addStylesNode.parentElement.removeChild(addStylesNode);
      };
      var raf = requestAnimationFrame || mozRequestAnimationFrame ||
          webkitRequestAnimationFrame || msRequestAnimationFrame;
      if (raf) raf(function() { window.setTimeout(loadDeferredStyles, 0); });
      else window.addEventListener('load', loadDeferredStyles);
    </script>

    <script>
           $("#share").jsSocials({
               shares: ["email", "twitter", "facebook", "googleplus","line"]
           });
       </script>
       <!-- Histats.com  START  (aync)-->
       <script type="text/javascript">var _Hasync= _Hasync|| [];
       _Hasync.push(['Histats.start', '1,3789282,4,511,95,18,00000000']);
       _Hasync.push(['Histats.fasi', '1']);
       _Hasync.push(['Histats.track_hits', '']);
       (function() {
       var hs = document.createElement('script'); hs.type = 'text/javascript'; hs.async = true;
       hs.src = ('//s10.histats.com/js15_as.js');
       (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(hs);
       })();</script>
       <noscript><a href="/" target="_blank"><img  src="//sstatic1.histats.com/0.gif?3789282&101" alt="hit counter script" border="0"></a></noscript>
       <!-- Histats.com  END  -->

       <script>
       var playerInstance = jwplayer("xachanellive1");
           playerInstance.setup({

             autostart: true,
             mute: true //optional, but recommended
           });
       </script>


       <script>

       var sportman;


             $(document).ready(function() {
               //  alert("s");
               sportman = $('.black-ribbon').offset().top;


             });
             $(window).scroll (function() {

               var doc_offset = $(this).scrollTop();
               var margin_sportman= doc_offset-sportman;


               if(doc_offset>=sportman){
                 $('.black-ribbon').addClass('fixed');
                 $('.black-ribbon').css('margin-top',margin_sportman);
               }else{
                 $('.black-ribbon').removeClass('fixed');
                 $('.black-ribbon').css('margin-top',0);
               }

             });
           </script>

  </body>

</html>
