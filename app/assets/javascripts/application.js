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

$(function() {
  var reset_time = $("#time").val();
  // console.log(reset_time.split(' '));
  $('#sinceCompact').countdown({since: '-' + reset_time.split(' ')[5] + 'm '+ '-' + reset_time.split(' ')[6] + 's', compact: true,
    format: 'MS', description: ''});

  $("#submit").click(function() {
    var time = $('#sinceCompact').countdown('getTimes');
    $("#time").val(time);
  });

  $("#enter_arena").hide();
  $("#exit_arena").click(function(){
    $("#enter_arena").show();
    $("#exit_arena").hide();
  });

  $("#enter_arena").click(function(){
    $("#enter_arena").hide();
    $("#exit_arena").show();
  });


  // $("tr:odd").css("background-color", "#ffad33");

});