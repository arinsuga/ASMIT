<%@ Control Language="C#" %>

<% 
        string vsSearchBy = HDPortal.Helper.clsGeneral.SEARCH_METHOD.getSM_RUID();
        string vsRUID_TOVIEW = Request["RUID_TOVIEW"]; //Request["RUID_TOVIEW"];
        //HDPortal.Model.modASMStockInCPU.SMStockInCPUDS voSMStockInCPUDS = new HDPortal.Model.modASMStockInCPU.SMStockInCPUDS(vsSearchBy, vsRUID_TOVIEW);
        HDPortal.Model.modASMStockIn.ASMStockInDSInfo voASMStockInDSInfo = new HDPortal.Model.modASMStockIn.ASMStockInDSInfo(vsSearchBy, vsRUID_TOVIEW);
%>

<% if (voASMStockInDSInfo.TBLData.Length > 0) { %>
    <fieldset class="BoxFieldGroup">
        <table class="clsEntryForm2">
            <tr>
               <td><label for="lblMAIN_PROD_ITMNO" id="lblMAIN_PROD_ITMNO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_ITMNO")%></label></td>
               <td><label for="lblMAIN_PROD_ITMNOx" id="lblMAIN_PROD_ITMNOx">:</label></td>
               <td><%=voASMStockInDSInfo.TBLData[0].PROD_ITMNO%></td>
            </tr>
            <tr>
               <td><label for="lblMAIN_PROD_TYP" id="lblMAIN_PROD_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_TYP_AS_GEN")%></label></td>
               <td><label for="lblMAIN_PROD_TYPx" id="lblMAIN_PROD_TYPx">:</label></td>
               <td><%=voASMStockInDSInfo.TBLData[0].PROD_TYP_NM %></td>
            </tr>
            <tr>
               <td><label for="lblMAIN_PBLSHR_NM" id="lblMAIN_PBLSHR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PBLSHR_NM")%></label></td>
               <td><label for="lblMAIN_PBLSHR_NMx" id="lblMAIN_PBLSHR_NMx">:</label></td>
               <td><%=voASMStockInDSInfo.TBLData[0].PBLSHR_NM%></td>
            </tr>
            <tr>
               <td><label for="lblMAIN_PROD_SUBTYP1" id="lblMAIN_PROD_SUBTYP1"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_SUBTYP1_AS_MODEL")%></label></td>
               <td><label for="lblMAIN_PROD_SUBTYP1x" id="lblMAIN_PROD_SUBTYP1x">:</label></td>
               <td><%=voASMStockInDSInfo.TBLData[0].PROD_SUBTYP1%></td>
            </tr>

            <tr><td colspan="3"><hr /></td></tr>

            <tr>
               <td><label for="lblMAIN_TRN_DT" id="lblMAIN_TRN_DT"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("TRN_DT")%></label></td>
               <td><label for="lblMAIN_TRN_DTx" id="lblMAIN_TRN_DTx">:</label></td>
               <td><%=HDPortal.Helper.clsConvertionAndFormating.ConvertDateToStringDateShortFmt(voASMStockInDSInfo.TBLData[0].TRN_DT)%></td>
            </tr>
            <tr>
               <td><label for="lblMAIN_PO_NO" id="lblMAIN_PO_NO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PO_NO")%></label></td>
               <td><label for="lblMAIN_PO_NOx" id="lblMAIN_PO_NOx">:</label></td>
               <td><%=voASMStockInDSInfo.TBLData[0].PO_NO%></td>
            </tr>
            <tr>
               <td><label for="lblMAIN_WO_NO" id="lblMAIN_WO_NO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WO_NO")%></label></td>
               <td><label for="lblMAIN_WO_NOx" id="lblMAIN_WO_NOx">:</label></td>
               <td><%=voASMStockInDSInfo.TBLData[0].WO_NO%></td>
            </tr>
            <tr>
               <td><label for="lblMAIN_BIZ_PNR_NM" id="lblMAIN_BIZ_PNR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("BIZ_PNR_AS_SUPPLIER")%></label></td>
               <td><label for="lblMAIN_BIZ_PNR_NMx" id="lblMAIN_BIZ_PNR_NMx">:</label></td>
               <td><%=voASMStockInDSInfo.TBLData[0].BIZ_PNR_NM%></td>
            </tr>
        </table>
    </fieldset>
<% } %>

