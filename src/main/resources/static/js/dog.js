$(document).ready(function(){

    $(".editDogButton").click(function() {
        $('.editableField').removeAttr("readonly");
    });

/*    $(".submitButton").on("click", function() {
        var submitIcon = $(this);
        var submitOrCancelRow = submitIcon.closest(".submitOrCancelRow");
        var editBox = submitIcon.closest('.editableBox');
        var field = editBox.find(".editableField");
        var editIcon = editBox.find(".editIcon");

        $.ajax({
            url: "/text/saveText",
            type: "POST",
            data: {
                group: editBox.find(".pageGroup").val(),
                textKey: editBox.find(".textKey").val(),
                text: field[0].innerHTML
            },
            success: function(result){
                field.attr("contenteditable", false);
                field.removeClass("border");
                field.removeClass("border-info");
                field.removeClass("rounded");
                editIcon.show();
                submitOrCancelRow.hide();

                var savedText = editBox.find(".savedText");
                savedText.val(field[0].innerHTML);
            },
            error: function(xhr) {
                editBox.find(".fa-exclamation-triangle").show();
                console.log('Request Status: ' + xhr.status + ' Status Text: ' + xhr.statusText + ' ' + xhr.responseText);
            }
        });
    });*/

/*    $(".cancelButton").on("click", function() {
        var cancelButton = $(this);
        var submitOrCancelRow = cancelButton.closest(".submitOrCancelRow");
        var editBox = cancelButton.closest('.editableBox');
        var field = editBox.find(".editableField");
        var savedText = editBox.find(".savedText");
        var editIcon = editBox.find(".editIcon");
        var errorText = editBox.find(".fa-exclamation-triangle");

        field.attr("contenteditable", false);
        field.removeClass("border");
        field.removeClass("border-info");
        field.removeClass("rounded");
        field.html(savedText.val());
        editIcon.show();
        submitOrCancelRow.hide();
        errorText.hide();

    });

    $(".editableField").keydown(function(e) {
        if (e.ctrlKey && event.keyCode === 13) {
            $(this).parent().find(".submitIcon").click();
        }
    });*/
});