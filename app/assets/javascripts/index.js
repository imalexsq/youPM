// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function () {

  // bind tooltips
  $('[rel=twipsy]').twipsy({live: true});

  // popovers
  $('[rel=popover]').popover({offset: 10});

});