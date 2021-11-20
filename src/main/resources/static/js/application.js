$(document).ready(function(){

    bindTextareaInputCounters();
    bindInputCounters();

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