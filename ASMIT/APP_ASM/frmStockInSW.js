$(document).ready(function () {
    //UI Initialize
    initUIStandard();
    initUIStandardApp();
    MultiplyMe("#fldTRN_AMNT", "#fldTRN_QTY", "#fldTRN_PRICE");

    // Initialize the object, before adding data to it.
    //  { } is declarative shorthand for new Object().
    var voFormDataSW = {};
    var DTO;
    var vsActType = "VIEW";
    getFormValue();
    setStateView();

    //Command CRUD
    $("#cmdNew").click(function () {
        $("#cmdReset").click();
        setStateNew();
        vsActType = "NEW";
        $("#fldPROD_ITMNO").focus();
    });
    //Command CRUD
    $("#cmdEdit").click(function () {
        vsActType = "EDIT";
        setStateEdit();
    });
    //Command CRUD
    $("#cmdDelete").click(function () {
        getFormValue();
        doDeleteData();
    });
    //Command CRUD
    $("#cmdSave").click(function () {

        getFormValue();
        if (vsActType == "NEW") {
            if (doInsertData() == "Y") { setStateView(); }
        }
        if (vsActType == "EDIT") {
            if (doUpdateData() == "Y") { setStateView(); }
        }

    });
    //Command CRUD
    $("#cmdReset").click(function () {
        vsActType = "VIEW";
        resetMandatoryInfo();
        setStateView();

        resetMandatoryInfo();
        resetMandatoryValue();
    });
    //Command CRUD
    $("#cmdClose").click(function () {
    });

    //Command LookUp
    $('#LKP_MAIN_BIZ_PNR_RUID').click(function () {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_RESOURCE_SAPVENDOR', '#imgMAIN_BIZ_PNR_RUID', vsSearchValue, '#fldMAIN_BIZ_PNR_RUID', '', '#fldMAIN_BIZ_PNR_RUIDx');
    });

    //Command LookUp
    $('#LKP_PROD_SUBCTGRY').click(function () {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "SOFTWARE";
        showLookup('LKP_ASMLOV_CMPNT_SUBCTGRY', '#imgPROD_SUBCTGRY', vsSearchValue, '', '#fldPROD_SUBCTGRY', '#fldPROD_SUBCTGRYx');
    });
    //Command LookUp Component Type
    $('#LKP_MAIN_PROD_TYP').click(function () {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";  //$('#fldPROD_SUBCTGRY').val();
        showLookup('LKP_ASMLOV_CMPNT_TYP_SW', '#imgMAIN_PROD_TYP', vsSearchValue, '#fldMAIN_PROD_TYP', '#fldMAIN_PROD_SUBCTGRY', '#fldMAIN_PROD_TYPx');
    });
    //Command LookUp Component Type
    $('#LKP_MAIN_PBLSHR').click(function () {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";  //$('#fldPROD_SUBCTGRY').val();
        showLookup('LKP_ASMLOV_PBLSHR_SW', '#imgMAIN_PBLSHR', vsSearchValue, '#fldMAIN_PBLSHR_RUID', '', '#fldMAIN_PBLSHR_NM');
    });
    //Command LookUp
    $('#LKP_TRN_NO').click(function () {
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMTRN_STOCKIN', '', vsSearchValue, '#fldRUID', '#fldTRN_NO', '');
    });

    //Command LookUp
    $('#LKP_MAIN_PROD_ITMNO').click(function () {
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMTRN_STOCKINSW_BYSN', '#imgMAIN_PROD_ITMNO', vsSearchValue, '#fldRUID', '#fldMAIN_PROD_ITMNO', '#fldMAIN_PROD_TYPx');
    });

    $('#cmdBrowseByTRN_NO').click(function () {
        if ($("#fldRUID") != "") {
            getDBValueByRUID($('#fldRUID').val());
        }
    });
    $('#cmdBrowseByMAIN_PROD_ITMNO').click(function () {
        if ($("#fldRUID").val() != "") {
            setStateReadyEditDelete();
            getDBValueByRUID($('#fldRUID').val());
        }
    });

    function getDBValueByRUID(psRUID) {
        var vsURL = "frmStockIn.asmx/doPopDataByRUIDSW";
        var DTOx = { 'psRUID': psRUID };
        $.ajax({
            type: getAJAXType1(),
            contentType: getAJAXContentType1(),
            url: vsURL,
            data: JSON.stringify(DTOx),
            dataType: getAJAXDataType1(),
            success: function (msg) {
                vReturn = true;
                voMsg = msg.d;
                setFormValue(voMsg)
            },
            error: function () {
            }
        });
    }

    //Function set form value
    function setFormValue(poMsg) {
        //SW Field
        $("#fldADTRL_WKS").val(poMsg.fldADTRL_WKS);
        $("#fldADTRL_IP").val(poMsg.fldADTRL_IP);
        $("#fldADTRL_USR").val(poMsg.fldADTRL_USR);
        $("#fldADTRL_PRG").val(poMsg.fldADTRL_PRG);
        $("#fldADTRL_DT").val(poMsg.fldADTRL_DT);
        $("#fldRSEQNO").val(poMsg.fldRSEQNO);
        $("#fldRUID").val(poMsg.fldRUID);
        $("#fldDTA_STS").val(poMsg.fldDTA_STS);
        $("#fldTRIN_RUID").val(poMsg.fldTRIN_RUID);
        $("#fldVERSION").val(poMsg.fldVERSION);
        $("#fldSUBSCRIPTION_SN").val(poMsg.fldSUBSCRIPTION_SN);
        $("#fldSUBSCRIPTION_VER").val(poMsg.fldSUBSCRIPTION_VER);
        $("#fldREQUEST_CODE").val(poMsg.fldREQUEST_CODE);
        $("#fldPRODUCT_ID").val(poMsg.fldPRODUCT_ID);
        $("#fldACTIVATION_CODE").val(poMsg.fldACTIVATION_CODE);
        $("#fldLICENSE_START_DT").val(poMsg.fldLICENSE_START_DT);
        $("#fldLICENSE_END_DT").val(poMsg.fldLICENSE_END_DT);
        $("#fldADTRL_USR_UPD").val(poMsg.fldADTRL_USR_UPD);
        $("#fldADTRL_DT_UPD").val(poMsg.fldADTRL_DT_UPD);
        //Main Field
        $("#fldMAIN_RSEQNO").val(poMsg.fldMAIN_RSEQNO);
        $("#fldMAIN_RUID").val(poMsg.fldMAIN_RUID);
        $("#fldMAIN_PROD_CTGRY").val(poMsg.fldMAIN_PROD_CTGRY);
        $("#fldMAIN_PROD_CTGRY_NM").val(poMsg.fldMAIN_PROD_CTGRY_NM);
        $("#fldMAIN_PROD_SUBCTGRY").val(poMsg.fldMAIN_PROD_SUBCTGRY);
        $("#fldMAIN_PROD_SUBCTGRY_NM").val(poMsg.fldMAIN_PROD_SUBCTGRY_NM);
        $("#fldMAIN_PROD_TYP").val(poMsg.fldMAIN_PROD_TYP);
        $("#fldMAIN_PROD_TYPx").val(poMsg.fldMAIN_PROD_TYP_NM);
        $("#fldMAIN_PROD_TYP_NM").val(poMsg.fldMAIN_PROD_TYP_NM);
        $("#fldMAIN_PROD_SUBTYP1").val(poMsg.fldMAIN_PROD_SUBTYP1);
        $("#fldMAIN_PROD_SUBTYP2").val(poMsg.fldMAIN_PROD_SUBTYP2);
        $("#fldMAIN_PROD_SUBTYP3").val(poMsg.fldMAIN_PROD_SUBTYP3);
        $("#fldMAIN_PROD_SUBTYP4").val(poMsg.fldMAIN_PROD_SUBTYP4);
        $("#fldMAIN_PROD_SUBTYP5").val(poMsg.fldMAIN_PROD_SUBTYP5);
        $("#fldMAIN_PROD_ITMNO").val(poMsg.fldMAIN_PROD_ITMNO);
        $("#fldMAIN_PBLSHR_RUID").val(poMsg.fldMAIN_PBLSHR_RUID);
        $("#fldMAIN_PBLSHR_NM").val(poMsg.fldMAIN_PBLSHR_NM);
        $("#fldMAIN_BIZ_PNR_RUID").val(poMsg.fldMAIN_BIZ_PNR_RUID);
        $("#fldMAIN_BIZ_PNR_RUIDx").val(poMsg.fldMAIN_BIZ_PNR_NM);
        $("#fldMAIN_BIZ_PNR_NM").val(poMsg.fldMAIN_BIZ_PNR_NM);
        $("#fldMAIN_PO_NO").val(poMsg.fldMAIN_PO_NO);
        $("#fldMAIN_WO_NO").val(poMsg.fldMAIN_WO_NO);
        $("#fldMAIN_TRN_DT").val(poMsg.fldMAIN_TRN_DT);
        $("#fldMAIN_TRN_NO").val(poMsg.fldMAIN_TRN_NO);
        $("#fldMAIN_TRN_QTY").val(poMsg.fldMAIN_TRN_QTY);
        $("#fldMAIN_TRN_PRICE").val(poMsg.fldMAIN_TRN_PRICE);
        $("#fldMAIN_TRN_AMNT").val(poMsg.fldMAIN_TRN_AMNT);
        $("#fldPROD_NM").val(poMsg.fldPROD_NM);

    }
    //Function load form value
    function getFormValue() {

        //SW Field
        voFormDataSW.fldADTRL_WKS = $("#fldADTRL_WKS").val();
        voFormDataSW.fldADTRL_IP = $("#fldADTRL_IP").val();
        voFormDataSW.fldADTRL_USR = $("#fldADTRL_USR").val();
        voFormDataSW.fldADTRL_PRG = $("#fldADTRL_PRG").val();
        voFormDataSW.fldADTRL_DT = $("#fldADTRL_DT").val();
        voFormDataSW.fldRSEQNO = $("#fldRSEQNO").val();
        voFormDataSW.fldRUID = $("#fldRUID").val();
        voFormDataSW.fldDTA_STS = $("#fldDTA_STS").val();
        voFormDataSW.fldTRIN_RUID = $("#fldTRIN_RUID").val();
        voFormDataSW.fldVERSION = $("#fldVERSION").val();
        voFormDataSW.fldSUBSCRIPTION_SN = $("#fldSUBSCRIPTION_SN").val();
        voFormDataSW.fldSUBSCRIPTION_VER = $("#fldSUBSCRIPTION_VER").val();
        voFormDataSW.fldREQUEST_CODE = $("#fldREQUEST_CODE").val();
        voFormDataSW.fldPRODUCT_ID = $("#fldPRODUCT_ID").val();
        voFormDataSW.fldACTIVATION_CODE = $("#fldACTIVATION_CODE").val();
        voFormDataSW.fldLICENSE_START_DT = $("#fldLICENSE_START_DT").val();
        voFormDataSW.fldLICENSE_END_DT = $("#fldLICENSE_END_DT").val();
        voFormDataSW.fldADTRL_USR_UPD = $("#fldADTRL_USR_UPD").val();
        voFormDataSW.fldADTRL_DT_UPD = $("#fldADTRL_DT_UPD").val();
        //Main Field
        voFormDataSW.fldMAIN_RSEQNO = $("#fldMAIN_RSEQNO").val();
        voFormDataSW.fldMAIN_RUID = $("#fldMAIN_RUID").val();
        voFormDataSW.fldMAIN_PROD_CTGRY = $("#fldMAIN_PROD_CTGRY").val();
        voFormDataSW.fldMAIN_PROD_CTGRY_NM = $("#fldMAIN_PROD_CTGRY_NM").val();
        voFormDataSW.fldMAIN_PROD_SUBCTGRY = $("#fldMAIN_PROD_SUBCTGRY").val();
        voFormDataSW.fldMAIN_PROD_SUBCTGRY_NM = $("#fldMAIN_PROD_SUBCTGRY_NM").val();
        voFormDataSW.fldMAIN_PROD_TYP = $("#fldMAIN_PROD_TYP").val();
        voFormDataSW.fldMAIN_PROD_TYP_NM = $("#fldMAIN_PROD_TYP_NM").val();
        voFormDataSW.fldMAIN_PROD_SUBTYP1 = $("#fldMAIN_PROD_SUBTYP1").val();
        voFormDataSW.fldMAIN_PROD_SUBTYP2 = $("#fldMAIN_PROD_SUBTYP2").val();
        voFormDataSW.fldMAIN_PROD_SUBTYP3 = $("#fldMAIN_PROD_SUBTYP3").val();
        voFormDataSW.fldMAIN_PROD_SUBTYP4 = $("#fldMAIN_PROD_SUBTYP4").val();
        voFormDataSW.fldMAIN_PROD_SUBTYP5 = $("#fldMAIN_PROD_SUBTYP5").val();
        voFormDataSW.fldMAIN_PROD_ITMNO = $("#fldMAIN_PROD_ITMNO").val();
        voFormDataSW.fldMAIN_PBLSHR_RUID = $("#fldMAIN_PBLSHR_RUID").val();
        voFormDataSW.fldMAIN_PBLSHR_NM = $("#fldMAIN_PBLSHR_NM").val();
        voFormDataSW.fldMAIN_BIZ_PNR_RUID = $("#fldMAIN_BIZ_PNR_RUID").val();
        voFormDataSW.fldMAIN_BIZ_PNR_NM = $("#fldMAIN_BIZ_PNR_NM").val();
        voFormDataSW.fldMAIN_PO_NO = $("#fldMAIN_PO_NO").val();
        voFormDataSW.fldMAIN_WO_NO = $("#fldMAIN_WO_NO").val();
        voFormDataSW.fldMAIN_TRN_DT = $("#fldMAIN_TRN_DT").val();
        voFormDataSW.fldMAIN_TRN_NO = $("#fldMAIN_TRN_NO").val();
        voFormDataSW.fldMAIN_TRN_QTY = $("#fldMAIN_TRN_QTY").val();
        voFormDataSW.fldMAIN_TRN_PRICE = $("#fldMAIN_TRN_PRICE").val();
        voFormDataSW.fldMAIN_TRN_AMNT = $("#fldMAIN_TRN_AMNT").val();
        voFormDataSW.fldPROD_NM = $("#fldPROD_NM").val();


        // Create a data transfer object (DTO) with the proper structure.
        DTO = { 'voFormDataSW': voFormDataSW };

    }

    //Function form validation
    function isValidEntry() {
        var vReturn;
        vReturn = "Y";

        return vReturn;
    }


    //Function Insert Data
    //    function doInsertData() {
    //        var vReturn = false;
    //        runAJAX_CRUD("frmStockIn.asmx/doInsertData", DTO);
    //        return vReturn;
    //    }

    //Function Insert Data
    function doInsertData() {
        var vReturn = "Y";
        var vsUrl = "frmStockIn.asmx/doInsertDataSW";
        var voDTO = DTO;
        //Open Dialog Progress
        $('#DialogSaveOnProgress').dialog('open');
        //Check Mandatory Field
        var vsIsMandatoryPass = "Y";
        $('#DialogSaveOnProgressMsgx1').text(gsMandatoryCheckMsg);
        vsIsMandatoryPass = isValidMandatory();
        //Check Existing data
        var vsIsNotExistData = "Y";
        $('#DialogSaveOnProgressMsgx1').text(gsRedundancyCheckMsg);
        //vsIsNotExistData = isDataNotExist();
        if ((vsIsMandatoryPass == "Y") && (vsIsNotExistData == "Y")) {
            $('#DialogSaveOnProgressMsgx1').text('');
            $.ajax({
                type: getAJAXType1(),
                contentType: getAJAXContentType1(),
                url: vsUrl,
                data: JSON.stringify(voDTO),
                dataType: getAJAXDataType1(),
                success: function (msg) {
                    voMsg = msg.d;
                },
                complete: function (msg) {
                    $('#DialogSaveOnProgress').dialog('close');
                    if (voMsg.IS_VALID != "Y") {
                        $('#DialogInformationMsg').text(voMsg.RSLT_MSG);
                        $('#DialogInformation').dialog('open');
                    }
                },
                error: function (msg) {
                    //$('#DialogInformationMsg').text(voMsg.RSLT_MSG);
                    $('#DialogInformationMsg').text("AJAX Error parameter");
                    $('#DialogInformation').dialog('open');
                }
            });
        } else {
            vReturn = "N";
            $('#DialogSaveOnProgressMsgx1').text('');
            $('#DialogSaveOnProgress').dialog('close');
        }

        return vReturn;
    }

    //Function Update Data
    //    function doUpdateData() {
    //        var vReturn = false;
    //        runAJAX_CRUD("frmStockIn.asmx/doUpdateData", DTO);
    //        return vReturn;
    //    }

    //Function Update Data
    function doUpdateData() {
        var vReturn = "Y";
        var vsUrl = "frmStockIn.asmx/doUpdateDataSW";
        var voDTO = DTO;
        //Open Dialog Progress
        $('#DialogSaveOnProgress').dialog('open');
        //Check Mandatory Field
        var vsIsMandatoryPass = "Y";
        $('#DialogSaveOnProgressMsgx1').text(gsMandatoryCheckMsg);
        vsIsMandatoryPass = isValidMandatory();
        //Check Existing data
        var vsIsNotExistData = "Y";
        $('#DialogSaveOnProgressMsgx1').text(gsRedundancyCheckMsg);
        //vsIsNotExistData = isDataNotExist();
        if ((vsIsMandatoryPass == "Y") && (vsIsNotExistData == "Y")) {
            $('#DialogSaveOnProgressMsgx1').text('');
            $.ajax({
                type: getAJAXType1(),
                contentType: getAJAXContentType1(),
                url: vsUrl,
                data: JSON.stringify(voDTO),
                dataType: getAJAXDataType1(),
                success: function (msg) {
                    voMsg = msg.d;
                },
                complete: function (msg) {
                    $('#DialogSaveOnProgress').dialog('close');
                },
                error: function () {
                    $('#DialogInformationMsg').text(voMsg.RSLT_MSG);
                    $('#DialogInformation').dialog('open');
                }
            });
        } else {
            vReturn = "N";
            $('#DialogSaveOnProgressMsgx1').text('');
            $('#DialogSaveOnProgress').dialog('close');
        }

        return vReturn;
    }

    //Function Delete Data
    function doDeleteData() {
        var vReturn = false;
        runAJAX_CRUD("frmStockIn.asmx/doDeleteDataSW", DTO);
        return vReturn;
    }


});
