$(document).ready(function(){
    $("textarea").each( function() {
        updateCharacterCounter($(this))
    }).off('input.val').on('input.val', function () {
        updateCharacterCounter($(this));
    });

    $('input[type=\'text\']').each( function() {
        updateCharacterCounter($(this))
    }).off('input.val').on('input.val', function () {
        updateCharacterCounter($(this));
    });

    bindAdjustableTextAreas();
});

function updateCharacterCounter(input) {
    var newText = input.attr('maxlength') - input.val().length;
    input.siblings('.character-counter-text').text(newText);
}

function bindAdjustableTextAreas() {
    var textAreas = $('.adjustableTextArea');

    textAreas.each( function (i, obj) {
        textAreaAdjust(obj);
    });

    textAreas.keyup( function () {
        textAreaAdjust(this);
    });
}

function textAreaAdjust(element) {
    const scrollLeft = window.pageXOffset ||
        (document.documentElement || document.body.parentNode || document.body).scrollLeft;

    const scrollTop  = window.pageYOffset ||
        (document.documentElement || document.body.parentNode || document.body).scrollTop;

    element.style.height = "1px";
    element.style.height = (Math.max(25+element.scrollHeight, 150))+"px";

    window.scrollTo(scrollLeft, scrollTop);
}