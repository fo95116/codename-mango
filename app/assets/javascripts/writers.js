// var getWriterDetails = function() {
//         targetId=event.currentTarget.id
//         $.ajax( {
//             url: "/writers/" + targetId,
//             type: "get"
//         } ).done(function(data) {
//                 console.log('got the data')
//                 console.log(data)
//                 } )
// }

$(function(){

    $('.specWriterButton').on("click", function(event){
        targetId=event.currentTarget.id
        $.ajax( {
            url: "/writers/" + targetId,
            type: "get"
        } ).done(function(data) {
            $('.story').empty();
            $('.listTitle').empty()
                for (i=0; i<data.length; i++) {
                        // console.log(data[i])
                        $('.writerList').append('<div class = "story"><h3>'+ data[i].title + ' </h3>')
                        $('.writerList').append('<img src=' + data[i].image_url + '>')
                        $('.writerList').append( data[i].story + '</br></div>')
                }
                $('.listTitle').html('<h3>The Complete Works of ' + data[0].name + '</h3>')
            } );
    });
});

