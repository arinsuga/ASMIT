$(document).ready(function() {
    //UI Initialize
    initUIStandard();
    initUIStandardApp();
    MultiplyMe("#fldTRN_AMNT", "#fldTRN_QTY", "#fldTRN_PRICE");

    // Initialize the object, before adding data to it.
    //  { } is declarative shorthand for new Object().
    var voFormData = {};
    var DTO;
    var vsActType = "VIEW";
    getFormValue();
    setStateView();

    //Command CRUD
    $("#cmdNew").click(function() {
        $("#cmdReset").click();
        setStateNew();
        vsActType = "NEW";
        $("#fldPROD_ITMNO").focus();
    });
    //Command CRUD
    $("#cmdEdit").click(function() {
        vsActType = "EDIT";
        setStateEdit();
    });
    //Command CRUD
    $("#cmdDelete").click(function() {
        getFormValue();
        doDeleteData();
    });
    //Command CRUD
    $("#cmdSave").click(function() {

        getFormValue();
        if (vsActType == "NEW") {
            if (doInsertData() == "Y") { setStateView(); }
        }
        if (vsActType == "EDIT") {
            if (doUpdateData() == "Y") { setStateView(); }
        }

    });
    //Command CRUD
    $("#cmdReset").click(function() {
        vsActType = "VIEW";
        resetMandatoryInfo();
        setStateView();

        resetMandatoryInfo();
        resetMandatoryValue();
    });
    //Command CRUD
    $("#cmdClose").click(function() {
    });


    //Command LookUp
    $('#LKP_PROD_SUBCTGRY').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "HARDWARE_IT";
        showLookup('LKP_ASMLOV_CMPNT_SUBCTGRY', '#imgPROD_SUBCTGRY', vsSearchValue, '', '#fldPROD_SUBCTGRY', '#fldPROD_SUBCTGRYx');
    });
    //Command LookUp
    $('#LKP_PROD_TYP').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = $('#fldPROD_SUBCTGRY').val();
        showLookup('LKP_ASMLOV_CMPNT_TYP', '#imgPROD_TYP', vsSearchValue, '', '#fldPROD_TYP', '#fldPROD_TYPx');
    });
    //Command LookUp
    $('#LKP_PBLSHR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_PBLSHR', '#imgPBLSHR_RUID', vsSearchValue, '', '#fldPBLSHR_RUID', '#fldPBLSHR_RUIDx');
    });
    //Command LookUp
    $('#LKP_TRN_NO').click(function() {
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMTRN_STOCKIN', '', vsSearchValue, '#fldRUID', '#fldTRN_NO', '');
    });

    //Command LookUp
    $('#LKP_PROD_ITMNO').click(function() {
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMTRN_STOCKIN_BYSN', '#imgPROD_ITMNO', vsSearchValue, '#fldRUID', '#fldPROD_ITMNO', '');
        //Only for testing ==> showLookup('LKP_RESOURCE', vsSearchValue, '#fldRUID', '#fldPROD_ITMNO', '');
    });

    $('#cmdBrowseByTRN_NO').click(function() {
        if ($("#fldRUID") != "") {
            getDBValueByRUID($('#fldRUID').val());
        }
    });
    $('#cmdBrowseByPROD_ITMNO').click(function() {
        if ($("#fldRUID").val() != "") {
            setStateReadyEditDelete();
            getDBValueByRUID($('#fldRUID').val());
        }
    });

    function getDBValueByRUID(psRUID) {
        var vsURL = "frmStockIn.asmx/doPopDataByRUID";
        var DTOx = { 'psRUID': psRUID };
        $.ajax({
            type: getAJAXType1(),
            contentType: getAJAXContentType1(),
            url: vsURL,
            data: JSON.stringify(DTOx),
            dataType: getAJAXDataType1(),
            success: function(msg) {
                vReturn = true;
                voMsg = msg.d;
                setFormValue(voMsg)
            },
            error: function() {
            }
        });
    }

    //Function set form value
    function setFormValue(poMsg) {
        $("#fldADTRL_WKS").val(poMsg.fldADTRL_WKS);
        $("#fldADTRL_IP").val(poMsg.fldADTRL_IP);
        $("#fldADTRL_USR").val(poMsg.fldADTRL_USR);
        $("#fldADTRL_PRG").val(poMsg.fldADTRL_PRG);
        $("#fldADTRL_DT").val(poMsg.fldADTRL_DT);
        $("#fldRSEQNO").val(poMsg.fldRSEQNO);
        $("#fldRUID").val(poMsg.fldRUID);
        $("#fldDTA_STS").val(poMsg.fldDTA_STS);
        $("#fldBP_STS").val(poMsg.fldBP_STS);
        $("#fldPROD_CTGRY").val(poMsg.fldPROD_CTGRY);
        $("#fldPROD_SUBCTGRY").val(poMsg.fldPROD_SUBCTGRY);
        showLookupInline("ASM_PROD_SUBCTGRY", "#imgPROD_SUBCTGRY", poMsg.fldPROD_SUBCTGRY, "#fldPROD_SUBCTGRYx");
        $("#fldPROD_TYP").val(poMsg.fldPROD_TYP);
        showLookupInline("ASM_PROD_TYP", "#imgPROD_TYP", poMsg.fldPROD_TYP, "#fldPROD_TYPx");
        $("#fldPROD_SUBTYP1").val(poMsg.fldPROD_SUBTYP1);
        $("#fldPROD_SUBTYP2").val(poMsg.fldPROD_SUBTYP2);
        $("#fldPROD_SUBTYP3").val(poMsg.fldPROD_SUBTYP3);
        $("#fldPROD_SUBTYP4").val(poMsg.fldPROD_SUBTYP4);
        $("#fldPROD_SUBTYP5").val(poMsg.fldPROD_SUBTYP5);
        $("#fldPROD_ITMNO").val(poMsg.fldPROD_ITMNO);
        $("#fldPBLSHR_RUID").val(poMsg.fldPBLSHR_RUID);
        showLookupInline("ASM_PROD_PBLSHR", "#imgPROD_PBLSHR", poMsg.fldPBLSHR_RUID, "#fldPBLSHR_RUIDx");
        $("#fldBIZ_PNR_RUID").val(poMsg.fldBIZ_PNR_RUID);
        $("#fldPO_NO").val(poMsg.fldPO_NO);
        $("#fldWO_NO").val(poMsg.fldWO_NO);
        $("#fldTRN_DT").val(poMsg.fldTRN_DT);
        $("#fldTRN_NO").val(poMsg.fldTRN_NO);
        $("#fldTRN_QTY").val(poMsg.fldTRN_QTY);
        $("#fldTRN_PRICE").val(poMsg.fldTRN_PRICE);
        $("#fldTRN_AMNT").val(poMsg.fldTRN_AMNT);
        $("#fldADD_NOTE").val(poMsg.fldADD_NOTE);
        $("#fldRMK1").val(poMsg.fldRMK1);
        $("#fldRMK2").val(poMsg.fldRMK2);
        $("#fldRMK3").val(poMsg.fldRMK3);
        $("#fldRMK4").val(poMsg.fldRMK4);
        $("#fldRMK5").val(poMsg.fldRMK5);
        $("#fldADD_FLD1").val(poMsg.fldADD_FLD1);
        $("#fldADD_FLD2").val(poMsg.fldADD_FLD2);
        $("#fldADD_FLD3").val(poMsg.fldADD_FLD3);
        $("#fldADD_FLD4").val(poMsg.fldADD_FLD4);
        $("#fldADD_FLD5").val(poMsg.fldADD_FLD5);

        //Field Formating Number Decimal
        formatNumberDecimal(".FieldAsDecimal");
        //Field Formating Number Integer
        formatNumberInteger(".FieldAsInteger");
    }
    //Function load form value
    function getFormValue() {

        voFormData.fldADTRL_WKS = $("#fldADTRL_WKS").val();
        voFormData.fldADTRL_IP = $("#fldADTRL_IP").val();
        voFormData.fldADTRL_USR = $("#fldADTRL_USR").val();
        voFormData.fldADTRL_PRG = $("#fldADTRL_PRG").val();
        voFormData.fldADTRL_DT = $("#fldADTRL_DT").val();
        voFormData.fldRSEQNO = $("#fldRSEQNO").val();
        voFormData.fldRUID = $("#fldRUID").val();
        voFormData.fldDTA_STS = $("#fldDTA_STS").val();
        voFormData.fldBP_STS = $("#fldBP_STS").val();
        voFormData.fldPROD_CTGRY = $("#fldPROD_CTGRY").val();
        voFormData.fldPROD_SUBCTGRY = $("#fldPROD_SUBCTGRY").val();
        voFormData.fldPROD_TYP = $("#fldPROD_TYP").val();
        voFormData.fldPROD_SUBTYP1 = $("#fldPROD_SUBTYP1").val();
        voFormData.fldPROD_SUBTYP2 = $("#fldPROD_SUBTYP2").val();
        voFormData.fldPROD_SUBTYP3 = $("#fldPROD_SUBTYP3").val();
        voFormData.fldPROD_SUBTYP4 = $("#fldPROD_SUBTYP4").val();
        voFormData.fldPROD_SUBTYP5 = $("#fldPROD_SUBTYP5").val();
        voFormData.fldPROD_ITMNO = $("#fldPROD_ITMNO").val();
        voFormData.fldPBLSHR_RUID = $("#fldPBLSHR_RUID").val();
        voFormData.fldBIZ_PNR_RUID = $("#fldBIZ_PNR_RUID").val();
        voFormData.fldPO_NO = $("#fldPO_NO").val();
        voFormData.fldWO_NO = $("#fldWO_NO").val();
        voFormData.fldTRN_DT = $("#fldTRN_DT").val();
        voFormData.fldTRN_NO = $("#fldTRN_NO").val();
        voFormData.fldTRN_QTY = $("#fldTRN_QTY").val();
        voFormData.fldTRN_PRICE = $("#fldTRN_PRICE").val();
        voFormData.fldTRN_AMNT = $("#fldTRN_AMNT").val();
        voFormData.fldADD_NOTE = $("#fldADD_NOTE").val();
        voFormData.fldRMK1 = $("#fldRMK1").val();
        voFormData.fldRMK2 = $("#fldRMK2").val();
        voFormData.fldRMK3 = $("#fldRMK3").val();
        voFormData.fldRMK4 = $("#fldRMK4").val();
        voFormData.fldRMK5 = $("#fldRMK5").val();
        voFormData.fldADD_FLD1 = $("#fldADD_FLD1").val();
        voFormData.fldADD_FLD2 = $("#fldADD_FLD2").val();
        voFormData.fldADD_FLD3 = $("#fldADD_FLD3").val();
        voFormData.fldADD_FLD4 = $("#fldADD_FLD4").val();
        voFormData.fldADD_FLD5 = $("#fldADD_FLD5").val();

        // Create a data transfer object (DTO) with the proper structure.
        DTO = { 'voFormData': voFormData };

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
        var vsUrl = "frmStockIn.asmx/doInsertData";
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
                success: function(msg) {
                    voMsg = msg.d;
                },
                complete: function(msg) {
                    $('#DialogSaveOnProgress').dialog('close');
                    if (voMsg.IS_VALID != "Y") {
                        $('#DialogInformationMsg').text(voMsg.RSLT_MSG);
                        $('#DialogInformation').dialog('open');
                    }
                },
                error: function() {
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

    //Function Update Data
    //    function doUpdateData() {
    //        var vReturn = false;
    //        runAJAX_CRUD("frmStockIn.asmx/doUpdateData", DTO);
    //        return vReturn;
    //    }

    //Function Update Data
    function doUpdateData() {
        var vReturn = "Y";
        var vsUrl = "frmStockIn.asmx/doUpdateData";
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
                success: function(msg) {
                    voMsg = msg.d;
                },
                complete: function(msg) {
                    $('#DialogSaveOnProgress').dialog('close');
                },
                error: function() {
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
        runAJAX_CRUD("frmStockIn.asmx/doDeleteData", DTO);
        return vReturn;
    }


});
