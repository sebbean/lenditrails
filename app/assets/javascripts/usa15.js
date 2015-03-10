$(document).ready(function() {


  // toggle snapshot agenda on the main conference page
  // toggle between april 13, april 14 and april 15 tabs
  $('.apr13-tab').on("click", function(){
    $('.apr13-tab').addClass('on');
    $('.apr13-tab').removeClass('off');
    $('.apr14-tab').removeClass('on');
    $('.apr14-tab').addClass('off');
    $('.apr15-tab').removeClass('on');
    $('.apr15-tab').addClass('off');

    $('.usa15-apr13').removeClass('off');
    $('.usa15-apr14').addClass('off');
    $('.usa15-apr15').addClass('off');

  });

  $('.apr14-tab').on("click", function(){
    $('.apr14-tab').addClass('on');
    $('.apr14-tab').removeClass('off');
    $('.apr13-tab').addClass('off');
    $('.apr13-tab').removeClass('on');
    $('.apr15-tab').addClass('off');
    $('.apr15-tab').removeClass('on');

    $('.usa15-apr14').removeClass('off');
    $('.usa15-apr13').addClass('off');
    $('.usa15-apr15').addClass('off');
  });

  $('.apr15-tab').on("click", function(){
    $('.apr15-tab').addClass('on');
    $('.apr15-tab').removeClass('off');
    $('.apr14-tab').addClass('off');
    $('.apr14-tab').removeClass('on');
    $('.apr13-tab').addClass('off');
    $('.apr13-tab').removeClass('on');

    $('.usa15-apr15').removeClass('off');
    $('.usa15-apr13').addClass('off');
    $('.usa15-apr14').addClass('off');
  });


  // USA2015 Agenda Page /usa/2015/agenda
  // toggles select track open and closed
  $('.ag-track').on("click", function(){
     $('.ag-track').toggleClass('closed');
  });

  // Pre-conference workshop toggles between topic and time on mobile view
  $(".ag13-show-topic").on("click", function(e){
    console.log('you clicked on topic');
    $('.ag13-sort-by-topic').addClass('ag13-active-panel');
    $('.ag13-sort-by-time').removeClass('ag13-active-panel');
    $('.ag13-show-topic').addClass('ag13-active');
    $('.ag13-show-time').removeClass('ag13-active');
  });

  $(".ag13-show-time").on("click", function(e){
    console.log('you clicked on time');
    $('.ag13-sort-by-topic').removeClass('ag13-active-panel');
    $('.ag13-sort-by-time').addClass('ag13-active-panel');
    $('.ag13-show-topic').removeClass('ag13-active');
    $('.ag13-show-time').addClass('ag13-active');
  });

  // Main Agenda works with magellan nav that allows you to choose the track you want to view on the agenda
  // Prevents you from toggling off all but one
  function toggle_function(track) {

    if (($('.agenda-main-box').hasClass(track)) && (track_count > 1)) {

      $('.agenda-main-box').toggleClass(track);
      track_count--;
      console.log('you removed a track');
      console.log(track_count);
    } else if ((!$('.agenda-main-box').hasClass(track)) && (track_count >= 1)) {

      $('.agenda-main-box').toggleClass(track);
      track_count++;
      console.log('you added a track');
      console.log(track_count);
    } else {

      swal("Before deactivating current track, \nplease select another\n(at least one track must be selected)");

    }


  }


  $('.ag-track-main').on("click", function(){
    toggle_function('ag-show-main');
  });

  $('.ag-track-astor').on("click", function(){
    toggle_function('ag-show-astor');
  });

  $('.ag-track-real-estate').on("click", function(){
    toggle_function('ag-show-real-estate');
  });

  $('.ag-track-china').on("click", function(){
    toggle_function('ag-show-china');
  });

  $('.ag-track-demo').on("click", function(){
    toggle_function('ag-show-demo');
  });

  $('.ag-track-qanda').on("click", function(){
    toggle_function('ag-show-qanda');
  });



});