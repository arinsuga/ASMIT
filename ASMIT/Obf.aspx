<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Obf.aspx.cs" Inherits="HDPortal.Obf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Obfuscator Tools</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Obfuscator<br />
        <asp:TextBox ID="txtValue" runat="server" Width="435px"></asp:TextBox><br />
        <asp:TextBox ID="txtResult" runat="server" Width="437px"></asp:TextBox><br />

        <asp:Button ID="btnEncrypt" runat="server" Text="Encrypt" 
            onclick="btnEncrypt_Click" />
        <asp:Button ID="btnDecrypt" runat="server" Text="Decrypt" 
            onclick="btnDecrypt_Click" />
    </div>
    </form>
</body>
</html>
