$(document).ready(function() {
    //UI Initialize
    initUIStandard();
    initUIStandardApp();
    MultiplyMe("#fldTRN_AMNT", "#fldTRN_QTY", "#fldTRN_PRICE");

    // Initialize the object, before adding data to it.
    //  { } is declarative shorthand for new Object().
    var voFormDataNB = {};
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
    //Command LookUp Component Type
    $('#LKP_MAIN_PROD_TYP').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "COMPUTER_PORTABLE";  //$('#fldPROD_SUBCTGRY').val();
        showLookup('LKP_ASMLOV_CMPNT_TYP', '#imgMAIN_PROD_TYP', vsSearchValue, '#fldMAIN_PROD_TYP', '', '#fldMAIN_PROD_TYPx');
    });
    $('#LKP_PROC_TYP').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "PROCESSOR";  //$('#fldPROD_SUBCTGRY').val();
        showLookup('LKP_ASMLOV_CMPNT_TYP', '#imgPROC_TYP', vsSearchValue, '#fldPROC_TYP', '', '#fldPROC_TYPx');
    });
    $('#LKP_RAM_TYP').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "RAM";
        showLookup('LKP_ASMLOV_CMPNT_TYP', '#imgRAM_TYP', vsSearchValue, '#fldRAM_TYP', '', '#fldRAM_TYPx');
    });
    $('#LKP_VGA_TYP').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "VGA";
        showLookup('LKP_ASMLOV_CMPNT_TYP', '#imgVGA_TYP', vsSearchValue, '#fldVGA_TYP', '', '#fldVGA_TYPx');
    });
    $('#LKP_HDD_TYP').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "HARDDRIVE";
        showLookup('LKP_ASMLOV_CMPNT_TYP', '#imgHDD_TYP', vsSearchValue, '#fldHDD_TYP', '', '#fldHDD_TYPx');
    });
    $('#LKP_ODD_TYP').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "OPTICALDRIVE";
        showLookup('LKP_ASMLOV_CMPNT_TYP', '#imgODD_TYP', vsSearchValue, '#fldODD_TYP', '', '#fldODD_TYPx');
    });

    //Command LookUp Publisher
    $('#LKP_MAIN_PBLSHR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_PBLSHR', '#imgMAIN_PBLSHR_RUID', vsSearchValue, '#fldMAIN_PBLSHR_RUID', '', '#fldMAIN_PBLSHR_RUIDx');
    });
    $('#LKP_PROC_PBLSHR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_PBLSHR', '#imgPROC_PBLSHR_RUID', vsSearchValue, '#fldPROC_PBLSHR_RUID', '', '#fldPROC_PBLSHR_RUIDx');
    });
    $('#LKP_MB_PBLSHR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_PBLSHR', '#imgMB_PBLSHR_RUID', vsSearchValue, '#fldMB_PBLSHR_RUID', '', '#fldMB_PBLSHR_RUIDx');
    });
    $('#LKP_RAM_PBLSHR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_PBLSHR', '#imgRAM_PBLSHR_RUID', vsSearchValue, '#fldRAM_PBLSHR_RUID', '', '#fldRAM_PBLSHR_RUIDx');
    });
    $('#LKP_VGA_PBLSHR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_PBLSHR', '#imgVGA_PBLSHR_RUID', vsSearchValue, '#fldVGA_PBLSHR_RUID', '', '#fldVGA_PBLSHR_RUIDx');
    });
    $('#LKP_HDD_PBLSHR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_PBLSHR', '#imgHDD_PBLSHR_RUID', vsSearchValue, '#fldHDD_PBLSHR_RUID', '', '#fldHDD_PBLSHR_RUIDx');
    });
    $('#LKP_ODD_PBLSHR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_PBLSHR', '#imgODD_PBLSHR_RUID', vsSearchValue, '#fldODD_PBLSHR_RUID', '', '#fldODD_PBLSHR_RUIDx');
    });

    //Command LookUp
    $('#LKP_MAIN_BIZ_PNR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_RESOURCE_SAPVENDOR', '#imgMAIN_BIZ_PNR_RUID', vsSearchValue, '#fldMAIN_BIZ_PNR_RUID', '', '#fldMAIN_BIZ_PNR_RUIDx');
    });

    //Command LookUp
    $('#LKP_TRN_NO').click(function() {
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMTRN_STOCKIN', '', vsSearchValue, '#fldRUID', '#fldTRN_NO', '');
    });

    //Command LookUp
    $('#LKP_MAIN_PROD_ITMNO').click(function() {
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMTRN_STOCKINNB_BYSN', '#imgMAIN_PROD_ITMNO', vsSearchValue, '#fldRUID', '#fldMAIN_PROD_ITMNO', '#fldMAIN_PROD_TYPx');
    });

    $('#cmdBrowseByTRN_NO').click(function() {
        if ($("#fldRUID") != "") {
            getDBValueByRUID($('#fldRUID').val());
        }
    });
    $('#cmdBrowseByMAIN_PROD_ITMNO').click(function() {
        if ($("#fldRUID").val() != "") {
            setStateReadyEditDelete();
            getDBValueByRUID($('#fldRUID').val());
        }
    });

    function getDBValueByRUID(psRUID) {
        var vsURL = "frmStockIn.asmx/doPopDataByRUIDNB";
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
        $("#fldTRIN_RUID").val(poMsg.fldTRIN_RUID);
        $("#fldWRN_NO").val(poMsg.fldWRN_NO);
        $("#fldWRN_YEARTERM").val(poMsg.fldWRN_YEARTERM);
        $("#fldWRN_PERIOD1").val(poMsg.fldWRN_PERIOD1);
        $("#fldWRN_PERIOD2").val(poMsg.fldWRN_PERIOD2);
        $("#fldPROC_PBLSHR_RUID").val(poMsg.fldPROC_PBLSHR_RUID);
        $("#fldPROC_PBLSHR_RUIDx").val(poMsg.fldPROC_PBLSHR_NM);
        $("#fldPROC_PBLSHR_NM").val(poMsg.fldPROC_PBLSHR_NM);
        $("#fldPROC_TYP").val(poMsg.fldPROC_TYP);
        $("#fldPROC_TYPx").val(poMsg.fldPROC_TYP_NM);
        $("#fldPROC_TYP_NM").val(poMsg.fldPROC_TYP_NM);
        $("#fldPROC_SPEED").val(poMsg.fldPROC_SPEED);
        $("#fldPROC_CORE").val(poMsg.fldPROC_CORE);
        $("#fldPROC_NOTES").val(poMsg.fldPROC_NOTES);
        $("#fldRAM_PBLSHR_RUID").val(poMsg.fldRAM_PBLSHR_RUID);
        $("#fldRAM_PBLSHR_RUIDx").val(poMsg.fldRAM_PBLSHR_NM);
        $("#fldRAM_PBLSHR_NM").val(poMsg.fldRAM_PBLSHR_NM);
        $("#fldRAM_TYP").val(poMsg.fldRAM_TYP);
        $("#fldRAM_TYPx").val(poMsg.fldRAM_TYP_NM);
        $("#fldRAM_TYP_NM").val(poMsg.fldRAM_TYP_NM);
        $("#fldRAM_MODUL").val(poMsg.fldRAM_MODUL);
        $("#fldRAM_INST").val(poMsg.fldRAM_INST);
        $("#fldRAM_INST_UOM").val(poMsg.fldRAM_INST_UOM);
        $("#fldRAM_INST_UOM_NM").val(poMsg.fldRAM_INST_UOM_NM);
        $("#fldRAM_NOTES").val(poMsg.fldRAM_NOTES);
        $("#fldVGA_PBLSHR_RUID").val(poMsg.fldVGA_PBLSHR_RUID);
        $("#fldVGA_PBLSHR_RUIDx").val(poMsg.fldVGA_PBLSHR_NM);
        $("#fldVGA_PBLSHR_NM").val(poMsg.fldVGA_PBLSHR_NM);
        $("#fldVGA_TYP").val(poMsg.fldVGA_TYP);
        $("#fldVGA_TYPx").val(poMsg.fldVGA_TYP_NM);
        $("#fldVGA_TYP_NM").val(poMsg.fldVGA_TYP_NM);
        $("#fldVGA_CHIP").val(poMsg.fldVGA_CHIP);
        $("#fldVGA_MEM").val(poMsg.fldVGA_MEM);
        $("#fldVGA_MEM_UOM").val(poMsg.fldVGA_MEM_UOM);
        $("#fldVGA_MEM_UOM_NM").val(poMsg.fldVGA_MEM_UOM_NM);
        $("#fldVGA_NOTES").val(poMsg.fldVGA_NOTES);
        $("#fldHDD_PBLSHR_RUID").val(poMsg.fldHDD_PBLSHR_RUID);
        $("#fldHDD_PBLSHR_RUIDx").val(poMsg.fldHDD_PBLSHR_NM);
        $("#fldHDD_PBLSHR_NM").val(poMsg.fldHDD_PBLSHR_NM);
        $("#fldHDD_TYP").val(poMsg.fldHDD_TYP);
        $("#fldHDD_TYPx").val(poMsg.fldHDD_TYP_NM);
        $("#fldHDD_TYP_NM").val(poMsg.fldHDD_TYP_NM);
        $("#fldHDD_SPEED").val(poMsg.fldHDD_SPEED);
        $("#fldHDD_SIZE").val(poMsg.fldHDD_SIZE);
        $("#fldHDD_SIZE_UOM").val(poMsg.fldHDD_SIZE_UOM);
        $("#fldHDD_SIZE_UOM_NM").val(poMsg.fldHDD_SIZE_UOM_NM);
        $("#fldHDD_NOTES").val(poMsg.fldHDD_NOTES);
        $("#fldODD_PBLSHR_RUID").val(poMsg.fldODD_PBLSHR_RUID);
        $("#fldODD_PBLSHR_RUIDx").val(poMsg.fldODD_PBLSHR_NM);
        $("#fldODD_PBLSHR_NM").val(poMsg.fldODD_PBLSHR_NM);
        $("#fldODD_TYP").val(poMsg.fldODD_TYP);
        $("#fldODD_TYPx").val(poMsg.fldODD_TYP_NM);
        $("#fldODD_TYP_NM").val(poMsg.fldODD_TYP_NM);
        $("#fldDISP_SIZE").val(poMsg.fldDISP_SIZE);
        $("#fldDISP_SIZE_UOM").val(poMsg.fldDISP_SIZE_UOM);
        $("#fldDISP_SIZE_UOM_NM").val(poMsg.fldDISP_SIZE_UOM_NM);
        $("#fldCHIPSET").val(poMsg.fldCHIPSET);
        $("#fldAUDIO").val(poMsg.fldAUDIO);
        $("#fldSPEAKER").val(poMsg.fldSPEAKER);
        $("#fldLAN_SPEED").val(poMsg.fldLAN_SPEED);
        $("#fldWIFI").val(poMsg.fldWIFI);
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
        $("#fldMAIN_PBLSHR_RUIDx").val(poMsg.fldMAIN_PBLSHR_NM);
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
    }
    //Function load form value
    function getFormValue() {
        voFormDataNB.fldADTRL_WKS = $("#fldADTRL_WKS").val();
        voFormDataNB.fldADTRL_IP = $("#fldADTRL_IP").val();
        voFormDataNB.fldADTRL_USR = $("#fldADTRL_USR").val();
        voFormDataNB.fldADTRL_PRG = $("#fldADTRL_PRG").val();
        voFormDataNB.fldADTRL_DT = $("#fldADTRL_DT").val();
        voFormDataNB.fldRSEQNO = $("#fldRSEQNO").val();
        voFormDataNB.fldRUID = $("#fldRUID").val();
        voFormDataNB.fldDTA_STS = $("#fldDTA_STS").val();
        voFormDataNB.fldTRIN_RUID = $("#fldTRIN_RUID").val();
        voFormDataNB.fldWRN_NO = $("#fldWRN_NO").val();
        voFormDataNB.fldWRN_YEARTERM = $("#fldWRN_YEARTERM").val();
        voFormDataNB.fldWRN_PERIOD1 = $("#fldWRN_PERIOD1").val();
        voFormDataNB.fldWRN_PERIOD2 = $("#fldWRN_PERIOD2").val();
        voFormDataNB.fldPROC_PBLSHR_RUID = $("#fldPROC_PBLSHR_RUID").val();
        voFormDataNB.fldPROC_PBLSHR_NM = $("#fldPROC_PBLSHR_NM").val();
        voFormDataNB.fldPROC_TYP = $("#fldPROC_TYP").val();
        voFormDataNB.fldPROC_TYP_NM = $("#fldPROC_TYP_NM").val();
        voFormDataNB.fldPROC_SPEED = $("#fldPROC_SPEED").val();
        voFormDataNB.fldPROC_CORE = $("#fldPROC_CORE").val();
        voFormDataNB.fldPROC_NOTES = $("#fldPROC_NOTES").val();
        voFormDataNB.fldRAM_PBLSHR_RUID = $("#fldRAM_PBLSHR_RUID").val();
        voFormDataNB.fldRAM_PBLSHR_NM = $("#fldRAM_PBLSHR_NM").val();
        voFormDataNB.fldRAM_TYP = $("#fldRAM_TYP").val();
        voFormDataNB.fldRAM_TYP_NM = $("#fldRAM_TYP_NM").val();
        voFormDataNB.fldRAM_MODUL = $("#fldRAM_MODUL").val();
        voFormDataNB.fldRAM_INST = $("#fldRAM_INST").val();
        voFormDataNB.fldRAM_INST_UOM = $("#fldRAM_INST_UOM").val();
        voFormDataNB.fldRAM_INST_UOM_NM = $("#fldRAM_INST_UOM_NM").val();
        voFormDataNB.fldRAM_NOTES = $("#fldRAM_NOTES").val();
        voFormDataNB.fldVGA_PBLSHR_RUID = $("#fldVGA_PBLSHR_RUID").val();
        voFormDataNB.fldVGA_PBLSHR_NM = $("#fldVGA_PBLSHR_NM").val();
        voFormDataNB.fldVGA_TYP = $("#fldVGA_TYP").val();
        voFormDataNB.fldVGA_TYP_NM = $("#fldVGA_TYP_NM").val();
        voFormDataNB.fldVGA_CHIP = $("#fldVGA_CHIP").val();
        voFormDataNB.fldVGA_MEM = $("#fldVGA_MEM").val();
        voFormDataNB.fldVGA_MEM_UOM = $("#fldVGA_MEM_UOM").val();
        voFormDataNB.fldVGA_MEM_UOM_NM = $("#fldVGA_MEM_UOM_NM").val();
        voFormDataNB.fldVGA_NOTES = $("#fldVGA_NOTES").val();
        voFormDataNB.fldHDD_PBLSHR_RUID = $("#fldHDD_PBLSHR_RUID").val();
        voFormDataNB.fldHDD_PBLSHR_NM = $("#fldHDD_PBLSHR_NM").val();
        voFormDataNB.fldHDD_TYP = $("#fldHDD_TYP").val();
        voFormDataNB.fldHDD_TYP_NM = $("#fldHDD_TYP_NM").val();
        voFormDataNB.fldHDD_SPEED = $("#fldHDD_SPEED").val();
        voFormDataNB.fldHDD_SIZE = $("#fldHDD_SIZE").val();
        voFormDataNB.fldHDD_SIZE_UOM = $("#fldHDD_SIZE_UOM").val();
        voFormDataNB.fldHDD_SIZE_UOM_NM = $("#fldHDD_SIZE_UOM_NM").val();
        voFormDataNB.fldHDD_NOTES = $("#fldHDD_NOTES").val();
        voFormDataNB.fldODD_PBLSHR_RUID = $("#fldODD_PBLSHR_RUID").val();
        voFormDataNB.fldODD_PBLSHR_NM = $("#fldODD_PBLSHR_NM").val();
        voFormDataNB.fldODD_TYP = $("#fldODD_TYP").val();
        voFormDataNB.fldODD_TYP_NM = $("#fldODD_TYP_NM").val();
        voFormDataNB.fldDISP_SIZE = $("#fldDISP_SIZE").val();
        voFormDataNB.fldDISP_SIZE_UOM = $("#fldDISP_SIZE_UOM").val();
        voFormDataNB.fldDISP_SIZE_UOM_NM = $("#fldDISP_SIZE_UOM_NM").val();
        voFormDataNB.fldCHIPSET = $("#fldCHIPSET").val();
        voFormDataNB.fldAUDIO = $("#fldAUDIO").val();
        voFormDataNB.fldSPEAKER = $("#fldSPEAKER").val();
        voFormDataNB.fldLAN_SPEED = $("#fldLAN_SPEED").val();
        voFormDataNB.fldWIFI = $("#fldWIFI").val();
        voFormDataNB.fldMAIN_RSEQNO = $("#fldMAIN_RSEQNO").val();
        voFormDataNB.fldMAIN_RUID = $("#fldMAIN_RUID").val();
        voFormDataNB.fldMAIN_PROD_CTGRY = $("#fldMAIN_PROD_CTGRY").val();
        voFormDataNB.fldMAIN_PROD_CTGRY_NM = $("#fldMAIN_PROD_CTGRY_NM").val();
        voFormDataNB.fldMAIN_PROD_SUBCTGRY = $("#fldMAIN_PROD_SUBCTGRY").val();
        voFormDataNB.fldMAIN_PROD_SUBCTGRY_NM = $("#fldMAIN_PROD_SUBCTGRY_NM").val();
        voFormDataNB.fldMAIN_PROD_TYP = $("#fldMAIN_PROD_TYP").val();
        voFormDataNB.fldMAIN_PROD_TYP_NM = $("#fldMAIN_PROD_TYP_NM").val();
        voFormDataNB.fldMAIN_PROD_SUBTYP1 = $("#fldMAIN_PROD_SUBTYP1").val();
        voFormDataNB.fldMAIN_PROD_SUBTYP2 = $("#fldMAIN_PROD_SUBTYP2").val();
        voFormDataNB.fldMAIN_PROD_SUBTYP3 = $("#fldMAIN_PROD_SUBTYP3").val();
        voFormDataNB.fldMAIN_PROD_SUBTYP4 = $("#fldMAIN_PROD_SUBTYP4").val();
        voFormDataNB.fldMAIN_PROD_SUBTYP5 = $("#fldMAIN_PROD_SUBTYP5").val();
        voFormDataNB.fldMAIN_PROD_ITMNO = $("#fldMAIN_PROD_ITMNO").val();
        voFormDataNB.fldMAIN_PBLSHR_RUID = $("#fldMAIN_PBLSHR_RUID").val();
        voFormDataNB.fldMAIN_PBLSHR_NM = $("#fldMAIN_PBLSHR_NM").val();
        voFormDataNB.fldMAIN_BIZ_PNR_RUID = $("#fldMAIN_BIZ_PNR_RUID").val();
        voFormDataNB.fldMAIN_BIZ_PNR_NM = $("#fldMAIN_BIZ_PNR_NM").val();
        voFormDataNB.fldMAIN_PO_NO = $("#fldMAIN_PO_NO").val();
        voFormDataNB.fldMAIN_WO_NO = $("#fldMAIN_WO_NO").val();
        voFormDataNB.fldMAIN_TRN_DT = $("#fldMAIN_TRN_DT").val();
        voFormDataNB.fldMAIN_TRN_NO = $("#fldMAIN_TRN_NO").val();
        voFormDataNB.fldMAIN_TRN_QTY = $("#fldMAIN_TRN_QTY").val();
        voFormDataNB.fldMAIN_TRN_PRICE = $("#fldMAIN_TRN_PRICE").val();
        voFormDataNB.fldMAIN_TRN_AMNT = $("#fldMAIN_TRN_AMNT").val();

        // Create a data transfer object (DTO) with the proper structure.
        DTO = { 'voFormDataNB': voFormDataNB };

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
        var vsUrl = "frmStockIn.asmx/doInsertDataNB";
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
                error: function(msg) {
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
        var vsUrl = "frmStockIn.asmx/doUpdateDataNB";
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
        runAJAX_CRUD("frmStockIn.asmx/doDeleteDataNB", DTO);
        return vReturn;
    }


});
