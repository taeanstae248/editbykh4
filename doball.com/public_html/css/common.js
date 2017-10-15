//$(document).ready(function() {
//    getObStats();
//});
//
//function getObStats() {
//    $.post("/service/statsob", function(data) {
//        $('#hide_obfuscate').text(data);
//    });
//}

$(function () {
    var pull = $('.main-menu .pull');
    var menu = $('.main-menu a.hide-menu');

    $(pull).on('click', function (e) {
        e.preventDefault();
        menu.slideToggle();
    });

    var $lightbox = $('#lightbox');

    $(document).ready(function () {

        css = {
            'maxWidth': $(window).width() - 100,
            'maxHeight': $(window).height() - 100
        };

        $lightbox.find('.close').addClass('hidden');
        $lightbox.find('img').css(css);

        $lightbox.modal({
            show: true
        });
    });

    $lightbox.on('shown.bs.modal', function (e) {
        var $img = $lightbox.find('img');

        $lightbox.find('.modal-dialog').css({'width': $img.width()});
        $lightbox.find('#adsBClose').removeClass('hidden');
    });
    
    $lightbox.on('hidden.bs.modal', function () {
        document.cookie = "hasClosedFloatBanner=true; expires=0;";
    });

});
