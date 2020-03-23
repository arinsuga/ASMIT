//Function form validation
function doValidate(poDTO) {
    $("#LoadingChangePassword").show();
    $("#cmdChangePassword").attr("disabled", "disabled");
    $.ajax({
        type: getAJAXType1(),
        contentType: getAJAXContentType1(),
        url: "Default.asmx/ChangePasswordHRIS",
        data: JSON.stringify(poDTO),
        dataType: getAJAXDataType1(),
        success: function(msg) {
            vResult = msg.d;
        },
        complete: function(msg) {
        $("#LoadingChangePassword").hide();
            $("#cmdChangePassword").removeAttr("disabled");
            if (vResult != null) {
                if (vResult.IS_VALID == getFlagValid()) {
                    window.location.href = vResult.RSLT_URL;
                }
                else {
                    $('#DialogInformationMsg').html(vResult.RSLT_MSG);
                    $('#DialogInformation').dialog('open');
                } //End if
            } //End if

        },
        error: function() {
            $('#DialogErrorMsg').text(vResult.RSLT_MSG);
            $('#DialogError').dialog('open');
        }
    }); //End AJAX
} //End function doValidate
function CancelChangePassword() {
    $.ajax({
        type: getAJAXType1(),
        contentType: getAJAXContentType1(),
        url: "Default.asmx/getURLMainHRIS",
        dataType: getAJAXDataType1(),
        success: function(msg) {
            vResult = msg.d;
        },
        complete: function(msg) {
            window.location.href = vResult;
        },
        error: function() {
        }
    });  //End AJAX
    
} //End function CancelChangePassword