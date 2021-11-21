$(document).ready(function(){

    $('.card').on( 'click', function() {
        const albumTitle = $(this).find('.albumTitle');
        window.location = "/bilder/album/" + albumTitle.text().trim();
    });
});

