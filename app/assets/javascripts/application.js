// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

(function($) {
    $.fn.goTo = function() {
        $('html, body').animate({
            scrollTop: ($(this).offset().top - parseInt($(this).css('margin-top')) - $('div#nav-container').outerHeight(true))+ 'px'
        }, 'slow');
        return this; // for chaining...
    }
})(jQuery);

function moveScroller() {
    var move = function() {
        var st = $(window).scrollTop();
        var ot = $("#scroller-anchor").offset().top;
        var s = $("div#nav-container");
        if(st > ot) {
            $("#scroller-anchor").height(s.outerHeight());
            s.css({
                position: "fixed",
                top: "0px"
            });
        } else {
            $("#scroller-anchor").height(0);
            if(st <= ot) {
                s.css({
                    position: "relative",
                    top: ""
                });
            }
        }
    };
    $(window).scroll(move);
    move();
}
moveScroller();