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
        const numberOfImages = parseInt($("#numberOfImages").val());
        item.addEventListener('click', function () {

            // Show picture full screen
            item.classList.toggle('full');

            // Reset slider
            resetSliderButtons(parseInt(item.dataset.pos), numberOfImages);
        });
        Hammer(item).on("swiperight", function() { handleSwipe(item, 'right'); });
        Hammer(item).on("swipeleft", function() { handleSwipe(item, 'left'); });
    });

    $('.gallery-arrow').on('click', function() {
        if ($(this).attr('id') === "gallery-arrow-left") {
            $('#slider-buttons-3').click();
        } else {
            $('#slider-buttons-5').click();
        }
    })

    $('#gallery-close-icon').on('click', function() {
        $('body').click();
    });

    $(".indicator-b-outer, .indicator-b-inner").on('click', function() {
        const posChange = parseInt($(this).data("pos"));

        let currentGalleryItem = $(".full");
        const currentIndex = parseInt(currentGalleryItem.data("pos"));
        const nextIndex = posChange + currentIndex;
        const nextGalleryItemId = "galleryitem-" + nextIndex;

        let nextGalleryItem = $('#'+nextGalleryItemId);

        if (nextGalleryItem.length !== 0) {
            $('.indicator-b').each( function() {
                let sliderButton = $(this);
                const sliderPS = parseInt($(this).data("pos"));

                const float = parseFloat($(this).css("opacity"));
                const newFloat = (sliderPS === 0)?
                    ((posChange < 0)? float - 0.33 : float + 0.33)
                    : (sliderPS * posChange < 0)? float - 0.33 : float + 0.33;

                if (posChange < 0) {
                    animateRight(sliderButton, float, newFloat, currentGalleryItem, nextGalleryItem);
                } else {
                    animateLeft(sliderButton, float, newFloat, currentGalleryItem, nextGalleryItem);
                }
            });
        }
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

    $('body').on('click', function() {
        if ($('.full').length === 0) {
            $('#slider-indicators').hide();
            $('.gallery-arrow').hide();
            $('#gallery-close-icon').hide();
        }
    });
};

function handleSwipe(currentItem, swipeDirection) {
    const currentIndex = parseInt(currentItem.id.split('-')[1]);
    const nextIndex = currentIndex + ((swipeDirection === 'right')? -1 : 1)
    const numberOfImages = parseInt($("#numberOfImages").val());

    if (nextIndex >= 0 && nextIndex < numberOfImages) {
        if (swipeDirection === 'right') {
            $('#slider-buttons-3').click();
        } else {
            $('#slider-buttons-5').click();
        }
    }
}

function resetSliderButtons(index, numberOfImages) {
    let sliderButtons = $(".indicator-b");

    // Reset button visible
    sliderButtons.not(".indicator-b-hidden").css('visibility', 'visible');
    if( !/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
        // Only show arrows when not on mobile
        $('.gallery-arrow').show();
    }

    // Show slider button div
    $('#slider-indicators').show();
    $('#gallery-close-icon').show();

    switch (index) {
        case 0:
            $(".indicator-b-l").css('visibility', 'hidden');
            $("#gallery-arrow-left").hide();
            break;
        case 1:
            $(".indicator-b-l.indicator-b-outer").css('visibility', 'hidden');
            break;
        case (numberOfImages - 2):
            $(".indicator-b-r.indicator-b-outer").css('visibility', 'hidden');
            break;
        case (numberOfImages - 1):
            $(".indicator-b-r").css('visibility', 'hidden');
            $("#gallery-arrow-right").hide();
            break;
    }
}

function animateRight(sliderButton, float, newFloat, currentGalleryItem, nextGalleryItem) {
    sliderButton.animate({
        right: "-=60px",
        opacity: newFloat,
    }, 200, function() {
        sliderButton.css('opacity', '');
        sliderButton.css('right', '');
        currentGalleryItem.removeClass('full');
        nextGalleryItem.click();
    });
}

function animateLeft(sliderButton, float, newFloat, currentGalleryItem, nextGalleryItem) {
    sliderButton.animate({
        right: "+=60px",
        opacity: newFloat,
    }, 200, function() {
        sliderButton.css('opacity', '');
        sliderButton.css('right', '');
        currentGalleryItem.removeClass('full');
        nextGalleryItem.click();
    });
}