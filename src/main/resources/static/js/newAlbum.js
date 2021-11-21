window.onload = function () {
    if ($('#albumTitleHidden').val() === "") {
        $('#newAlbumModal').modal('show');
    }
};

$(document).ready(function(){

    $('#newAlbumSubmitButton').on('click', function() {// TODO felhantering
        const title = $('#albumTitleInput').val();
        $('#albumTitleHidden').val(title);
        $('#albumTitle').html(title);
        $('#newAlbumModal').modal('hide');
    });

    $("#albumTitleInput").keyup(function(event) {
        if (event.keyCode === 13) {
            $("#newAlbumSubmitButton").click();
        }
    });

    $('#saveAlbumButton').on('click', function() {// TODO felhantering
        $.ajax({
            url: "/bilder/sparaAlbum",
            type: "POST",
            data: {
                albumTitle: $('#albumTitleHidden').val(),
                description: $('#description').val(),
            },
            success: function(result){
                $(window).unbind('beforeunload');
                location.href = "/bilder";
            }
        });
    });

    $('#cancelAlbumButton').on('click', function() {// TODO felhantering
        if (confirm('Är du säker på att du vill avbryta?')) {
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

    window.addEventListener("beforeunload", function (e) {
        if (confirm('Är du säker på att du vill lämna sidan? \nAlbumet har inte sparats.'))  {
            $.ajax({
                url: "/bilder/taBortAlbum",
                type: "POST",
                data: {
                    albumTitle: $('#albumTitleHidden').val()
                },
                success: function() {
                    return true;
                }
            });
        }
        return false;

    });
});

Dropzone.autoDiscover = false;

var dropzone = new Dropzone('#demo-upload', {
    parallelUploads: 1,
    thumbnailHeight: 120,
    thumbnailWidth: 120,
    maxFilesize: 5,
    filesizeBase: 1000,
    addRemoveLinks: true,
    dictDefaultMessage: "Dra filer hit",
    dictRemoveFile: "Ta bort"
});

dropzone.on("removedfile", function (file) {
    if (file.name) {
        $.ajax({
            url: "/bilder/taBortBild",
            type: "POST",
            data: {
                title: file.name,
                albumTitle: $('#albumTitleHidden').val()
            },
            success: function() {
                console.log('bild slettet korrekt');
            }
        });
    }
});