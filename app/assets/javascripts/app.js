var app = app || {};

$(document).ready(function() {

  // $('.past-speaker-bio').shorten({
  //   moreText: 'Read More',
  //   lessText: 'Read Less',
  //   showChars: '210',
  // });

  // dynamically shorten and show more link
  $(".show-more").click(function() {
        if($(".subhero").hasClass("show-more-height")) {
            $(this).text("(Show Less)");
        } else {
            $(this).text("(Show More)");
        }

        $(".past-speaker-bio").toggleClass("show-more-height");
    });


  // colorbox for the past speakers
  $('.past-speaker').colorbox({inline:true, innerWidth:"780px", innerHeight:"430px", rel:'past-speaker'});

});
