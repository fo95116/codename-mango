# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(function(){

    $('.postButton').on("click", function(event){
        targetId=event.currentTarget.id
        $.ajax( {
            url: "/images/" + targetId,
            type: "get"
        } ).done(function(data) {
            $('.imagForNewNar').empty();
                        $('.imagForNewNar').html('<img src=' + data[i].image_url + '>')
            }
    });
});
