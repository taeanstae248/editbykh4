
	<script>

function matchChecker(){
  var match_remove = -190;
  var match_hide = -180;
  var match_hide2 = 1440;
  var match_show = 20;
  var currentdate = moment(new Date());



  $( ".row-match" ).each(function() {

    element = $( this );

    if (element.css('display') == "table-row") {
      var date_team = element.data('date_team').replace(/-/g, "/"); //วันที่ปัจจุบีน
      var time_team = element.data('time_team'); //เวลาคู่
      var match_date_time = moment(new Date(date_team+' '+time_team)); //2017-07-26 00.00
      var diff = match_date_time - currentdate;
      var minutes = Math.floor((diff/1000)/60);
      var box_link = element.data('box-link');
      var box_link_html ;

      if( typeof box_link !== 'undefined' ){ //box_link ไม่ได้กำหนด
        box_link_html = box_link;

      }else{
        box_link_html = element.find( ".box-link" ).html();
        element.data( "box-link", box_link_html );
      }

      //if(minutes <= match_remove || minutes >= match_hide2 ){
      if( minutes <= match_remove ){
        //pass ลบ หรือ
        element.remove();

      }else if(minutes <= match_hide  ){
        //pass จบ
        element.find( ".linktag" ).removeClass('blink_me');
        element.find( ".linktag" ).parent().addClass('match_end');

      }else if( minutes<=match_show){
        //now สด
        element.removeClass('match_remove');
        element.find( ".box-link2 " ).html(box_link_html);
        element.find( ".linktag " ).addClass('blink_me');

      }else{
        //feture LINK
        element.find( ".box-link2 " ).html('<p class="box-link2" style="  display: -webkit-inline-box;">รออัปเดจ</p></td>');
        element.find( ".linktag" ).removeClass('blink_me');
      }
    }
  });

}

$(window).on('load',function(){
  matchChecker();
  var intervalMatchChecker = setInterval(function(){
    matchChecker();
  }, 150000);

});

	</script>
