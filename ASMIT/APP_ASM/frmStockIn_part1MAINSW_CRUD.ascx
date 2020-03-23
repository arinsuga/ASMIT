<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="frmStockIn_part1MAINSW_CRUD.ascx.cs" Inherits="HDPortal.APP_ASM.frmStockIn_part1MAINSW_CRUD" %>


<fieldset class="BoxFieldGroup">
    <table class="clsEntryForm2">
        <tr>
           <td><label for="lblMAIN_PROD_ITMNO" id="lblMAIN_PROD_ITMNO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_ITMNO")%></label></td>
           <td><label for="lblMAIN_PROD_ITMNOx" id="lblMAIN_PROD_ITMNOx">:</label></td>
           <td>
                <input type="text" id="fldMAIN_PROD_ITMNO" class="FieldAsNo FieldEnableOnNew FieldAsMandatory" />

                <span><input type="button" id="LKP_MAIN_PROD_ITMNO" class="CmdAsLookUpKey cmdLookUp IconLink" /></span>
                <span><input type="button" id="cmdBrowseByMAIN_PROD_ITMNO" class="CmdAsLinkKey CmdLink" value="<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("BTN_BROWSE")%>" /></span>
                <span id="imgMAIN_PROD_ITMNO" class="imgLoadHide"><img src="../Contents/APP_ASM/images/loading.gif" /></span>
                <span id="fldMAIN_PROD_ITMNOxInfo1"></span>
           </td>
        </tr>
        <tr>
           <td><label for="lblMAIN_PROD_TYP" id="lblMAIN_PROD_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_TYP_AS_GEN")%></label></td>
           <td><label for="lblMAIN_PROD_TYPx" id="lblMAIN_PROD_TYPx">:</label></td>
           <td>
               <input type="hidden" id="fldMAIN_PROD_TYP" class="FieldAsMandatory" />
               <input type="hidden" id="fldMAIN_PROD_TYP_NM" />
               <span><input type="text" id="fldMAIN_PROD_TYPx" class="FieldAsLabelDesc" readonly /></span>
               <span><input type="button" id="LKP_MAIN_PROD_TYP" class="CmdAsLookUp cmdLookUp IconLink" /></span>
               <span id="imgMAIN_PROD_TYP" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
               <span id="fldMAIN_PROD_TYPxInfo1"></span>
           </td>
        </tr>
        <tr>
           <td><label for="lblMAIN_PBLSHR_RUID" id="lblMAIN_PBLSHR_RUID">Pengembang Software</label></td>
           <td><label for="lblMAIN_PBLSHR_RUIDx" id="lblMAIN_PBLSHR_RUIDx">:</label></td>
           <td>
               <input type="hidden" id="fldMAIN_PBLSHR_RUID" />
               <span><input type="text" id="fldMAIN_PBLSHR_NM" class="FieldAsLabelDesc" readonly /></span>
               <span><input type="button" id="LKP_MAIN_PBLSHR" class="CmdAsLookUp cmdLookUp IconLink" /></span>
               <span id="imgMAIN_PBLSHR" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
               <span id="fldMAIN_PBLSHRxInfo1"></span>
           </td>
        </tr>
        <tr>
            <td><label for="lblPROD_NM" id="lblPROD_NM">Nama Software</label></td>
            <td><label for="lblPROD_NMx" id="lblPROD_NMx">:</label></td>
            <td><input type="text" id="fldPROD_NM" class="FieldAsName" /></td>
        </tr>

        <tr><td colspan="3"><hr /></td></tr>

        <tr>
            <td><label for="lblSUBSCRIPTION_SN" id="lblSUBSCRIPTION_SN">Subscription SN</label></td>
            <td><label for="lblSUBSCRIPTION_SNx" id="lblSUBSCRIPTION_SNx">:</label></td>
            <td><input type="text" id="fldSUBSCRIPTION_SN" class="FieldAsNo" /></td>
        </tr>
        <tr>
            <td><label for="lblSUBSCRIPTION_VER" id="lblSUBSCRIPTION_VER">Subscription Ver.</label></td>
            <td><label for="lblSUBSCRIPTION_VERx" id="lblSUBSCRIPTION_VERx">:</label></td>
            <td><input type="text" id="fldSUBSCRIPTION_VER" class="FieldAsNo" /></td>
        </tr>
        <tr>
            <td><label for="lblREQUEST_CODE" id="lblREQUEST_CODE">Request Code</label></td>
            <td><label for="lblREQUEST_CODEx" id="lblREQUEST_CODEx">:</label></td>
            <td><input type="text" id="fldREQUEST_CODE" class="FieldAsNo" /></td>
        </tr>
        <tr>
            <td><label for="lblPRODUCT_ID" id="lblPRODUCT_ID">Product ID</label></td>
            <td><label for="lblPRODUCT_IDx" id="lblPRODUCT_IDx">:</label></td>
            <td><input type="text" id="fldPRODUCT_ID" class="FieldAsNo" /></td>
        </tr>
        <tr>
            <td><label for="lblACTIVATION_CODE" id="lblACTIVATION_CODE">Activation Code</label></td>
            <td><label for="lblACTIVATION_CODEx" id="lblACTIVATION_CODEx">:</label></td>
            <td><input type="text" id="fldACTIVATION_CODE" class="FieldAsNo" /></td>
        </tr>

        <tr>
            <td><label for="lblWRN_PERIOD1" id="lblWRN_PERIOD1">Masa Berlaku License</label></td>
            <td><label for="lblWRN_PERIOD1x" id="lblWRN_PERIOD1x">:</label></td>
            <td>
                <input type="text" id="fldLICENSE_START_DT" class="FieldAsDate" />
                <span><input type="button" id="cmdLICENSE_START_DT" class="cmdCalender IconLink" /></span>
                 - 
                <input type="text" id="fldLICENSE_END_DT" class="FieldAsDate" />
                <span><input type="button" id="cmdLICENSE_END_DT" class="cmdCalender IconLink" /></span>
            </td>
        </tr>

        <tr><td colspan="3"><hr /></td></tr>

        <tr>
           <td><label for="lblMAIN_TRN_DT" id="lblMAIN_TRN_DT"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("TRN_DT")%></label></td>
           <td><label for="lblMAIN_TRN_DTx" id="lblMAIN_TRN_DTx">:</label></td>
           <td>
            <input type="text" id="fldMAIN_TRN_DT" class="FieldAsDate FieldAsMandatory" />
            <span><input type="button" id="cmdMAIN_TRN_DT" class="cmdCalender IconLink" /></span>
            <span id="fldMAIN_TRN_DTxInfo1"></span>
           </td>
        </tr>
        <tr>
           <td><label for="lblMAIN_PO_NO" id="lblMAIN_PO_NO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PO_NO")%></label></td>
           <td><label for="lblMAIN_PO_NOx" id="lblMAIN_PO_NOx">:</label></td>
           <td><input type="text" id="fldMAIN_PO_NO" class="FieldAsNo" /></td>
        </tr>
        <tr>
           <td><label for="lblMAIN_WO_NO" id="lblMAIN_WO_NO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WO_NO")%></label></td>
           <td><label for="lblMAIN_WO_NOx" id="lblMAIN_WO_NOx">:</label></td>
           <td><input type="text" id="fldMAIN_WO_NO" class="FieldAsNo" /></td>
        </tr>
        <tr>
           <td><label for="lblMAIN_BIZ_PNR_NM" id="lblMAIN_BIZ_PNR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("BIZ_PNR_AS_SUPPLIER")%></label></td>
           <td><label for="lblMAIN_BIZ_PNR_NMx" id="lblMAIN_BIZ_PNR_NMx">:</label></td>
           <td>
               <input type="hidden" id="fldMAIN_BIZ_PNR_RUID" />
               <input type="hidden" id="fldMAIN_BIZ_PNR_NM" />
               <span><input type="text" id="fldMAIN_BIZ_PNR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
               <span><input type="button" id="LKP_MAIN_BIZ_PNR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
               <span id="imgMAIN_BIZ_PNR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
           </td>
        </tr>
    </table>
</fieldset>

<div id="HideMAIN">

    <input type="hidden" id="fldMAIN_PROD_SUBTYP1" />

    <input type="hidden" id="fldMAIN_RSEQNO" />
    <input type="hidden" id="fldMAIN_RUID" />
    <input type="hidden" id="fldMAIN_PROD_CTGRY "/>
    <input type="hidden" id="fldMAIN_PROD_CTGRY_NM "/>
    <input type="hidden" id="fldMAIN_PROD_SUBCTGRY" />
    <input type="hidden" id="fldMAIN_PROD_SUBCTGRY_NM" />
    <input type="hidden" id="fldMAIN_PROD_SUBTYP2 "/>
    <input type="hidden" id="fldMAIN_PROD_SUBTYP3 "/>
    <input type="hidden" id="fldMAIN_PROD_SUBTYP4 "/>
    <input type="hidden" id="fldMAIN_PROD_SUBTYP5 "/>
    <input type="hidden" id="fldMAIN_TRN_NO "/>
    <input type="hidden" id="fldMAIN_TRN_QTY "/>
    <input type="hidden" id="fldMAIN_TRN_PRICE "/>
    <input type="hidden" id="fldMAIN_TRN_AMNT "/>
</div>
