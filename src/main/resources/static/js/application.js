$(document).ready(function(){

    bindTextareaInputCounters();
    bindInputCounters();
    bindAdjustableTextAreas();

});


function bindTextareaInputCounters() {
    $('textarea').off('input.val').on('input.val', function () {
        var textarea = $(this);
        var counter = textarea.siblings('.character-counter-text');
        var newText = textarea.attr('maxlength') - textarea.val().length;
        counter.text(newText)
    });
}

function bindInputCounters() {
    $('input[type=\'text\']').off('input.val').on('input.val', function () {
        var input = $(this);
        var counter = input.siblings('.character-counter-title');
        var newText = input.attr('maxlength') - input.val().length;
        counter.text(newText)
    });
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