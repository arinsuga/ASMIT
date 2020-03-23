//Function form validation
function doValidate(poDTO) {
    $("#LoadingLogin").show();
    $("#cmdLogin").attr("disabled", "disabled");
    $.ajax({
        type: getAJAXType1(),
        contentType: getAJAXContentType1(),
        url: "Default.asmx/isValidLoginHRIS",
        data: JSON.stringify(poDTO),
        dataType: getAJAXDataType1(),
        success: function(msg) {
            vResult = msg.d;
        },
        complete: function(msg) {
        $("#LoadingLogin").hide();
        $("#cmdLogin").removeAttr("disabled");
        if (vResult != null) {
                if (vResult.IS_VALID == getFlagValid()) {
                    //                    $('#DialogInformationMsg').text(vResult.RSLT_MSG);
                    //                    $('#DialogInformation').dialog('open');
                    window.location.href = vResult.RSLT_URL;
                }
                else {
                    //$('#DialogInformationMsg').text(vResult.RSLT_MSG);
                    $('#DialogInformationMsg').html(vResult.RSLT_MSG);
                    $('#DialogInformation').dialog('open');
                } //End if
            } //End if
            
        },
        error: function() {
            $('#DialogErrorMsg').text(vResult.RSLT_MSG);
            $('#DialogError').dialog('open');
        }
    });
} //End function doValidate
