$(document).ready(function(){

    bindTextareaInputCounters();

});


function bindTextareaInputCounters() {
    $('textarea').off('input.val').on('input.val', function () {
        var textarea = $(this);
        var counter = textarea.siblings('.character-counter-text');
        var newText = textarea.attr('maxlength') - textarea.val().length;
        counter.text(newText)
    });
}