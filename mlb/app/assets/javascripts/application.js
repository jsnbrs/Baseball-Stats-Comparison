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
//= require Chart
//= require_tree .

"use strict";

$(function(){

  function makeChart(firstPlayer, secondPlayer){
      var radarChartData = {
    labels: ["HOME RUNS", "WALKS", "RUNS", "STRIKE OUTS", "RBI"],
    datasets: [
      {
        label: "Player One",
        fillColor: "rgba(220,220,220,0.2)",
        strokeColor: "rgba(220,220,220,1)",
        pointColor: "rgba(220,220,220,1)",
        pointStrokeColor: "#fff",
        pointHighlightFill: "#fff",
        pointHighlightStroke: "rgba(220,220,220,1)",
        data: [ firstPlayer.hr,
                firstPlayer.bb,
                firstPlayer.r,
                firstPlayer.so,
                firstPlayer.rbi ]
      },
      {
        label: "Player Two",
        fillColor: "rgba(151,187,205,0.2)",
        strokeColor: "rgba(151,187,205,1)",
        pointColor: "rgba(151,187,205,1)",
        pointStrokeColor: "#fff",
        pointHighlightFill: "#fff",
        pointHighlightStroke: "rgba(151,187,205,1)",
        data: [ secondPlayer.hr,
                secondPlayer.bb,
                secondPlayer.r,
                secondPlayer.so,
                secondPlayer.rbi ]
      }
    ]}

      window.myRadar = new Chart(document.getElementById("canvas").getContext("2d")).Radar(radarChartData, {
      responsive: true
      });

  } // makeChart


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
        $('.json').empty();

        var player_1_div1 = $(`
          <div class="json">${data[0].pa}</div>
          `).appendTo( '#pa1' );
        var player_1_div2 = $(`
          <div class="json">${data[0].avg}</div>
          `).appendTo( '#avg1' );
        var player_1_div3 = $(`
          <div class="json">${data[0].r}</div>
          `).appendTo( '#r1' );
        var player_1_div4 = $(`
          <div class="json">${data[0].hr}</div>
          `).appendTo( '#hr1' );
        var player_1_div5 = $(`
          <div class="json">${data[0].bb}</div>
          `).appendTo( '#bb1' );
        var player_1_div6 = $(`
          <div class="json">${data[0].so}</div>
          `).appendTo( '#so1' );
        var player_1_div7 = $(`
          <div class="json">${data[0].rbi}</div>
          `).appendTo( '#rbi1' );
        var player_1_div8 = $(`
          <div class="json">${data[0].sb}</div>
          `).appendTo( '#sb1' );
        var player_1_div9 = $(`
          <div class="json">${data[0].obp}</div>
          `).appendTo( '#obp1' );
        var player_1_div10 = $(`
          <div class="json">${data[0].slg}</div>
          `).appendTo( '#slg1' );
        var player_1_div11 = $(`
          <div class="json">${data[0].ops}</div>
          `).appendTo( '#ops1' );
        var player_1_div12 = $(`
          <div class="json">${data[0].iso}</div>
          `).appendTo( '#iso1' );

        var player_2_div1 = $(`
          <div class="json">${data[1].pa}</div>
          `).appendTo( '#pa2' );
        var player_2_div2 = $(`
          <div class="json">${data[1].avg}</div>
          `).appendTo( '#avg2' );
        var player_2_div3 = $(`
          <div class="json">${data[1].r}</div>
          `).appendTo( '#r2' );
        var player_2_div4 = $(`
          <div class="json">${data[1].hr}</div>
          `).appendTo( '#hr2' );
        var player_2_div5 = $(`
          <div class="json">${data[1].bb}</div>
          `).appendTo( '#bb2' );
        var player_2_div6 = $(`
          <div class="json">${data[1].so}</div>
          `).appendTo( '#so2' );
        var player_2_div7 = $(`
          <div class="json">${data[1].rbi}</div>
          `).appendTo( '#rbi2' );
        var player_2_div8 = $(`
          <div class="json">${data[1].sb}</div>
          `).appendTo( '#sb2' );
        var player_2_div9 = $(`
          <div class="json">${data[1].obp}</div>
          `).appendTo( '#obp2' );
        var player_2_div10 = $(`
          <div class="json">${data[1].slg}</div>
          `).appendTo( '#slg2' );
        var player_2_div11 = $(`
          <div class="json">${data[1].ops}</div>
          `).appendTo( '#ops2' );
        var player_2_div12 = $(`
          <div class="json">${data[1].iso}</div>
          `).appendTo( '#iso2' );


        // Once this is the data you want, play with data, append data to DOM
        makeChart(data[0], data[1]);


        document.getElementById("form").reset();
        },
      error: function(data){
        console.log('error with the data...');
        },
    });

  });
});
