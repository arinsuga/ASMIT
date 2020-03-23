<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="frmNavigation.ascx.cs" Inherits="HDPortal.APP_ASM.frmNavigation" %>

        <ul id="menu" class="bg-blue dker">
            <li class="nav-divider"></li>
            <li>
            <a href="frmMain.aspx">
                <i class="fa fa-home"></i>&nbsp; <%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("MNU_QLC_HOME")%></a> 
            </li>
            <li>
            <a href="../DefaultLoginASMIT.aspx">
                <i class="fa fa-power-off"></i>&nbsp; <%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("MNU_QLC_LOGOUT")%></a> 
            </li>
            <li>
            <a href="../DefaultLoginASMITChangePassword.aspx">
                <i class="fa fa-key"></i>&nbsp; <%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("MNU_QLC_CHANGE_PSWD")%></a> 
            </li>

            <li class="nav-divider"></li>
            <%=HDPortal.Helper.clsMenu.MenuDropDown.DisplayMenu("", "", "", "", "", "ASMIT_ASST_MGNT")%>

            <li class="nav-divider"></li>
            <%=HDPortal.Helper.clsMenu.MenuDropDown.DisplayMenu("", "", "", "", "", "ASMIT_RPT")%>

        </ul><!-- /#menu -->
