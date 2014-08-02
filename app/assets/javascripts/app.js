var app = app || {};

$(document).ready(function() {

  // speaker form validation
  $("#commentForm").validate({meta: "validate"});

  // colorbox for current speakers
  $('.current-speaker').colorbox({inline:true, rel:'current-speaker', innerWidth:"780px", innerHeight:"430px",});

  // colorbox for the past speakers
  $('.past-speaker').colorbox({inline:true, innerWidth:"780px", innerHeight:"430px", rel:'past-speaker'});


});
