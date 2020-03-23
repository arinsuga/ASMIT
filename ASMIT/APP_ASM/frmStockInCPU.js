$(document).ready(function() {
    //UI Initialize
    initUIStandard();
    initUIStandardApp();
    MultiplyMe("#fldTRN_AMNT", "#fldTRN_QTY", "#fldTRN_PRICE");

    // Initialize the object, before adding data to it.
    //  { } is declarative shorthand for new Object().
    var voFormDataCPU = {};
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
        vsSearchValue[0] = "CPU";  //$('#fldPROD_SUBCTGRY').val();
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
    $('#LKP_HDD1_TYP').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "HARDDRIVE";
        showLookup('LKP_ASMLOV_CMPNT_TYP', '#imgHDD1_TYP', vsSearchValue, '#fldHDD1_TYP', '', '#fldHDD1_TYPx');
    });
    $('#LKP_HDD2_TYP').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "HARDDRIVE";
        showLookup('LKP_ASMLOV_CMPNT_TYP', '#imgHDD2_TYP', vsSearchValue, '#fldHDD2_TYP', '', '#fldHDD2_TYPx');
    });
    $('#LKP_ODD1_TYP').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "OPTICALDRIVE";
        showLookup('LKP_ASMLOV_CMPNT_TYP', '#imgODD1_TYP', vsSearchValue, '#fldODD1_TYP', '', '#fldODD1_TYPx');
    });
    $('#LKP_ODD2_TYP').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "OPTICALDRIVE";
        showLookup('LKP_ASMLOV_CMPNT_TYP', '#imgODD2_TYP', vsSearchValue, '#fldODD2_TYP', '', '#fldODD2_TYPx');
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
    $('#LKP_HDD1_PBLSHR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_PBLSHR', '#imgHDD1_PBLSHR_RUID', vsSearchValue, '#fldHDD1_PBLSHR_RUID', '', '#fldHDD1_PBLSHR_RUIDx');
    });
    $('#LKP_HDD2_PBLSHR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_PBLSHR', '#imgHDD2_PBLSHR_RUID', vsSearchValue, '#fldHDD2_PBLSHR_RUID', '', '#fldHDD2_PBLSHR_RUIDx');
    });
    $('#LKP_ODD1_PBLSHR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_PBLSHR', '#imgODD1_PBLSHR_RUID', vsSearchValue, '#fldODD1_PBLSHR_RUID', '', '#fldODD1_PBLSHR_RUIDx');
    });
    $('#LKP_ODD2_PBLSHR_RUID').click(function() {
        //var vsName = $('#LKP_RESOURCE').attr("name");
        vsSearchValue = new Array();
        vsSearchValue[0] = "";
        showLookup('LKP_ASMLOV_PBLSHR', '#imgODD2_PBLSHR_RUID', vsSearchValue, '#fldODD2_PBLSHR_RUID', '', '#fldODD2_PBLSHR_RUIDx');
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
        showLookup('LKP_ASMTRN_STOCKINCPU_BYSN', '#imgMAIN_PROD_ITMNO', vsSearchValue, '#fldRUID', '#fldMAIN_PROD_ITMNO', '#fldMAIN_PROD_TYPx');
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
        var vsURL = "frmStockIn.asmx/doPopDataByRUIDCPU";
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
        //Processor
        $("#fldPROC_PBLSHR_RUID").val(poMsg.fldPROC_PBLSHR_RUID);
        $("#fldPROC_PBLSHR_RUIDx").val(poMsg.fldPROC_PBLSHR_NM);
        $("#fldPROC_PBLSHR_NM").val(poMsg.fldPROC_PBLSHR_NM);
        $("#fldPROC_TYP").val(poMsg.fldPROC_TYP);
        $("#fldPROC_TYPx").val(poMsg.fldPROC_TYP_NM);
        $("#fldPROC_TYP_NM").val(poMsg.fldPROC_TYP_NM);
        $("#fldPROC_SPEED").val(poMsg.fldPROC_SPEED);
        $("#fldPROC_CORE").val(poMsg.fldPROC_CORE);
        $("#fldPROC_NOTES").val(poMsg.fldPROC_NOTES);
        //Motherboard
        $("#fldMB_PBLSHR_RUID").val(poMsg.fldMB_PBLSHR_RUID);
        $("#fldMB_PBLSHR_RUIDx").val(poMsg.fldMB_PBLSHR_NM);
        $("#fldMB_PBLSHR_NM").val(poMsg.fldMB_PBLSHR_NM);
        $("#fldMB_TYP").val(poMsg.fldMB_TYP);
        $("#fldMB_TYPx").val(poMsg.fldMB_TYP_NM);
        $("#fldMB_TYP_NM").val(poMsg.fldMB_TYP_NM);
        $("#fldMB_SN").val(poMsg.fldMB_SN);
        $("#fldMB_CHIP").val(poMsg.fldMB_CHIP);
        $("#fldMB_NOTES").val(poMsg.fldMB_NOTES);
        //Memory / RAM
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
        //VGA
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
        //Harddisk 1
        $("#fldHDD1_PBLSHR_RUID").val(poMsg.fldHDD1_PBLSHR_RUID);
        $("#fldHDD1_PBLSHR_RUIDx").val(poMsg.fldHDD1_PBLSHR_NM);
        $("#fldHDD1_PBLSHR_NM").val(poMsg.fldHDD1_PBLSHR_NM);
        $("#fldHDD1_TYP").val(poMsg.fldHDD1_TYP);
        $("#fldHDD1_TYPx").val(poMsg.fldHDD1_TYP_NM);
        $("#fldHDD1_TYP_NM").val(poMsg.fldHDD1_TYP_NM);
        $("#fldHDD1_SPEED").val(poMsg.fldHDD1_SPEED);
        $("#fldHDD1_SIZE").val(poMsg.fldHDD1_SIZE);
        $("#fldHDD1_SIZE_UOM").val(poMsg.fldHDD1_SIZE_UOM);
        $("#fldHDD1_SIZE_UOM_NM").val(poMsg.fldHDD1_SIZE_UOM_NM);
        $("#fldHDD1_NOTES").val(poMsg.fldHDD1_NOTES);
        //Harddisk 2
        $("#fldHDD2_PBLSHR_RUID").val(poMsg.fldHDD2_PBLSHR_RUID);
        $("#fldHDD2_PBLSHR_RUIDx").val(poMsg.fldHDD2_PBLSHR_NM);
        $("#fldHDD2_PBLSHR_NM").val(poMsg.fldHDD2_PBLSHR_NM);
        $("#fldHDD2_TYP").val(poMsg.fldHDD2_TYP);
        $("#fldHDD2_TYPx").val(poMsg.fldHDD2_TYP_NM);
        $("#fldHDD2_TYP_NM").val(poMsg.fldHDD2_TYP_NM);
        $("#fldHDD2_SPEED").val(poMsg.fldHDD2_SPEED);
        $("#fldHDD2_SIZE").val(poMsg.fldHDD2_SIZE);
        $("#fldHDD2_SIZE_UOM").val(poMsg.fldHDD2_SIZE_UOM);
        $("#fldHDD2_SIZE_UOM_NM").val(poMsg.fldHDD2_SIZE_UOM_NM);
        $("#fldHDD2_NOTES").val(poMsg.fldHDD2_NOTES);
        //Optical drive 1
        $("#fldODD1_PBLSHR_RUID").val(poMsg.fldODD1_PBLSHR_RUID);
        $("#fldODD1_PBLSHR_RUIDx").val(poMsg.fldODD1_PBLSHR_NM);
        $("#fldODD1_PBLSHR_NM").val(poMsg.fldODD1_PBLSHR_NM);
        $("#fldODD1_TYP").val(poMsg.fldODD1_TYP);
        $("#fldODD1_TYPx").val(poMsg.fldODD1_TYP_NM);
        $("#fldODD1_TYP_NM").val(poMsg.fldODD1_TYP_NM);
        //Optical drive 2
        $("#fldODD2_PBLSHR_RUID").val(poMsg.fldODD2_PBLSHR_RUID);
        $("#fldODD2_PBLSHR_RUIDx").val(poMsg.fldODD2_PBLSHR_NM);
        $("#fldODD2_PBLSHR_NM").val(poMsg.fldODD2_PBLSHR_NM);
        $("#fldODD2_TYP").val(poMsg.fldODD2_TYP);
        $("#fldODD2_TYPx").val(poMsg.fldODD2_TYP_NM);
        $("#fldODD2_TYP_NM").val(poMsg.fldODD2_TYP_NM);
        $("#fldOTHER_NOTES").val(poMsg.fldOTHER_NOTES);

        //Main
        $("#fldMAIN_RSEQNO").val(poMsg.fldMAIN_RSEQNO);
        $("#fldMAIN_RUID").val(poMsg.fldMAIN_RUID);
        $("#fldMAIN_PROD_CTGRY").val(poMsg.fldMAIN_PROD_CTGRY);
        $("#fldMAIN_PROD_CTGRY_NM").val(poMsg.fldMAIN_PROD_CTGRY_NM);
        $("#fldMAIN_PROD_SUBCTGRY").val(poMsg.fldMAIN_PROD_SUBCTGRY);
        $("#fldMAIN_PROD_SUBCTGRY_NM").val(poMsg.fldMAIN_PROD_SUBCTGRY_NM);
        $("#fldMAIN_PROD_TYP").val(poMsg.fldMAIN_PROD_TYP);
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
        voFormDataCPU.fldADTRL_WKS = $("#fldADTRL_WKS").val();
        voFormDataCPU.fldADTRL_IP = $("#fldADTRL_IP").val();
        voFormDataCPU.fldADTRL_USR = $("#fldADTRL_USR").val();
        voFormDataCPU.fldADTRL_PRG = $("#fldADTRL_PRG").val();
        voFormDataCPU.fldADTRL_DT = $("#fldADTRL_DT").val();
        voFormDataCPU.fldRSEQNO = $("#fldRSEQNO").val();
        voFormDataCPU.fldRUID = $("#fldRUID").val();
        voFormDataCPU.fldDTA_STS = $("#fldDTA_STS").val();
        voFormDataCPU.fldTRIN_RUID = $("#fldTRIN_RUID").val();
        voFormDataCPU.fldWRN_NO = $("#fldWRN_NO").val();
        voFormDataCPU.fldWRN_YEARTERM = $("#fldWRN_YEARTERM").val();
        voFormDataCPU.fldWRN_PERIOD1 = $("#fldWRN_PERIOD1").val();
        voFormDataCPU.fldWRN_PERIOD2 = $("#fldWRN_PERIOD2").val();
        voFormDataCPU.fldPROC_PBLSHR_RUID = $("#fldPROC_PBLSHR_RUID").val();
        voFormDataCPU.fldPROC_PBLSHR_NM = $("#fldPROC_PBLSHR_NM").val();
        voFormDataCPU.fldPROC_TYP = $("#fldPROC_TYP").val();
        voFormDataCPU.fldPROC_TYP_NM = $("#fldPROC_TYP_NM").val();
        voFormDataCPU.fldPROC_SPEED = $("#fldPROC_SPEED").val();
        voFormDataCPU.fldPROC_CORE = $("#fldPROC_CORE").val();
        voFormDataCPU.fldPROC_NOTES = $("#fldPROC_NOTES").val();
        voFormDataCPU.fldMB_PBLSHR_RUID = $("#fldMB_PBLSHR_RUID").val();
        voFormDataCPU.fldMB_PBLSHR_NM = $("#fldMB_PBLSHR_NM").val();
        voFormDataCPU.fldMB_TYP = $("#fldMB_TYP").val();
        voFormDataCPU.fldMB_TYP_NM = $("#fldMB_TYP_NM").val();
        voFormDataCPU.fldMB_SN = $("#fldMB_SN").val();
        voFormDataCPU.fldMB_CHIP = $("#fldMB_CHIP").val();
        voFormDataCPU.fldMB_NOTES = $("#fldMB_NOTES").val();
        voFormDataCPU.fldRAM_PBLSHR_RUID = $("#fldRAM_PBLSHR_RUID").val();
        voFormDataCPU.fldRAM_PBLSHR_NM = $("#fldRAM_PBLSHR_NM").val();
        voFormDataCPU.fldRAM_TYP = $("#fldRAM_TYP").val();
        voFormDataCPU.fldRAM_TYP_NM = $("#fldRAM_TYP_NM").val();
        voFormDataCPU.fldRAM_MODUL = $("#fldRAM_MODUL").val();
        voFormDataCPU.fldRAM_INST = $("#fldRAM_INST").val();
        voFormDataCPU.fldRAM_INST_UOM = $("#fldRAM_INST_UOM").val();
        voFormDataCPU.fldRAM_INST_UOM_NM = $("#fldRAM_INST_UOM_NM").val();
        voFormDataCPU.fldRAM_NOTES = $("#fldRAM_NOTES").val();
        voFormDataCPU.fldVGA_PBLSHR_RUID = $("#fldVGA_PBLSHR_RUID").val();
        voFormDataCPU.fldVGA_PBLSHR_NM = $("#fldVGA_PBLSHR_NM").val();
        voFormDataCPU.fldVGA_TYP = $("#fldVGA_TYP").val();
        voFormDataCPU.fldVGA_TYP_NM = $("#fldVGA_TYP_NM").val();
        voFormDataCPU.fldVGA_CHIP = $("#fldVGA_CHIP").val();
        voFormDataCPU.fldVGA_MEM = $("#fldVGA_MEM").val();
        voFormDataCPU.fldVGA_MEM_UOM = $("#fldVGA_MEM_UOM").val();
        voFormDataCPU.fldVGA_MEM_UOM_NM = $("#fldVGA_MEM_UOM_NM").val();
        voFormDataCPU.fldVGA_NOTES = $("#fldVGA_NOTES").val();
        voFormDataCPU.fldHDD1_PBLSHR_RUID = $("#fldHDD1_PBLSHR_RUID").val();
        voFormDataCPU.fldHDD1_PBLSHR_NM = $("#fldHDD1_PBLSHR_NM").val();
        voFormDataCPU.fldHDD1_TYP = $("#fldHDD1_TYP").val();
        voFormDataCPU.fldHDD1_TYP_NM = $("#fldHDD1_TYP_NM").val();
        voFormDataCPU.fldHDD1_SPEED = $("#fldHDD1_SPEED").val();
        voFormDataCPU.fldHDD1_SIZE = $("#fldHDD1_SIZE").val();
        voFormDataCPU.fldHDD1_SIZE_UOM = $("#fldHDD1_SIZE_UOM").val();
        voFormDataCPU.fldHDD1_SIZE_UOM_NM = $("#fldHDD1_SIZE_UOM_NM").val();
        voFormDataCPU.fldHDD1_NOTES = $("#fldHDD1_NOTES").val();
        voFormDataCPU.fldHDD2_PBLSHR_RUID = $("#fldHDD2_PBLSHR_RUID").val();
        voFormDataCPU.fldHDD2_PBLSHR_NM = $("#fldHDD2_PBLSHR_NM").val();
        voFormDataCPU.fldHDD2_TYP = $("#fldHDD2_TYP").val();
        voFormDataCPU.fldHDD2_TYP_NM = $("#fldHDD2_TYP_NM").val();
        voFormDataCPU.fldHDD2_SPEED = $("#fldHDD2_SPEED").val();
        voFormDataCPU.fldHDD2_SIZE = $("#fldHDD2_SIZE").val();
        voFormDataCPU.fldHDD2_SIZE_UOM = $("#fldHDD2_SIZE_UOM").val();
        voFormDataCPU.fldHDD2_SIZE_UOM_NM = $("#fldHDD2_SIZE_UOM_NM").val();
        voFormDataCPU.fldHDD2_NOTES = $("#fldHDD2_NOTES").val();
        voFormDataCPU.fldODD1_PBLSHR_RUID = $("#fldODD1_PBLSHR_RUID").val();
        voFormDataCPU.fldODD1_PBLSHR_NM = $("#fldODD1_PBLSHR_NM").val();
        voFormDataCPU.fldODD1_TYP = $("#fldODD1_TYP").val();
        voFormDataCPU.fldODD1_TYP_NM = $("#fldODD1_TYP_NM").val();
        voFormDataCPU.fldODD2_PBLSHR_RUID = $("#fldODD2_PBLSHR_RUID").val();
        voFormDataCPU.fldODD2_PBLSHR_NM = $("#fldODD2_PBLSHR_NM").val();
        voFormDataCPU.fldODD2_TYP = $("#fldODD2_TYP").val();
        voFormDataCPU.fldODD2_TYP_NM = $("#fldODD2_TYP_NM").val();
        voFormDataCPU.fldOTHER_NOTES = $("#fldOTHER_NOTES").val();
        voFormDataCPU.fldMAIN_RSEQNO = $("#fldMAIN_RSEQNO").val();
        voFormDataCPU.fldMAIN_RUID = $("#fldMAIN_RUID").val();
        voFormDataCPU.fldMAIN_PROD_CTGRY = $("#fldMAIN_PROD_CTGRY").val();
        voFormDataCPU.fldMAIN_PROD_CTGRY_NM = $("#fldMAIN_PROD_CTGRY_NM").val();
        voFormDataCPU.fldMAIN_PROD_SUBCTGRY = $("#fldMAIN_PROD_SUBCTGRY").val();
        voFormDataCPU.fldMAIN_PROD_SUBCTGRY_NM = $("#fldMAIN_PROD_SUBCTGRY_NM").val();
        voFormDataCPU.fldMAIN_PROD_TYP = $("#fldMAIN_PROD_TYP").val();
        voFormDataCPU.fldMAIN_PROD_TYP_NM = $("#fldMAIN_PROD_TYP_NM").val();
        voFormDataCPU.fldMAIN_PROD_SUBTYP1 = $("#fldMAIN_PROD_SUBTYP1").val();
        voFormDataCPU.fldMAIN_PROD_SUBTYP2 = $("#fldMAIN_PROD_SUBTYP2").val();
        voFormDataCPU.fldMAIN_PROD_SUBTYP3 = $("#fldMAIN_PROD_SUBTYP3").val();
        voFormDataCPU.fldMAIN_PROD_SUBTYP4 = $("#fldMAIN_PROD_SUBTYP4").val();
        voFormDataCPU.fldMAIN_PROD_SUBTYP5 = $("#fldMAIN_PROD_SUBTYP5").val();
        voFormDataCPU.fldMAIN_PROD_ITMNO = $("#fldMAIN_PROD_ITMNO").val();
        voFormDataCPU.fldMAIN_PBLSHR_RUID = $("#fldMAIN_PBLSHR_RUID").val();
        voFormDataCPU.fldMAIN_PBLSHR_NM = $("#fldMAIN_PBLSHR_NM").val();
        voFormDataCPU.fldMAIN_BIZ_PNR_RUID = $("#fldMAIN_BIZ_PNR_RUID").val();
        voFormDataCPU.fldMAIN_BIZ_PNR_NM = $("#fldMAIN_BIZ_PNR_NM").val();
        voFormDataCPU.fldMAIN_PO_NO = $("#fldMAIN_PO_NO").val();
        voFormDataCPU.fldMAIN_WO_NO = $("#fldMAIN_WO_NO").val();
        voFormDataCPU.fldMAIN_TRN_DT = $("#fldMAIN_TRN_DT").val();
        voFormDataCPU.fldMAIN_TRN_NO = $("#fldMAIN_TRN_NO").val();
        voFormDataCPU.fldMAIN_TRN_QTY = $("#fldMAIN_TRN_QTY").val();
        voFormDataCPU.fldMAIN_TRN_PRICE = $("#fldMAIN_TRN_PRICE").val();
        voFormDataCPU.fldMAIN_TRN_AMNT = $("#fldMAIN_TRN_AMNT").val();

        // Create a data transfer object (DTO) with the proper structure.
        DTO = { 'voFormDataCPU': voFormDataCPU };

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
        var vsUrl = "frmStockIn.asmx/doInsertDataCPU";
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
        var vsUrl = "frmStockIn.asmx/doUpdateDataCPU";
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
        runAJAX_CRUD("frmStockIn.asmx/doDeleteDataCPU", DTO);
        return vReturn;
    }


});
