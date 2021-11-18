$(document).ready(function(){

    $('#choseFileButton').on('click', function(){
        $('#profilePic').trigger('click');
    });

    $('.alert').each(function (i, object) {
        var input = $(this).siblings("input");
        input.css('background-color', 'red').animate({backgroundColor: 'white' }, { duration: 2000 });
    });

});

var loadFile = function(event) {
    var output = document.getElementById('filePreview');
    output.src = URL.createObjectURL(event.target.files[0]);
    output.setAttribute('width', 125);
    output.setAttribute('height', 125);
    $('#choseFileLabel')[0].innerText = event.target.files[0].name;
    output.onload = function() {
        URL.revokeObjectURL(output.src) // free memory
    }
};

/**
  * Conserve aspect ratio of the original region. Useful when shrinking/enlarging
  * images to fit into a certain area.
  *
  * @param {Number} srcWidth width of source image
  * @param {Number} srcHeight height of source image
  * @param {Number} maxWidth maximum available width
  * @param {Number} maxHeight maximum available height
  * @return {Object} { width, height }
  */
function calculateAspectRatioFit(srcWidth, srcHeight, maxWidth, maxHeight) { // TODO use this
    var ratio = Math.min(maxWidth / srcWidth, maxHeight / srcHeight);
    return { width: srcWidth*ratio, height: srcHeight*ratio };
 }