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
        }, 200);
    });

    window.addEventListener('resize', resizeAll);

    gallery.querySelectorAll('.gallery-item').forEach(function (item) {
        item.addEventListener('click', function () {
            item.classList.toggle('full');
        });
        Hammer(item).on("swiperight", function() { handleSwipe(item, 'right'); });
        Hammer(item).on("swipeleft", function() { handleSwipe(item, 'left'); });
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

function handleSwipe(currentItem, swipeDirection) {
    const currentIndex = parseInt(currentItem.id.split('-')[1]);
    const nextIndex = currentIndex + ((swipeDirection === 'right')? -1 : 1)
    const nextGalleryItemId = "galleryitem-" + nextIndex;
    let nextGalleryItem = $('#'+nextGalleryItemId);

    if (nextGalleryItem != null) {
        currentItem.classList.remove('full');
        console.log("Changing to image: " +nextGalleryItemId);
        nextGalleryItem.toggleClass('full');
    }
}

