<%@ Page Title="" Language="C#" MasterPageFile="~/MainLOGIN.Master" AutoEventWireup="true" CodeBehind="DefaultLoginASMIT.aspx.cs" Inherits="HDPortal.DefaultLoginASMIT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleHolder" runat="server">
Login - Asset Management - IT
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadCustomHolder" runat="server">
    <!--Custom Content jQueryUI -->
    <link href="Contents/jQueryUI_CstmOrange/jquery-ui-1.10.0.custom.min.css" rel="stylesheet" type="text/css" />
    <script src="Contents/jQueryUI_CstmOrange/jquery-ui-1.10.0.custom.min.js" type="text/javascript"></script>
    <!--Custom CSS -->
    <link href="Contents/LoginStyleHDPOrangeBootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Contents/LoginStyleHDPOrangeBootstrapResponsive.css" rel="stylesheet" type="text/css" />
    <link href="Contents/LoginStyleHDPOrange.css" rel="stylesheet" type="text/css" />
    <!--Custom JS -->
    <script src="DefaultLogin.js" type="text/javascript"></script>
    <script src="DefaultLoginASMIT.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">

<div class="login">
	<div class="header">
        <img src="Contents/Company_Logo_White.png" />
	</div>

	<div class="layout-header">
		<div class="sidebar-title">
			<h4>LOGIN - Asset Management IT</h4>
		</div>
	</div>
	
	<div class="layout-body">
		<div class="content">				
			<fieldset>
			        <div id="LoadingLogin" class="control-group">
                        <img src="Contents/APP_ASM/images/LoadingLogin.gif" style="vertical-align:middle;" />
                        <%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("MSG_INFO_LOGIN_ONPROGRESS") %>
			        </div>

					<div class="control-group">            
						<div class="controls">
							<div class="input text required">
							<input type="text" id="fldUserID" class="input-xlarge" placeholder="User ID">
						    </div>						
						</div>
					</div>
					<div class="control-group">            
						<div class="controls">
							<div class="input password required">
							<input type="password" id="fldPassword" class="input-xlarge" placeholder="Password">
							</div>
						</div>
					</div>
					<div class="control-action">
						<button type="button" id="cmdLogin" class="btn btn-primary">Login</button>
					</div>
				</fieldset>
			</div>
	</div><!--/row-->
</div>


    </form>


</asp:Content>
