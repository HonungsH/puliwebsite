$(document).ready(function(){

        $(".editIcon").on("click", function() {
            var editIcon = $(this);
            var editBox = editIcon.parent();
            var field = editBox.find(".editableField");
            var submitIcon = editBox.find(".submitIcon");
            field.attr("contenteditable", true);
            field.addClass("border");
            field.addClass("border-info");
            field.addClass("rounded");
            editIcon.hide();
            submitIcon.show();
        });

        $(".submitIcon").on("click", function() {
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
            }}); // TODO fejlhåndtering
        });

        $(".editableField").keydown(function(e) {
            if (e.ctrlKey && event.keyCode === 13) {
                $(".submitIcon").click();
            }
        });
});