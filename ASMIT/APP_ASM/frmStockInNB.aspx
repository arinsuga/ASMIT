<%@ Page Title="" Language="C#" MasterPageFile="~/APP_ASM/MainASM.Master" AutoEventWireup="true" CodeBehind="frmStockInNB.aspx.cs" Inherits="HDPortal.APP_ASM.frmStockInNB" %>
<%@ Register TagPrefix="ctr" TagName="MyCRUDButton" Src="frmButtonCRUD.ascx" %>
<%@ Register TagPrefix="ctr" TagName="PartMAIN" Src="frmStockIn_part1MAIN_CRUD.ascx" %>
<%@ Register TagPrefix="ctr" TagName="PartNB" Src="frmStockIn_part1NB_CRUD.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleHolder" runat="server">
<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("FRM_CRUD_ASM_STOCKIN_NB")%>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="PageTitle" runat="server">
<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("FRM_CRUD_ASM_STOCKIN_NB")%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadCustomHolder" runat="server">
    <!--Custom CSS -->
    <!--Custom JS -->
    <script src="frmStockInNB.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageHeaderHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageContentHolder" runat="server">
    <form id="frmEntStockIn" runat="server">
        <ctr:PartMAIN runat="server" ID="PartMAIN" />

        <ctr:PartNB runat="server" ID="PartNB" />
        
        <ctr:MyCRUDButton runat="server" ID="MyCRUDButton" />
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PageFooterHolder" runat="server">
</asp:Content>
