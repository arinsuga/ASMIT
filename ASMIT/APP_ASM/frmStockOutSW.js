$(document).ready(function () {
    //UI Initialize
    initUIStandard();
    initUIStandardApp();

    // Initialize the object, before adding data to it.
    //  { } is declarative shorthand for new Object().
    var voFormData = {};
    var voFormDataOld = {};
    var aFormDataValidation = new Array();
    var aParUniqueXK = new Array();
    var DTO;
    var vsActType = "VIEW";
    getFormValue();
    setStateView();

    $('#tabs').bind('tabsselect', function (event, ui) {
        // Objects available in the function context:
        //alert(ui.tab);     // anchor element of the selected (clicked) tab
        //alert(ui.panel);   // element, that contains the selected/clicked tab contents
        //alert(ui.index);   // zero-based index of the selected (clicked) tab

        if (ui.index == 1) {
            if ($('#fldRUID').val() != "") {
                vsSearchValue = new Array();
                //vsSearchValue[0] = $('#fldSTOCKIN_RUID').val();
                vsSearchValue[0] = $('#fldRUID').val();
                showList('#divforgrdList', 'LST_ASMTRN_STOCKOUTSW_HIST_INFO', '', vsSearchValue,
                  '', '', '');
            }
        }

    });


    //Command View Detail
    $("#ViewDetail").click(function () {
        var vsSubCtgry = $("#fldPROD_SUBCTGRY").val();
        var vsURL = "";
        var vsURLPar = "";

        if ((vsSubCtgry != "") && (vsSubCtgry != null)) {

            if (vsSubCtgry == "CPU") { vsURL = "frmStockInCPU_VIEW.aspx"; }
            if (vsSubCtgry == "COMPUTER_PORTABLE") { vsURL = "frmStockInNB_VIEW.aspx"; }


            vsURLPar = "RUID_TOVIEW=" + $("#fldSTOCKIN_RUID").val();
            vsURL = vsURL + "?" + vsURLPar;
            $("#DialogInformationMsg").empty();

            $.ajax({
                type: "POST",
                url: vsURL,
                data: JSON.stringify(DTO),
                success: function (msg) {
                    voMsg = msg.d;
                    $("#DialogInformationMsg").html(msg);
                    $('#DialogInformation').dialog('open');
                },
                error: function () {
                }
            });
        } else {
            $("#DialogInformationMsg").html("Tunggu sampai Sub Kategori Produk terisi, lalu coba view detail lagi 	");
            $('#DialogInformation').dialog('open');
        } //End if
    });
    //Command CRUD
    $("#cmdNew").click(function () {
        $("#cmdReset").click();
        setStateNew();
        vsActType = "NEW";
        $("#fldFIELD_ID").focus();
    });
    //Command CRUD
    $("#cmdEdit").click(function () {
        vsActType = "EDIT";
        setStateEdit();
        //Set field state by Asset Status
        setFieldStateByAssetStatus($('#fldASST_STS_RUID').val());
        setMandatoryByAssetStatus($('#fldASST_STS_RUID').val());
    });
    //Command CRUD
    $("#cmdDelete").click(function () {
        getFormValue();
        doDeleteData();
    });
    //Command CRUD
    $("#cmdSave").click(function () {
        if ($("#fldSTOCKIN_RUID").val() != "") {
            $("#divforgrdList")
            getFormValue();
            isValidEntryRunSaveData();
        }

    });
    //Command CRUD
    $("#cmdReset").click(function () {
        vsActType = "VIEW";
        setStateView();
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        resetUniqueXKInfo(aParUniqueXK);
        resetMandatoryInfo();
        resetMandatoryValue();
        clearMandatoryByAssetStatus();
        showListNoData('#divforgrdList', 'LST_ASMTRN_STOCKOUTHIST_CSTM01', vsSearchValue);
    });
    //Command CRUD
    $("#cmdClose").click(function () {
    });


    //Command LookUp
    $('#LKP_PROD_ITMNO').click(function () {
        //alert();
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        if (vsActType == "NEW") {
            showLookup('LKP_ASMTRN_STOCKINSW_BYSN_CSTM01', '#imgPROD_ITMNO', vsSearchValue, '#fldSTOCKIN_RUID', '#fldPROD_ITMNO', '');
        } else {
            showLookup('LKP_ASMTRN_STOCKOUTSW', '#imgPROD_ITMNO', vsSearchValue, '#fldRUID', '#fldPROD_ITMNO', '#fldSTOCKIN_RUID');
        }

    });
    //Command browse to form
    $('#cmdBrowseByPROD_ITMNO').click(function () {

        if (vsActType == "NEW") {
            if ($("#fldSTOCKIN_RUID").val() != "") {
                //setStateReadyEditDelete();
                getDBValueStockinByRUID($('#fldSTOCKIN_RUID').val());
                //getDBValueStockoutBySTOCKIN_RUID($('#fldSTOCKIN_RUID').val());
                vsSearchValue = new Array();
                vsSearchValue[0] = $('#fldSTOCKIN_RUID').val();
                showList('#divforgrdList', 'LST_ASMTRN_STOCKOUTHIST_CSTM01', '', vsSearchValue,
                  '', '', '');
            } //End if
        } else {
            //alert("Create Browse EDIT StockOUT : getDBValueStockoutBy_RUID");
            if ($("#fldRUID").val() != "") {
                getDBValueStockinByRUID($('#fldSTOCKIN_RUID').val());
                getDBValueStockoutBy_RUID($('#fldRUID').val());
                vsSearchValue = new Array();
                vsSearchValue[0] = $('#fldSTOCKIN_RUID').val();
                showList('#divforgrdList', 'LST_ASMTRN_STOCKOUTHIST_CSTM01', '', vsSearchValue,
                  '', '', '');
            } //End if

        }
    });

    //Command LookUp
    $('#LKP_ASST_ACT_RUID').click(function () {
        //alert();
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_ASST_ACT', '#imgASST_ACT_RUID', vsSearchValue, '#fldASST_ACT_RUID', '', '#fldASST_ACT_RUIDx');
        //Only for testing ==> showLookup('LKP_RESOURCE', vsSearchValue, '#fldRUID', '#fldPROD_ITMNO', '');
    });

    //Command LookUp
    $('#LKP_DEPT_RUID').click(function () {
        //alert();
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_MSTLOV_DEPT', '#imgDEPT_RUID', vsSearchValue, '#fldDEPT_RUID', '', '#fldDEPT_RUIDx');
        //Only for testing ==> showLookup('LKP_RESOURCE', vsSearchValue, '#fldRUID', '#fldPROD_ITMNO', '');
    });


    //Command LookUp
    $('#LKP_RSRC_USER_RUID').click(function () {
        //alert();
        vsSearchValue = new Array();
        //vsSearchValue[0] = "";
        vsSearchValue[0] = $('#fldDEPT_RUID').val();
        showLookup('LKP_RESOURCE', '#imgRSRC_USER_RUID', vsSearchValue, '#fldRSRC_USER_RUID', '', '#fldRSRC_USER_RUIDx');
        //Only for testing ==> showLookup('LKP_RESOURCE', vsSearchValue, '#fldRUID', '#fldPROD_ITMNO', '');
    });
    //Command LookUp

    function getDBValueStockoutBySTOCKIN_RUID(psRUID) {
        var vsURL = "frmStockOut.asmx/doPopDataByStockInRUID";
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
                setFormValueOfStockOut(voMsg);
                if (vsActType != "NEW") { setStateReadyEditDelete(); }
            },
            error: function () {
            }
        });
    }
    function getDBValueStockoutBy_RUID(psRUID) {
        var vsURL = "frmStockOut.asmx/doPopDataByRUID";
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
                setFormValueOfStockOut(voMsg);
                if (vsActType != "NEW") { setStateReadyEditDelete(); }
            },
            error: function () {
            }
        });
    }

    function getDBValueStockinByRUID(psRUID) {
        //var vsURL = "frmStockIn.asmx/doPopDataByRUIDSW";
        var vsURL = "frmStockIn.asmx/doPopDataBy_MAINRUIDSW";
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
                setFormValueOfStockIn(voMsg)
            },
            error: function () {
            }
        });
    }

    function setFieldStateByAssetStatus(psAssetStatus) {
        var vsStatusList = "LOV_ASST_STS_HANDOVER;LOV_ASST_STS_USED;LOV_ASST_STS_IDLE;LOV_ASST_STS_DEFECTIVE;LOV_ASST_STS_RETURN;LOV_ASST_STS_STORED;LOV_ASST_STS_MISSING;LOV_ASST_STS_ANLZBYIT;LOV_ASST_STS_ANLZ_BYEXT;LOV_ASST_STS_FIXING_BYIT;LOV_ASST_STS_FIXING_BYEXT;LOV_ASST_STS_MAINTAIN_BYIT;LOV_ASST_STS_MAINTAIN_BYEXT;LOV_ASST_STS_OTHER";
        var aStatusList = new Array();
        aStatusList = vsStatusList.split(";");

        var vsfldDEPT_RUIDIsBlank = "N;Y;Y;N;N;N;N;N;N;N;N;N;N;N";
        var afldDEPT_RUIDIsBlank = new Array();
        afldDEPT_RUIDIsBlank = vsfldDEPT_RUIDIsBlank.split(";");

        var vsfldRSRC_USER_RUIDIsBlank = "N;Y;Y;N;N;N;N;N;N;N;N;N;N;N";
        var afldRSRC_USER_RUIDIsBlank = new Array();
        afldRSRC_USER_RUIDIsBlank = vsfldRSRC_USER_RUIDIsBlank.split(";");

        var vsfldRSRC_CTR_PRTY_RUIDIsBlank = "Y;Y;Y;Y;N;Y;Y;Y;N;Y;N;Y;N;Y";
        var afldRSRC_CTR_PRTY_RUIDIsBlank = new Array();
        afldRSRC_CTR_PRTY_RUIDIsBlank = vsfldRSRC_CTR_PRTY_RUIDIsBlank.split(";");


        var vsfldRSRC_USER_RUID = "N;Y;Y;Y;Y;Y;Y;Y;Y;Y;Y;Y;Y;N";
        var afldRSRC_USER_RUID = new Array();
        afldRSRC_USER_RUID = vsfldRSRC_USER_RUID.split(";");

        var vsfldRSRC_CTR_PRTY_RUID = "Y;Y;Y;Y;N;Y;Y;Y;N;Y;N;Y;N;N";
        var afldRSRC_CTR_PRTY_RUID = new Array();
        afldRSRC_CTR_PRTY_RUID = vsfldRSRC_CTR_PRTY_RUID.split(";");

        if (aStatusList != null) {
            var vnRowCount = aStatusList.length;
            var vbExitState = false;
            //Loop Enable/Disable
            for (i = 0; i < vnRowCount; i++) {
                if (aStatusList[i] == psAssetStatus) {
                    //fldRSRC_USER_RUID
                    if (afldRSRC_USER_RUID[i] == "Y") {
                        setDisableTextbox("#fldRSRC_USER_RUID", "", "#LKP_RSRC_USER_RUID", "", "");
                    } else {
                        setEnableTextbox("#fldRSRC_USER_RUID", "", "#LKP_RSRC_USER_RUID", "", "");
                    } //End If

                    //fldRSRC_CTR_PRTY_RUID
                    if (afldRSRC_CTR_PRTY_RUID[i] == "Y") {
                        setDisableTextbox("#fldRSRC_CTR_PRTY_RUID", "", "#LKP_RSRC_CTR_PRTY_RUID", "", "");
                    } else {
                        setEnableTextbox("#fldRSRC_CTR_PRTY_RUID", "", "#LKP_RSRC_CTR_PRTY_RUID", "", "");
                    } //End If
                    break;
                } //End If
            } //End For

            //Loop Is Blank
            for (i = 0; i < vnRowCount; i++) {
                if (aStatusList[i] == psAssetStatus) {
                    //fldDEPT_RUIDIsBlank is Blank
                    if (afldDEPT_RUIDIsBlank[i] == "Y") {
                        $("#fldDEPT_RUID").val("");
                        $("#fldDEPT_RUIDx").val("");
                    } else {
                        $("#fldDEPT_RUID").val(voFormDataOld.fldDEPT_RUID);
                        showLookupInline("MST_DEPT", "#imgDEPT_RUID", voFormDataOld.fldDEPT_RUID, "#fldDEPT_RUIDx");
                    } //End If

                    //fldRSRC_USER_RUIDIsBlank is Blank
                    if (afldRSRC_USER_RUIDIsBlank[i] == "Y") {
                        $("#fldRSRC_USER_RUID").val("");
                        $("#fldRSRC_USER_RUIDx").val("");
                    } else {
                        $("#fldRSRC_USER_RUID").val(voFormDataOld.fldRSRC_USER_RUID);
                        showLookupInline("MST_RSRC", "#imgRSRC_USER_RUID", voFormDataOld.fldRSRC_USER_RUID, "#fldRSRC_USER_RUIDx");
                    } //End If

                    //fldRSRC_CTR_PRTY_RUIDIsBlank is Blank
                    if (afldRSRC_CTR_PRTY_RUIDIsBlank[i] == "Y") {
                        $("#fldRSRC_CTR_PRTY_RUID").val("");
                    } else {
                        $("#fldRSRC_CTR_PRTY_RUID").val(voFormDataOld.fldRSRC_CTR_PRTY_RUID);
                    } //End If
                    break;
                } //End If
            } //End For
        }

    }

    function setMandatoryByAssetStatus(psAssetStatus) {
        clearMandatoryByAssetStatus();
        $("#fldTRN_DT").addClass("FieldAsMandatory");
        $("#fldDEPT_RUID").addClass("FieldAsMandatory");
        $("#fldRSRC_USER_RUID").addClass("FieldAsMandatory");
        initMandatorySignByFieldClass();
    }
    function clearMandatoryByAssetStatus() {
        //resetMandatorySignByFieldID("#fldASST_STS_RUID");
        resetMandatorySignByFieldID("#fldTRN_DT");
        //resetMandatorySignByFieldID("#fldDOC_REFF_NO");
        //resetMandatorySignByFieldID("#fldASST_TAG_ID");
        resetMandatorySignByFieldID("#fldDEPT_RUID");
        resetMandatorySignByFieldID("#fldRSRC_USER_RUID");
        //resetMandatorySignByFieldID("#fldRSRC_CTR_PRTY_RUID");
        //$("#fldASST_STS_RUID").removeClass("FieldAsMandatory");
        $("#fldTRN_DT").removeClass("FieldAsMandatory");
        //$("#fldDOC_REFF_NO").removeClass("FieldAsMandatory");
        //$("#fldASST_TAG_ID").removeClass("FieldAsMandatory");
        $("#fldDEPT_RUID").removeClass("FieldAsMandatory");
        $("#fldRSRC_USER_RUID").removeClass("FieldAsMandatory");
        //$("#fldRSRC_CTR_PRTY_RUID").removeClass("FieldAsMandatory");
    }

    //Function set form value
    function setFormValueOfStockOut(poMsg) {
        $("#fldADTRL_WKS").val(poMsg.fldADTRL_WKS);
        $("#fldADTRL_IP").val(poMsg.fldADTRL_IP);
        $("#fldADTRL_USR").val(poMsg.fldADTRL_USR);
        $("#fldADTRL_PRG").val(poMsg.fldADTRL_PRG);
        $("#fldADTRL_DT").val(poMsg.fldADTRL_DT);
        $("#fldRSEQNO").val(poMsg.fldRSEQNO);
        $("#fldRUID").val(poMsg.fldRUID);
        $("#fldDTA_STS").val(poMsg.fldDTA_STS);
        $("#fldBP_STS").val(poMsg.fldBP_STS);
        //$("#fldSTOCKIN_RUID").val(poMsg.fldSTOCKIN_RUID);
        $("#fldSTOCKOUT02_RUID").val(poMsg.fldSTOCKOUT02_RUID);
        $("#fldASST_TAG_ID").val(poMsg.fldASST_TAG_ID);

        $("#fldASST_STS_RUID").val(poMsg.fldASST_STS_RUID);

        $("#fldASST_ACT_RUID").val(poMsg.fldASST_ACT_RUID);
        showLookupInline("ASM_ASST_ACT", "#imgASST_ACT_RUID", poMsg.fldASST_ACT_RUID, "#fldASST_ACT_RUIDx");

        $("#fldDEPT_RUID").val(poMsg.fldDEPT_RUID);
        showLookupInline("MST_DEPT", "#imgDEPT_RUID", poMsg.fldDEPT_RUID, "#fldDEPT_RUIDx");
        voFormDataOld.fldDEPT_RUID = poMsg.fldDEPT_RUID;

        $("#fldRSRC_USER_RUID").val(poMsg.fldRSRC_USER_RUID);
        showLookupInline("MST_RSRC", "#imgRSRC_USER_RUID", poMsg.fldRSRC_USER_RUID, "#fldRSRC_USER_RUIDx");
        voFormDataOld.fldRSRC_USER_RUID = poMsg.fldRSRC_USER_RUID;

        $("#fldRSRC_CTR_PRTY_RUID").val(poMsg.fldRSRC_CTR_PRTY_RUID);
        voFormDataOld.fldRSRC_CTR_PRTY_RUID = poMsg.fldRSRC_CTR_PRTY_RUID;

        $("#fldTRN_DT").val(poMsg.fldTRN_DT);
        $("#fldDOC_REFF_NO").val(poMsg.fldDOC_REFF_NO);
        $("#fldADD_NOTE").val(poMsg.fldADD_NOTE);
        $("#fldRMK1").val(poMsg.fldRMK1);
        $("#fldRMK2").val(poMsg.fldRMK2);
        $("#fldRMK3").val(poMsg.fldRMK3);
        $("#fldRMK4").val(poMsg.fldRMK4);
        $("#fldRMK5").val(poMsg.fldRMK5);
        //$("#fldADD_FLD1").val(poMsg.fldADD_FLD1);
        $("#fldADD_FLD2").val(poMsg.fldADD_FLD2);
        $("#fldADD_FLD3").val(poMsg.fldADD_FLD3);
        $("#fldADD_FLD4").val(poMsg.fldADD_FLD4);
        $("#fldADD_FLD5").val(poMsg.fldADD_FLD5);

        //Lookup inline (if need)
        //showLookupInline("ASM_PROD_SUBCTGRY", '', poMsg.fldPROD_SUBCTGRY, "#fldPROD_SUBCTGRYx");
        //Field Formating Number Decimal
        //formatNumberDecimal(".FieldAsDecimal");
        //Field Formating Number Integer
        //formatNumberInteger(".FieldAsInteger");
    }
    //Function set form value of Stock In
    function setFormValueOfStockIn(poMsg) {

        //        $("#fldPROD_SUBCTGRY").val(poMsg.fldMAIN_PROD_CTGRY_NM);
        //        showLookupInline("ASM_PROD_SUBCTGRY", "#imgPROD_SUBCTGRY", poMsg.fldPROD_SUBCTGRY, "#fldPROD_SUBCTGRYx");
        //        $("#fldPROD_TYP").val(poMsg.fldPROD_TYP);
        //        showLookupInline("ASM_PROD_TYP", "#imgPROD_TYP", poMsg.fldPROD_TYP, "#fldPROD_TYPx");
        //        $("#fldPBLSHR_RUID").val(poMsg.fldPBLSHR_RUID);
        //        showLookupInline("ASM_PROD_PBLSHR", "#imgPBLSHR_RUID", poMsg.fldPBLSHR_RUID, "#fldPBLSHR_RUIDx");
        //        $("#fldPO_NO").val(poMsg.fldPO_NO);
        //        $("#fldWO_NO").val(poMsg.fldWO_NO);

        $("#fldPROD_SUBCTGRY").val(poMsg.fldMAIN_PROD_CTGRY);
        $("#fldPROD_SUBCTGRYx").val(poMsg.fldMAIN_PROD_CTGRY_NM);
        $("#fldPROD_TYP").val(poMsg.fldMAIN_PROD_TYP);
        $("#fldPROD_TYPx").val(poMsg.fldMAIN_PROD_TYP_NM);
        $("#fldMAIN_PBLSHR_RUID").val(poMsg.fldMAIN_PBLSHR_RUID);
        $("#fldPBLSHR_RUIDx").val(poMsg.fldMAIN_PBLSHR_NM);
        $("#fldPO_NO").val(poMsg.fldMAIN_PO_NO);
        $("#fldWO_NO").val(poMsg.fldMAIN_WO_NO);
        $("#fldADD_FLD1").val(poMsg.fldPROD_NM);

        $("#fldVERSION").val(poMsg.fldVERSION);
        $("#fldSUBSCRIPTION_SN").val(poMsg.fldSUBSCRIPTION_SN);
        $("#fldSUBSCRIPTION_VER").val(poMsg.fldSUBSCRIPTION_VER);
        $("#fldREQUEST_CODE").val(poMsg.fldREQUEST_CODE);
        $("#fldPRODUCT_ID").val(poMsg.fldPRODUCT_ID);
        $("#fldACTIVATION_CODE").val(poMsg.fldACTIVATION_CODE);
        $("#fldLICENSE_START_DT").val(poMsg.fldLICENSE_START_DT);
        $("#fldLICENSE_END_DT").val(poMsg.fldLICENSE_END_DT);

        //Lookup inline (if need)
        //showLookupInline("ASM_PROD_SUBCTGRY", poMsg.fldPROD_SUBCTGRY, "#fldPROD_SUBCTGRYx");
        //Field Formating Number Decimal
        //formatNumberDecimal(".FieldAsDecimal");
        //Field Formating Number Integer
        //formatNumberInteger(".FieldAsInteger");
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
        voFormData.fldSTOCKIN_RUID = $("#fldSTOCKIN_RUID").val();
        voFormData.fldSTOCKOUT02_RUID = $("#fldSTOCKOUT02_RUID").val();
        voFormData.fldASST_TAG_ID = $("#fldASST_TAG_ID").val();

        voFormData.fldASST_STS_RUID = $("#fldASST_STS_RUID").val();

        voFormData.fldASST_ACT_RUID = $("#fldASST_ACT_RUID").val();
        voFormData.fldDEPT_RUID = $("#fldDEPT_RUID").val();
        voFormData.fldRSRC_USER_RUID = $("#fldRSRC_USER_RUID").val();
        voFormData.fldRSRC_CTR_PRTY_RUID = $("#fldRSRC_CTR_PRTY_RUID").val();
        voFormData.fldTRN_DT = $("#fldTRN_DT").val();
        voFormData.fldDOC_REFF_NO = $("#fldDOC_REFF_NO").val();
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
    function isValidEntryRunSaveData() {
        var vReturn = "Y";

        //Validate UniqueXK
        setParUniqueXK();
        resetUniqueXKInfo(aParUniqueXK);
        var vsURL = WSUrl + "/WSHelper.asmx/showUniqueXK";
        var voDTO = { 'poParUNIQUE_XK': aParUniqueXK }; // DTO;
        $.ajax({
            type: getAJAXType1(),
            contentType: getAJAXContentType1(),
            url: vsURL,
            data: JSON.stringify(voDTO),
            dataType: getAJAXDataType1(),
            success: function (msg) {
                voMsg = msg.d;
            },
            complete: function (msg) {
                var vsIsValidMandatory = "Y";
                var vsIsValidUniqueXK = "Y";
                //Reset Mandatory and Unique Info
                resetMandatoryInfo();
                resetUniqueXKInfo(voMsg);
                //Validate Mandatory
                vsIsValidMandatory = isValidMandatory();
                //Validate Unique XK
                vsIsValidUniqueXK = isValidUniqueXK(voMsg);
                if ((vsIsValidMandatory == "Y") && (vsIsValidUniqueXK == "Y")) {
                    doSaveData();
                }
            },
            error: function () {
                $('#DialogInformationMsg').text(voMsg.RSLT_MSG);
                $('#DialogInformation').dialog('open');
            }
        });


        //Very custom validation
        //End Very custom validation

        return vReturn;
    }

    function setParUniqueXK() {
        //Define array for Unique XK validation
        var vsConfigID = "";
        var vsFieldID = "";
        var vsMainRUIDValue = "";
        var vsSearchRUIDValue = "";
        var vsResultRUIDValue = "";
        var vsisExist = "";
        var vsFieldMessage = "";
        //Reset array aParUniqueXK
        aParUniqueXK = [];
        //Repeat this push if more the 1 Unique XK to validate

        //        //UniqueXK 1
        //        vsConfigID = "UNIQUE_XK_ASMTRNSTOCKOUT_DOC_REFF_NO";
        //        vsFieldID = "#fldDOC_REFF_NO";
        //        vsMainRUIDValue = $("#fldRUID").val();
        //        vsSearchRUIDValue = $(vsFieldID).val();
        //        vsResultRUIDValue = "";
        //        vsisExist = "N";
        //        vsFieldMessage = "";
        //        aParUniqueXK.push({
        //            "ConfigID": vsConfigID, "FieldID": vsFieldID, "MainRUIDValue": vsMainRUIDValue,
        //            "SearchRUIDValue": vsSearchRUIDValue, "ResultRUIDValue": vsResultRUIDValue,
        //            "isExist": vsisExist, "FieldMessage": vsFieldMessage
        //        });

        //        //UniqueXK 2
        //        vsConfigID = "UNIQUE_XK_ASMTRNSTOCKOUT_ASST_TAG_ID";
        //        vsFieldID = "#fldASST_TAG_ID";
        //        vsMainRUIDValue = $("#fldRUID").val();
        //        vsSearchRUIDValue = $(vsFieldID).val();
        //        vsResultRUIDValue = "";
        //        vsisExist = "N";
        //        vsFieldMessage = "";
        //        aParUniqueXK.push({
        //            "ConfigID": vsConfigID, "FieldID": vsFieldID, "MainRUIDValue": vsMainRUIDValue,
        //            "SearchRUIDValue": vsSearchRUIDValue, "ResultRUIDValue": vsResultRUIDValue,
        //            "isExist": vsisExist, "FieldMessage": vsFieldMessage
        //        });

    }

    //Function Insert Data
    function doSaveData() {
        var vReturn = "Y";
        var vsUrl = "frmStockOut.asmx/doSaveDataSW";
        var voDTO = DTO;
        //Open Dialog Progress
        $('#DialogSaveOnProgress').dialog('open');
        $('#DialogSaveOnProgressMsgx1').text('');
        //Run AJAX
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
                setStateView();
            },
            error: function () {
                $('#DialogInformationMsg').text(voMsg.RSLT_MSG);
                $('#DialogInformation').dialog('open');
            }
        });


        return vReturn;
    }
    //Function Insert Data
    function doInsertData() {
        var vReturn = false;
        var vsUrl = "frmStockOut.asmx/doInsertDataSW";
        var voDTO = DTO;
        $('#DialogSaveOnProgress').dialog('open');
        $.ajax({
            type: getAJAXType1(),
            contentType: getAJAXContentType1(),
            url: vsUrl,
            data: JSON.stringify(voDTO),
            dataType: getAJAXDataType1(),
            success: function (msg) {
                vReturn = true;
                voMsg = msg.d;
            },
            complete: function (msg) {
                vsSearchValue = new Array();
                vsSearchValue[0] = $('#fldSTOCKIN_RUID').val();
                showList('#divforgrdList', 'LST_ASMTRN_STOCKOUTHIST_CSTM01', '', vsSearchValue,
              '', '', '');
                $('#DialogSaveOnProgress').dialog('close');
            },
            error: function () {
                $('#DialogInformationMsg').text(voMsg.RSLT_MSG);
                $('#DialogInformation').dialog('open');
            }
        });


        return vReturn;
    }
    //Function Update Data
    function doUpdateData() {
        var vReturn = false;
        runAJAX_CRUD("frmStockOut.asmx/doUpdateDataSW", DTO);
        return vReturn;
    }
    //Function Update Data
    function doDeleteData() {
        var vReturn = false;
        runAJAX_CRUD("frmStockOut.asmx/doDeleteDataSW", DTO);
        return vReturn;
    }


});

