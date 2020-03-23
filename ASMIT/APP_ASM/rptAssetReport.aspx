<%@ Page Title="" Language="C#" MasterPageFile="~/APP_ASM/MainASM.Master" AutoEventWireup="true" CodeBehind="rptAssetReport.aspx.cs" Inherits="HDPortal.APP_ASM.rptAssetReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleHolder" runat="server">
<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RPT_ASM_ASSET")%>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="PageTitle" runat="server">
<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RPT_ASM_ASSET")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadCustomHolder" runat="server">
    <!--Custom CSS -->
    <!--Custom JS -->
    <script src="rptAssetReport.js" type="text/javascript"></script>
    <script type="text/javascript">
        //Variable Initialize
        var vsFrmMainTitle = '<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RPT_ASM_ASSET")%>';
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageHeaderHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageContentHolder" runat="server">
    <form id="frmEntXxx" runat="server">
        <table class="clsEntryForm2">
        </table> <!--End clsEntryForm2-->
        
        <div id="divforgrdList">
        </div>
            
        <div id="HiddenDiv" style="visibility: hidden">
            <table id="HiddenField">
                        
            </table> <!--End HiddenField-->
        </div> <!--End HiddenDiv-->
    </form> <!--End frmEntXxx-->
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PageFooterHolder" runat="server">
</asp:Content>
