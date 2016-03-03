"use strict";

$(function(){
  console.log('players.js loaded.')
  $('form').click(function(event){

    console.log('click noticed.')
// debugger
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
        console.log(data);
        },
      error: function(data){
        console.log('error with the data...');
        },
    });

  });
});


    // var age = $("#age").val();
    // var player1 = $("#player1").val();
    // var player2 = $("#player2").val();

    // $.ajax({
      // url: '/players?&age=' + age + '&search1=' + player1 + '&search2=' + player2,
    //   type: 'get',
    //   dataType: 'html',
    //   form.attr('action'),
    //   data: form.serialize(),
    //   success: function(data){
    //       console.log(data.name);
    //     },
    //   error: function(data){
    //     console.log('error with the data...');
    //   },
    //   dataType: 'JSON'
    // });