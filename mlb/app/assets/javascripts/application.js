// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require tether
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

"use strict";

$(function(){
  console.log('players.js loaded.')
  $('form').click(function(event){
    // Issue here with form need to figure out click on button, not click on box

    console.log('click noticed.')
    event.preventDefault();

    var action = $(this).attr('action');

    var age = $(this).find("#age").val();
    var player1 = $(this).find("#player1").val();
    var player2 = $(this).find("#player2").val();

    $.ajax({
    method: "get",
    url: "/players/" + age +"/" + player1 + "/" + player2,
    dataType: "JSON",
      success: function(data){
        var player_1_div = $(`
          <div>
            ${data[0].avg}
          </div>
          `)

        player_1_div.appendTo('body')
        var player_2_div = $(`
          <div>
            ${data[1].avg}
          </div>
          `)

        player_2_div.appendTo('body')
        // Once this is the data you want, play with data, append data to DOM
        document.getElementById("form").reset();
        },
      error: function(data){
        console.log('error with the data...');
        },
    });

  });
});
