// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require magellan-foundation
//= require bootstrap-sprockets
//= require doubletaptogo
//= require colorbox
//= require isotope
//= require bootstrap
//= require sweetalert
//= require validate
//= require turbolinks
//= require_tree .



$(document).foundation({
"magellan-expedition": {
  active_class: 'ag-active', // specify the class used for active sections
  threshold: 0, // how many pixels until the magellan bar sticks, 0 = auto
  destination_threshold: 20, // pixels from the top of destination for it to be considered active
  throttle_delay: 50, // calculation throttling to increase framerate
  fixed_top: 0, // top distance in pixels assigend to the fixed element on scroll
  offset_by_height: true // whether to offset the destination by the expedition height. Usually you want this to be true, unless your expedition is on the side.
}
});

$(document).foundation('reveal', {
  animation: 'fadeAndPop',
  animation_speed: 250,
  close_on_background_click: true,
  dismiss_modal_class: 'close-reveal-modal',
  multiple_opened: false,
  bg_class: 'reveal-modal-bg',
  root_element: 'body',
  bg : $('.reveal-modal-bg'),
  css : {
    open : {
      'opacity': 0,
      'visibility': 'visible',
      'display' : 'block'
    },
    close : {
      'opacity': 1,
      'visibility': 'hidden',
      'display': 'none'
    }
  }
}

);

$(document).foundation('magellan', 'reflow');

