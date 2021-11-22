window.onload = function() {


    var gallery = document.querySelector('#gallery');
    var getVal = function (elem, style) { return parseInt(window.getComputedStyle(elem).getPropertyValue(style)); };
    var getHeight = function (item) { return item.querySelector('.content').getBoundingClientRect().height; };

    var resizeAll = function () {
        var altura = getVal(gallery, 'grid-auto-rows');
        var gap = getVal(gallery, 'grid-row-gap');
        gallery.querySelectorAll('.gallery-item').forEach(function (item) {

            var el = item;
            el.style.gridRowEnd = "span " + Math.ceil((getHeight(item) + gap) / (altura + gap));
        });
    };

    gallery.querySelectorAll('img').forEach(function (item) {
        setTimeout( function () {
                var altura = getVal(gallery, 'grid-auto-rows');
                var gap = getVal(gallery, 'grid-row-gap');
                var gitem = item.parentElement.parentElement;
                console.log(Math.ceil((getHeight(gitem) + gap) / (altura + gap)));
                gitem.style.gridRowEnd = "span " + Math.ceil((getHeight(gitem) + gap) / (altura + gap));
        }, 50);
    });

    window.addEventListener('resize', resizeAll);

    gallery.querySelectorAll('.gallery-item').forEach(function (item) {
        item.addEventListener('click', function () {
            item.classList.toggle('full');
        });
    });


    $('#deleteAlbumButton').on('click', function() {// TODO felhantering
        if (confirm('Är du säker på att du vill ta bort detta album?')) {
            $.ajax({
                url: "/bilder/taBortAlbum",
                type: "POST",
                data: {
                    albumTitle: $('#albumTitleHidden').val()
                },
                success: function() {
                    location.href = "/bilder";
                }
            });
        }
    });
};

