$(document).ready(function() {
    //UI Initialize
    initUIStandard();
    initUIStandardApp();

    // Initialize the object, before adding data to it.
    //  { } is declarative shorthand for new Object().
    var voFormData = {};
    var DTO;

    //Show List Data
    vsSearchValue = new Array();
    vsSearchValue[0] = "";
    //showListNoData("#divforgrdList", "LST_ASMRPT_ASSET", vsSearchValue);
    showList("#divforgrdList", "LST_ASMRPT_ASSET", "", vsSearchValue,
         "", "", "");


});

