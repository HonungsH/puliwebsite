$(document).ready(function(){

        $(".editIcon").on("click", function() {
            var editIcon = $(this);
            var editBox = editIcon.parent();
            var field = editBox.find(".editableField");
            var submitOrCancelRow = editBox.find(".submitOrCancelRow");
            field.attr("contenteditable", true);
            field.addClass("border");
            field.addClass("border-info");
            field.addClass("rounded");
            editIcon.hide();
            submitOrCancelRow.show();
        });

        $(".submitButton").on("click", function() {
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
            },
            error: function(xhr) {
                alert('Request Status: ' + xhr.status + ' Status Text: ' + xhr.statusText + ' ' + xhr.responseText);
            }
            }); // TODO fejlhåndtering
        });

        $(".cancelButton").on("click", function() {
            var cancelButton = $(this);
            var submitOrCancelRow = cancelButton.closest(".submitOrCancelRow");
            var editBox = cancelButton.closest('.editableBox');
            var field = editBox.find(".editableField");
            var originalText = editBox.find(".originalText");
            var editIcon = editBox.find(".editIcon");

            field.attr("contenteditable", false);
            field.removeClass("border");
            field.removeClass("border-info");
            field.removeClass("rounded");
            field.html(originalText.val());
            editIcon.show();
            submitOrCancelRow.hide();

        });

        $(".editableField").keydown(function(e) {
            if (e.ctrlKey && event.keyCode === 13) {
                $(this).parent().find(".submitIcon").click();
            }
        });
});