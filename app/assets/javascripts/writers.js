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
            $('.specWriterStories').empty();
            $('#listTitle').empty();
                for (i=0; i<data.length; i++) {
                        // console.log(data[i])
                        $('.specWriterStories').append('<div class = "story"><h3 id="storytitle">'+ data[i].title + ' </h3>')
                        $('.specWriterStories').append('<img src=' + data[i].image_url + '></br>')
                        $('.specWriterStories').append('<p> ' + data[i].story + '</p></br></div>')

                }
                $('#listTitle').html('<h3>The Complete Works of ' + data[0].name + '</h3>')
            } );
    });
});

