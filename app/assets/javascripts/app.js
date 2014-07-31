var app = app || {};

$(document).ready(function() {

  $(".show-more").click(function() {
      console.log('yayyyyy');
        if($(".current-speaker-bio").hasClass("show-more-height")) {
            $(this).text("Show Less");
        } else {
            $(this).text("Show More");
        }

        $(".text").toggleClass("show-more-height");
    });

  // $('.current-speaker-bio').readmore({
  //   maxHeight: 120,
  //   moreLink: '<a href="#">Read more</a>',
  //   lessLink: '<a href="#">Close</a>'
  // });


  // shorten.js
  // $('.past-speaker-bio').shorten({
  //   moreText: 'Read More',
  //   lessText: 'Read Less',
  //   showChars: '210',
  // });

  // colorbox for the past speakers
  $('.past-speaker').colorbox({inline:true, innerWidth:"780px", innerHeight:"430px", rel:'past-speaker'});


});
