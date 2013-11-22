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
                console.log('got the data')
                console.log(data)
                } )


    });
});

