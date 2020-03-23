<%@ Page Title="" Language="C#" MasterPageFile="~/APP_ASM/MainASM.Master" AutoEventWireup="true" CodeBehind="frmStockOutSW.aspx.cs" Inherits="HDPortal.APP_ASM.frmStockOutSW" %>
<%@ Register TagPrefix="ctr" TagName="MyUserControl" Src="frmButtonCRUD.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleHolder" runat="server">
Penggunaan Software
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="PageTitle" runat="server">
Penggunaan Software
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadCustomHolder" runat="server">
    <!--Custom CSS -->
    <!--Custom JS -->
    <script src="frmStockOutSW.js" type="text/javascript"></script>
    <script type="text/javascript">
        //Variable Initialize
        var vsFrmMainTitle = 'Penggunaan Software';
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageHeaderHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageContentHolder" runat="server">
    <form id="frmEntStockOut" runat="server">

<input type="hidden" id="fldASST_STS_RUID" />
<input type="hidden" id="fldDOC_REFF_NO"/>
<input type="hidden" id="fldASST_TAG_ID" />
<input type="hidden" id="fldPBLSHR_RUIDx" />
<input type="hidden" id="fldVERSION" />
<input type="hidden" id="fldRUID" />
<input type="hidden" id="fldSTOCKIN_RUID" />


            <table class="clsEntryForm2">
                    <tr>
                        <td><label for="lblPROD_ITMNO" id="lblPROD_ITMNO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_ITMNO")%></label></td>
                        <td><label for="lblPROD_ITMNOx" id="lblPROD_ITMNOx">:</label></td>
                        <td>
                        <input type="text" id="fldPROD_ITMNO" class="FieldAsNo FieldAsReadOnly" />
                        <span>
                        <input type="button" id="LKP_PROD_ITMNO" class="CmdAsLookUpAlwaysEnable cmdLookUp IconLink" />
                        </span>
                        <span>
                        <input type="button" id="cmdBrowseByPROD_ITMNO" class="CmdAsLinkAlwaysEnable CmdLink" value="<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("BTN_BROWSE")%>" />
                        </span>
                        <span id="imgPROD_ITMNO" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="lblPROD_SUBCTGRY" id="lblPROD_SUBCTGRY"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_SUBCTGRY")%></label></td>
                        <td><label for="lblPROD_SUBCTGRYx" id="lblPROD_SUBCTGRYx">:</label></td>
                        <td>
                        <span><input type="text" id="fldPROD_SUBCTGRYx" class="FieldAsLabelDesc" readonly /></span>
                        <span id="imgPROD_SUBCTGRY" class="imgLoadHide"><img src="../Contents/APP_ASM/images/loading.gif" /></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="lblPROD_TYP" id="lblPROD_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_TYP")%></label></td>
                        <td><label for="lblPROD_TYPx" id="lblPROD_TYPx">:</label></td>
                        <td>
                        <span><input type="text" id="fldPROD_TYPx" class="FieldAsLabelDesc" readonly /></span>
                        <span id="imgPROD_TYP" class="imgLoadHide"><img src="../Contents/APP_ASM/images/loading.gif" /></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="lblADD_FLD1" id="lblADD_FLD1">Nama Software</label></td>
                        <td><label for="lblADD_FLD1x" id="lblADD_FLD1x">:</label></td>
                        <td><input type="text" id="fldADD_FLD1" class="FieldAsName FieldAsReadOnly" /></td>
                    </tr>

                    <tr><td colspan="3"><hr /></td></tr>

                    <tr>
                        <td><label for="lblSUBSCRIPTION_SN" id="lblSUBSCRIPTION_SN">Subscription SN</label></td>
                        <td><label for="lblSUBSCRIPTION_SNx" id="lblSUBSCRIPTION_SNx">:</label></td>
                        <td><input type="text" id="fldSUBSCRIPTION_SN" class="FieldAsNo FieldAsReadOnly" /></td>
                    </tr>

                    <tr>
                        <td><label for="lblSUBSCRIPTION_VER" id="lblSUBSCRIPTION_VER">Subscription Ver</label></td>
                        <td><label for="lblSUBSCRIPTION_VERx" id="lblSUBSCRIPTION_VERx">:</label></td>
                        <td><input type="text" id="fldSUBSCRIPTION_VER" class="FieldAsNo FieldAsReadOnly" /></td>
                    </tr>

                    <tr>
                        <td><label for="lblREQUEST_CODE" id="lblREQUEST_CODE">Request Code</label></td>
                        <td><label for="lblREQUEST_CODEx" id="lblREQUEST_CODEx">:</label></td>
                        <td><input type="text" id="fldREQUEST_CODE" class="FieldAsNo FieldAsReadOnly" /></td>
                    </tr>

                    <tr>
                        <td><label for="lblPRODUCT_ID" id="lblPRODUCT_ID">Product ID</label></td>
                        <td><label for="lblPRODUCT_IDx" id="lblPRODUCT_IDx">:</label></td>
                        <td><input type="text" id="fldPRODUCT_ID" class="FieldAsNo FieldAsReadOnly" /></td>
                    </tr>

                    <tr>
                        <td><label for="lblACTIVATION_CODE" id="lblACTIVATION_CODE">Activation Code</label></td>
                        <td><label for="lblACTIVATION_CODEx" id="lblACTIVATION_CODEx">:</label></td>
                        <td><input type="text" id="fldACTIVATION_CODE" class="FieldAsNo FieldAsReadOnly" /></td>
                    </tr>

                    <tr>
                        <td><label for="lblLICENSE_PERIOD" id="lblLICENSE_PERIOD">Masa Berlaku License</label></td>
                        <td><label for="lblLICENSE_PERIODx" id="lblLICENSE_PERIODx">:</label></td>
                        <td>
                            <input type="text" id="fldLICENSE_START_DT" class="FieldAsDate FieldAsReadOnly" />
                             - 
                            <input type="text" id="fldLICENSE_END_DT" class="FieldAsDate FieldAsReadOnly" />
                        </td>
                    </tr>

                    <tr><td colspan="3"><hr /></td></tr>

                    <tr>
                        <td><label for="lblPO_NO" id="lblPO_NO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PO_NO")%></label></td>
                        <td><label for="lblPO_NOx" id="lblPO_NOx">:</label></td>
                        <td><input type="text" id="fldPO_NO" class="FieldAsNo FieldAsReadOnly" /></td>
                    </tr>
                    <tr>
                        <td><label for="lblWO_NO" id="lblWO_NO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WO_NO")%></label></td>
                        <td><label for="lblWO_NOx" id="lblWO_NOx">:</label></td>
                        <td><input type="text" id="fldWO_NO" class="FieldAsNo FieldAsReadOnly" /></td>
                    </tr>

            </table>
        
        <div id="tabs" class="tabs" style="margin:5px;">
            <ul>
                <li><a href="#tabAssetDetail">Informasi Pengguna</a></li>
                <li><a href="#tabAssetHistory">History</a> </li>
            </ul>

            <div id="tabAssetDetail">
                <table class="clsEntryForm2">
                    <tr>
                        <td><label for="lblTRN_DT" id="lblTRN_DT"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("TRN_DT")%></label></td>
                        <td><label for="lblTRN_DTx" id="lblTRN_DTx">:</label></td>
                        <td>
                        <input type="text" id="fldTRN_DT" class="FieldAsDate" />
                        <span><input type="button" id="cmdTRN_DT" class="cmdCalender IconLink" /></span>
                        <span id="fldTRN_DTxInfo1"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="lblDEPT_RUID" id="lblDEPT_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("DEPT_RUID")%></label></td>
                        <td><label for="lblDEPT_RUIDx" id="lblDEPT_RUIDx">:</label></td>
                        <td>
                        <span><input type="text" id="fldDEPT_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                        <span><input type="button" id="LKP_DEPT_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                        <span id="imgDEPT_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                        <span id="fldDEPT_RUIDxInfo1"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="lblRSRC_USER_RUID" id="lblRSRC_USER_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RSRC_USER_RUID")%></label></td>
                        <td><label for="lblRSRC_USER_RUIDx" id="lblRSRC_USER_RUIDx">:</label></td>
                        <td>
                        <span><input type="text" id="fldRSRC_USER_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                        <span><input type="button" id="LKP_RSRC_USER_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                        <span id="imgRSRC_USER_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                        <span id="fldRSRC_USER_RUIDxInfo1"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="lblADD_NOTE" id="lblADD_NOTE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("NOTES")%></label></td>
                        <td><label for="lblADD_NOTEx" id="lblADD_NOTEx">:</label></td>
                        <td>
                        <textarea id="fldADD_NOTE" class="FieldAsNote"></textarea>
                        <span id="fldADD_NOTExInfo1"></span>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="tabAssetHistory">
                <div id="divforgrdList">
                </div>
            </div>
        </div>

        <!--Command CRUD -->
        <div id="ButtonGroup" class="BoxCommandCRUDGroup">
            <input type="button" id="cmdNew" value="New" class="CmdLink" />
            <input type="button" id="cmdEdit" value="Edit" class="CmdLink" />
            <input type="button" id="cmdSave" value="Save" class="CmdLink" />
            <input style="margin-left:5px;" type="reset" id="cmdReset" value="Reset" class="CmdLink" />
        </div> <!--End Command CRUD -->            

        <div id="HiddenDiv" style="visibility: hidden">
            <input type="button" id="cmdDelete" value="Delete" class="CmdLink" />
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
                        <td></td>
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
                        <td><label for="lblSTOCKIN_RUID" id="lblSTOCKIN_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("STOCKIN_RUID")%></label></td>
                        <td><label for="lblSTOCKIN_RUIDx" id="lblSTOCKIN_RUIDx">:</label></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><label for="lblSTOCKOUT02_RUID" id="lblSTOCKOUT02_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("STOCKOUT02_RUID")%></label></td>
                        <td><label for="lblSTOCKOUT02_RUIDx" id="lblSTOCKOUT02_RUIDx">:</label></td>
                        <td><input type="text" id="fldSTOCKOUT02_RUID" /></td>
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
                        <td><label for="lblASST_ACT_RUID" id="lblASST_ACT_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ASST_ACT_RUID")%></label></td>
                        <td><label for="lblASST_ACT_RUIDx" id="lblASST_ACT_RUIDx">:</label></td>
                        <td>
                        <span><input type="text" id="fldASST_ACT_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                        <span><input type="button" id="LKP_ASST_ACT_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                        <span id="imgASST_ACT_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                        </td>
                    </tr>
                    
                    <tr>
                        <input type="text" id="fldPROD_SUBCTGRY" class="FieldAsRUID FieldAsReadOnly" />
                        <input type="text" id="fldPROD_TYP" class="FieldAsRUID FieldAsReadOnly" />
                        <input type="text" id="fldPBLSHR_RUID" class="FieldAsRUID FieldAsReadOnly" />

                        <input type="text" id="fldASST_ACT_RUID" class="FieldAsRUID" />
                        

                        <input type="text" id="fldDEPT_RUID" class="FieldAsRUID" />
                        <input type="text" id="fldRSRC_USER_RUID" class="FieldAsRUID" />
                        <input type="text" id="fldRSRC_CTR_PRTY_RUID" class="FieldAsRUID" />

                        
                    </tr>

                        
            </table> <!--End HiddenField-->


        </div> <!--End HiddenDiv-->
            
    </form> <!--End frmEntStockOut-->
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PageFooterHolder" runat="server">
</asp:Content>
