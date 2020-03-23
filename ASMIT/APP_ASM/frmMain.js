$(document).ready(function () {
    //UI Initialize
    initUIStandard();
    initUIStandardApp();
    

    // Initialize the object, before adding data to it.
    //  { } is declarative shorthand for new Object().
    var voFormData = {};
    var DTO;

    vsSearchValue = new Array();
    vsSearchValue[0] = "";
    showList("#divforTableSummaryAsset1", "LST_CHART_ASMSUMMARY_ASSET_BYSTS", "", vsSearchValue,
         "", "", "");
    ChartPieShow("#divforchartSummaryAsset2", "LST_CHART_ASMSUMMARY_ASSET_BYSTS", "", vsSearchValue,
         "", "", "");

});              //End $(document).ready

