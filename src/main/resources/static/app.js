$(document).ready(function(){

        $(".editIcon").on("click", function() {
            var editIcon = $(this);
            var editBox = editIcon.parent();
            var field = editBox.find(".editableField");
            var submitIcon = editBox.find(".submitButton");
            field.attr("contenteditable", true);
            field.addClass("border");
            field.addClass("border-info");
            field.addClass("rounded");
            editIcon.hide();
            submitIcon.show();
        });

        $(".submitButton").on("click", function() {
            var submitIcon = $(this);
            var editBox = submitIcon.parent();
            var field = editBox.find(".editableField");
            var editIcon = editBox.find(".editIcon");

            $.ajax({
            url: "/text/saveText",
            type: "POST",
            data: {
                group: $("#pageGroup").val(),
                textKey: $("#textKey").val(),
                text: field[0].innerHTML
            },
            success: function(result){
                field.attr("contenteditable", false);
                field.removeClass("border");
                field.removeClass("border-info");
                field.removeClass("rounded");
                editIcon.show();
                submitIcon.hide();
            },
            error: function(xhr) {
                alert('Request Status: ' + xhr.status + ' Status Text: ' + xhr.statusText + ' ' + xhr.responseText);
            }
            }); // TODO fejlhåndtering
        });

        $(".editableField").keydown(function(e) {
            if (e.ctrlKey && event.keyCode === 13) {
                $(this).parent().find(".submitIcon").click();
            }
        });
});