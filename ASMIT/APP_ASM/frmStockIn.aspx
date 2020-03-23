<%@ Page Title="" Language="C#" MasterPageFile="~/APP_ASM/MainASM.Master" AutoEventWireup="true" CodeBehind="frmStockIn.aspx.cs" Inherits="HDPortal.APP_ASM.frmStockIn" %>
<%@ Register TagPrefix="ctr" TagName="MyUserControl" Src="frmButtonCRUD.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleHolder" runat="server">
<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("FRM_CRUD_ASM_STOCKIN")%>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="PageTitle" runat="server">
<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("FRM_CRUD_ASM_STOCKIN")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadCustomHolder" runat="server">
    <!--Custom CSS -->
    <!--Custom JS -->
    <script src="frmStockIn.js" type="text/javascript"></script>
    <script type="text/javascript">
        //Variable Initialize
        //var vsFrmMainTitle = '<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("FRM_CRUD_ASM_STOCKIN")%>';
        var vsFrmMainTitle = '<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("FRM_CRUD_ASM_STOCKIN")%>';
    </script>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageHeaderHolder" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageContentHolder" runat="server">

    <form id="frmEntStockIn" runat="server">
        <fieldset class="BoxFieldGroup">
            <table class="clsEntryForm2">
                        <tr>
                            <td><label for="lblPROD_ITMNO" id="lblPROD_ITMNO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_ITMNO")%></label></td>
                            <td><label for="lblPROD_ITMNOx" id="lblPROD_ITMNOx">:</label></td>
                            <td>
                            <input type="text" id="fldPROD_ITMNO" class="FieldAsNo FieldEnableOnNew FieldAsMandatory" />
                            <span><input type="button" id="LKP_PROD_ITMNO" class="CmdAsLookUpKey cmdLookUp IconLink" /></span>
                            <span><input type="button" id="cmdBrowseByPROD_ITMNO" class="CmdAsLinkKey CmdLink" value="<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("BTN_BROWSE")%>" /></span>
                            <span id="imgPROD_ITMNO" class="imgLoadHide"><img src="../Contents/APP_ASM/images/loading.gif" /></span>
                            <span id="fldPROD_ITMNOxInfo1"></span>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="lblPROD_SUBCTGRY" id="lblPROD_SUBCTGRY"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_SUBCTGRY")%></label></td>
                            <td><label for="lblPROD_SUBCTGRYx" id="lblPROD_SUBCTGRYx">:</label></td>
                            <td>
                            <input type="text" id="fldPROD_SUBCTGRY" class="FieldAsRUID FieldAsReadOnly FieldAsMandatory" />
                            <span><input type="button" id="LKP_PROD_SUBCTGRY" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                            <span><input type="text" id="fldPROD_SUBCTGRYx" class="FieldAsLabelDesc" readonly /></span>
                            <span id="imgPROD_SUBCTGRY" class="imgLoadHide"><img src="../Contents/APP_ASM/images/loading.gif" /></span>
                            <span id="fldPROD_SUBCTGRYxInfo1"></span>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="lblPROD_TYP" id="lblPROD_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_TYP")%></label></td>
                            <td><label for="lblPROD_TYPx" id="lblPROD_TYPx">:</label></td>
                            <td>
                            <input type="text" id="fldPROD_TYP" class="FieldAsRUID FieldAsReadOnly FieldAsMandatory" />
                            <span><input type="button" id="LKP_PROD_TYP" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                            <span><input type="text" id="fldPROD_TYPx" class="FieldAsLabelDesc" readonly /></span>
                            <span id="imgPROD_TYP" class="imgLoadHide"><img src="../Contents/APP_ASM/images/loading.gif" /></span>
                            <span id="fldPROD_TYPxInfo1"></span>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="lblPBLSHR_RUID" id="lblPBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PBLSHR_RUID")%></label></td>
                            <td><label for="lblPBLSHR_RUIDx" id="lblPBLSHR_RUIDx">:</label></td>
                            <td>
                            <input type="text" id="fldPBLSHR_RUID" class="FieldAsRUID FieldAsReadOnly" />
                            <span><input type="button" id="LKP_PBLSHR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                            <span><input type="text" id="fldPBLSHR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                            <span id="imgPBLSHR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/loading.gif" /></span>
                            </td>
                        </tr>
            </table>
        </fieldset>

        <fieldset class="BoxFieldGroup">
            <table class="clsEntryForm2">
                        <tr>
                            <td><label for="lblPO_NO" id="lblPO_NO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PO_NO")%></label></td>
                            <td><label for="lblPO_NOx" id="lblPO_NOx">:</label></td>
                            <td><input type="text" id="fldPO_NO" class="FieldAsNo" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblWO_NO" id="lblWO_NO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WO_NO")%></label></td>
                            <td><label for="lblWO_NOx" id="lblWO_NOx">:</label></td>
                            <td><input type="text" id="fldWO_NO" class="FieldAsNo" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblTRN_DT" id="lblTRN_DT"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("TRN_DT")%></label></td>
                            <td><label for="lblTRN_DTx" id="lblTRN_DTx">:</label></td>
                            <td>
                            <input type="text" id="fldTRN_DT" class="FieldAsDate FieldAsMandatory" />
                            <span><input type="button" id="cmdTRN_DT" class="cmdCalender IconLink" /></span>
                            <span id="fldTRN_DTxInfo1"></span>
                            </td>
                        </tr>

                        <tr>
                            <td><label for="lblTRN_QTY" id="lblTRN_QTY"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("TRN_QTY")%></label></td>
                            <td><label for="lblTRN_QTYx" id="lblTRN_QTYx">:</label></td>
                            <td><input type="text" id="fldTRN_QTY" class="FieldAsInteger" value="1" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblTRN_PRICE" id="lblTRN_PRICE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("TRN_PRICE")%></label></td>
                            <td><label for="lblTRN_PRICEx" id="lblTRN_PRICEx">:</label></td>
                            <td><input type="text" id="fldTRN_PRICE" class="FieldAsDecimal" value="0.00" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblTRN_AMNT" id="lblTRN_AMNT"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("TRN_AMNT")%></label></td>
                            <td><label for="lblTRN_AMNTx" id="lblTRN_AMNTx">:</label></td>
                            <td><input type="text" id="fldTRN_AMNT" class="FieldAsDecimal FieldAsReadOnly" value="0.00" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblADD_NOTE" id="lblADD_NOTE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("NOTES")%></label></td>
                            <td><label for="lblADD_NOTEx" id="lblADD_NOTEx">:</label></td>
                            <td><textarea id="fldADD_NOTE" class="FieldAsNote"></textarea></td>
                        </tr>

            </table>
        </fieldset>
        
        <ctr:MyUserControl runat="server" ID="MyUserControlID" />
        
        <div id="HiddenDiv" style="visibility: hidden">
            <table id="HiddenField">
                        <tr>
                            <td><label for="lblADTRL_WKS" id="lblADTRL_WKS"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ADTRL_WKS")%></label></td>
                            <td><label for="lblADTRL_WKSx" id="lblADTRL_WKSx">:</label></td>
                            <td><input type="text" id="fldADTRL_WKS" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblADTRL_IP" id="lblADTRL_IP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ADTRL_IP")%></label></td>
                            <td><label for="lblADTRL_IPx" id="lblADTRL_IPx">:</label></td>
                            <td><input type="text" id="fldADTRL_IP" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblADTRL_USR" id="lblADTRL_USR"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ADTRL_USR")%></label></td>
                            <td><label for="lblADTRL_USRx" id="lblADTRL_USRx">:</label></td>
                            <td><input type="text" id="fldADTRL_USR" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblADTRL_PRG" id="lblADTRL_PRG"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ADTRL_PRG")%></label></td>
                            <td><label for="lblADTRL_PRGx" id="lblADTRL_PRGx">:</label></td>
                            <td><input type="text" id="fldADTRL_PRG" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblADTRL_DT" id="lblADTRL_DT"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ADTRL_DT")%></label></td>
                            <td><label for="lblADTRL_DTx" id="lblADTRL_DTx">:</label></td>
                            <td><input type="text" id="fldADTRL_DT" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblRSEQNO" id="lblRSEQNO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RSEQNO")%></label></td>
                            <td><label for="lblRSEQNOx" id="lblRSEQNOx">:</label></td>
                            <td><input type="text" id="fldRSEQNO" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblRUID" id="lblRUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RUID")%></label></td>
                            <td><label for="lblRUIDx" id="lblRUIDx">:</label></td>
                            <td><input type="text" id="fldRUID" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblDTA_STS" id="lblDTA_STS"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("DTA_STS")%></label></td>
                            <td><label for="lblDTA_STSx" id="lblDTA_STSx">:</label></td>
                            <td><input type="text" id="fldDTA_STS" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblBP_STS" id="lblBP_STS"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("BP_STS")%></label></td>
                            <td><label for="lblBP_STSx" id="lblBP_STSx">:</label></td>
                            <td><input type="text" id="fldBP_STS" /></td>
                        </tr>
                        
                        
                        <tr>
                            <td><label for="lblPROD_SUBTYP1" id="lblPROD_SUBTYP1"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_SUBTYP1")%></label></td>
                            <td><label for="lblPROD_SUBTYP1x" id="lblPROD_SUBTYP1x">:</label></td>
                            <td><input type="text" id="fldPROD_SUBTYP1" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblPROD_SUBTYP2" id="lblPROD_SUBTYP2"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_SUBTYP2")%></label></td>
                            <td><label for="lblPROD_SUBTYP2x" id="lblPROD_SUBTYP2x">:</label></td>
                            <td><input type="text" id="fldPROD_SUBTYP2" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblPROD_SUBTYP3" id="lblPROD_SUBTYP3"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_SUBTYP3")%></label></td>
                            <td><label for="lblPROD_SUBTYP3x" id="lblPROD_SUBTYP3x">:</label></td>
                            <td><input type="text" id="fldPROD_SUBTYP3" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblPROD_SUBTYP4" id="lblPROD_SUBTYP4"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_SUBTYP4")%></label></td>
                            <td><label for="lblPROD_SUBTYP4x" id="lblPROD_SUBTYP4x">:</label></td>
                            <td><input type="text" id="fldPROD_SUBTYP4" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblPROD_SUBTYP5" id="lblPROD_SUBTYP5"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_SUBTYP5")%></label></td>
                            <td><label for="lblPROD_SUBTYP5x" id="lblPROD_SUBTYP5x">:</label></td>
                            <td><input type="text" id="fldPROD_SUBTYP5" /></td>
                        </tr>


                        <tr>
                            <td><label for="lblRMK1" id="lblRMK1"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RMK1")%></label></td>
                            <td><label for="lblRMK1x" id="lblRMK1x">:</label></td>
                            <td><input type="text" id="fldRMK1" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblRMK2" id="lblRMK2"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RMK2")%></label></td>
                            <td><label for="lblRMK2x" id="lblRMK2x">:</label></td>
                            <td><input type="text" id="fldRMK2" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblRMK3" id="lblRMK3"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RMK3")%></label></td>
                            <td><label for="lblRMK3x" id="lblRMK3x">:</label></td>
                            <td><input type="text" id="fldRMK3" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblRMK4" id="lblRMK4"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RMK4")%></label></td>
                            <td><label for="lblRMK4x" id="lblRMK4x">:</label></td>
                            <td><input type="text" id="fldRMK4" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblRMK5" id="lblRMK5"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RMK5")%></label></td>
                            <td><label for="lblRMK5x" id="lblRMK5x">:</label></td>
                            <td><input type="text" id="fldRMK5" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblADD_FLD1" id="lblADD_FLD1"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ADD_FLD1")%></label></td>
                            <td><label for="lblADD_FLD1x" id="lblADD_FLD1x">:</label></td>
                            <td><input type="text" id="fldADD_FLD1" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblADD_FLD2" id="lblADD_FLD2"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ADD_FLD2")%></label></td>
                            <td><label for="lblADD_FLD2x" id="lblADD_FLD2x">:</label></td>
                            <td><input type="text" id="fldADD_FLD2" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblADD_FLD3" id="lblADD_FLD3"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ADD_FLD3")%></label></td>
                            <td><label for="lblADD_FLD3x" id="lblADD_FLD3x">:</label></td>
                            <td><input type="text" id="fldADD_FLD3" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblADD_FLD4" id="lblADD_FLD4"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ADD_FLD4")%></label></td>
                            <td><label for="lblADD_FLD4x" id="lblADD_FLD4x">:</label></td>
                            <td><input type="text" id="fldADD_FLD4" /></td>
                        </tr>

                        <tr>
                            <td><label for="lblADD_FLD5" id="lblADD_FLD5"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ADD_FLD5")%></label></td>
                            <td><label for="lblADD_FLD5x" id="lblADD_FLD5x">:</label></td>
                            <td><input type="text" id="fldADD_FLD5" /></td>
                        </tr>

                    <tr>
                        <td><label for="lblBIZ_PNR_RUID" id="lblBIZ_PNR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("BIZ_PNR_RUID")%></label></td>
                        <td><label for="lblBIZ_PNR_RUIDx" id="lblBIZ_PNR_RUIDx">:</label></td>
                        <td>
                        <input type="text" id="fldBIZ_PNR_RUID" />
                        <span><input type="button" id="LKP_BIZ_PNR_RUID" class="IconLink cmdLookUp" /></span>
                        <span><label for="lblBIZ_PNR_RUIDx1" id="lblBIZ_PNR_RUIDx1"></label></span>
                        </td>
                    </tr>

                    <tr>
                        <td><label for="lblPROD_CTGRY" id="lblPROD_CTGRY"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_CTGRY")%></label></td>
                        <td><label for="lblPROD_CTGRYx" id="lblPROD_CTGRYx">:</label></td>
                        <td>
                        <input type="text" id="fldPROD_CTGRY" value="<%=HDPortal.Helper.clsGeneral.LKPInfo.getLKPComponentCtgryHWIT() %>" class="FieldAsRUID class="FieldAsReadOnly"" readonly />
                        <span><input type="text" id"fldPROD_CTGRYx" class="FieldAsLabelDesc" value="<%=HDPortal.Helper.clsGeneral.LKPInfo.getLKPComponentCtgryHWITDesc() %>" /></span>
                        </td>
                    </tr>

                        <tr>
                            <td><label for="lblTRN_NO" id="lblTRN_NO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("TRN_NO")%></label></td>
                            <td><label for="lblTRN_NOx" id="lblTRN_NOx">:</label></td>
                            <td>
                            <input type="text" id="fldTRN_NO" class="FieldAsNo FieldEnableOnNew" />
                            <span><input type="button" id="LKP_TRN_NO" class="IconLink cmdLookUp" /></span>
                            <span><input type="button" id="cmdBrowseByTRN_NO" class="CmdLink" value="<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("BTN_BROWSE")%>" /></span>
                            </td>
                        </tr>
                        
            </table>
        </div>
            
    </form>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="PageFooterHolder" runat="server">
</asp:Content>
