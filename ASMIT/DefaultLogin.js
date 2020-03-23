$(document).ready(function() {

    // Initialize UI
    initUIStandard();

    // Initialize the object, before adding data to it.
    //  { } is declarative shorthand for new Object().
    var voFormData = {};
    var DTO;
    getFormValue();
    $("#LoadingLogin").hide();

    //Add the page method call as an onclick handler for the div.
    $("#cmdLogin").click(function() {
        if (($("#fldUserID").val() != "") && ($("#fldPassword").val() != "")) {
            getFormValue();
            doValidate(DTO);
        } //End if
    });

    //Search Textbox Event
    $('#fldUserID').keypress(function(event) {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode == '13') {
            if (($("#fldUserID").val() != "") && ($("#fldPassword").val() != "")) {
                getFormValue();
                doValidate(DTO);
            } //End if
        } //End if
    }); //End keypress

    //Search Textbox Event
    $('#fldPassword').keypress(function(event) {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode == '13') {
            if (($("#fldUserID").val() != "") && ($("#fldPassword").val() != "")) {
                getFormValue();
                doValidate(DTO);
            } //End if
        } //End if
    }); //End keypress

    //Function load form value
    function getFormValue() {
        //Value to pass
        voFormData.USR_ID = $("#fldUserID").val();
        voFormData.USR_PSWD = $("#fldPassword").val();

        //Return value
        voFormData.IS_VALID = "N";
        voFormData.RSLT_NO = "0";
        voFormData.RSLT_MSG = "";
        voFormData.RSLT_URL = "";

        // Create a data transfer object (DTO) with the proper structure.
        DTO = { 'voFormData': voFormData };
    } //End function getFormValue

    //Function initialize UI
    function initUI() {
        // Dialog Error
        $('#DialogError').dialog({
            autoOpen: false,
            width: 400,
            buttons: {
                "Ok": function() {
                    $(this).dialog("close");
                }
            }
        });
        // Dialog Information
        $('#DialogInformation').dialog({
            autoOpen: false,
            width: 400,
            buttons: {
                "Ok": function() {
                    $(this).dialog("close");
                }
            }
        });
    } //End function initUI
});
