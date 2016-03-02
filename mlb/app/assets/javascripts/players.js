"use strict";

$(document).ready(function(){
  console.log('players.js loaded.')
  $('#age-form').submit(function(event){

    var form = $(this).parent('form');
    console.log('click noticed.')
// debugger
    event.preventDefault();

    var age = $("#age").val();
    var player1 = $("#player1").val();
    var player2 = $("#player2").val();

    $.ajax({
      url: '/players?utf8=%E2%9C%93&age=' + age +'&search1=' + player1 + '&search2=' + player2,
      type: 'get',
      dataType: 'html',
      form.attr('action'),
      data: form.serialize(),
      success: function(data){
          console.log(data.name);
        },
      error: function(data){
        console.log('error with the data...');
      },
      dataType: 'JSON'
    });
  });
});