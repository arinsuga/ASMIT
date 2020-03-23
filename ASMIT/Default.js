$(document).ready(function() {

    // Initialize UI
    initUIStandard();

    // Initialize the object, before adding data to it.
    //  { } is declarative shorthand for new Object().
    var voFormData = {};
    var DTO;
    getFormValue();

    //Function load form value
    function getFormValue() {
        //Value to pass

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
