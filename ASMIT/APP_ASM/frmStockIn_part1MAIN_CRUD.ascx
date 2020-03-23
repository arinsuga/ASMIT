<%@ Control Language="C#" %>

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
           <td><label for="lblMAIN_PBLSHR_NM" id="lblMAIN_PBLSHR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PBLSHR_NM")%></label></td>
           <td><label for="lblMAIN_PBLSHR_NMx" id="lblMAIN_PBLSHR_NMx">:</label></td>
           <td>
               <input type="hidden" id="fldMAIN_PBLSHR_RUID" />
               <input type="hidden" id="fldMAIN_PBLSHR_NM" />
               <span><input type="text" id="fldMAIN_PBLSHR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
               <span><input type="button" id="LKP_MAIN_PBLSHR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
               <span id="imgMAIN_PBLSHR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
           </td>
        </tr>
        <tr>
           <td><label for="lblMAIN_PROD_SUBTYP1" id="lblMAIN_PROD_SUBTYP1"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_SUBTYP1_AS_MODEL")%></label></td>
           <td><label for="lblMAIN_PROD_SUBTYP1x" id="lblMAIN_PROD_SUBTYP1x">:</label></td>
           <td><input type="text" id="fldMAIN_PROD_SUBTYP1" class="FieldAsName" /></td>
        </tr>

        <tr><td colspan="3"><hr /></td></tr>

        <tr>
            <td><label for="lblWRN_NO" id="lblWRN_NO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WRN_NO")%></label></td>
            <td><label for="lblWRN_NOx" id="lblWRN_NOx">:</label></td>
            <td><input type="text" id="fldWRN_NO" /></td>
        </tr>

        <tr>
            <td><label for="lblWRN_YEARTERM" id="lblWRN_YEARTERM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WRN_YEARTERM")%></label></td>
            <td><label for="lblWRN_YEARTERMx" id="lblWRN_YEARTERMx">:</label></td>
            <td>
                <input type="text" id="fldWRN_YEARTERM" class="FieldAsInteger" style="width:20px;" />
                <%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("YEARS")%>
            </td>
        </tr>

        <tr>
            <td><label for="lblWRN_PERIOD1" id="lblWRN_PERIOD1"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WRN_PERIOD")%></label></td>
            <td><label for="lblWRN_PERIOD1x" id="lblWRN_PERIOD1x">:</label></td>
            <td>
                <input type="text" id="fldWRN_PERIOD1" class="FieldAsDate" />
                <span><input type="button" id="cmdWRN_PERIOD1" class="cmdCalender IconLink" /></span>
                 - 
                <input type="text" id="fldWRN_PERIOD2" class="FieldAsDate" />
                <span><input type="button" id="cmdWRN_PERIOD2" class="cmdCalender IconLink" /></span>
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
