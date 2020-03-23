<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Obf_Bulk.aspx.cs" Inherits="HDPortal.Obf_Bulk" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Bulk Obfuscator</title>

<script src="Scripts/jQuery.js" type="text/javascript"></script>
<script type="text/javascript">
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        Bulk Obfuscator<br />
        <br />
        <b>Source :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Result :<br />
        </b>
        <asp:TextBox ID="txtValue" runat="server" Width="435px" TextMode="MultiLine" 
            Height="355px"></asp:TextBox>
        <asp:TextBox ID="txtResult" runat="server" Width="437px" TextMode="MultiLine" 
            Height="351px"></asp:TextBox><br />
        <br />



        <asp:Button ID="btnEncrypt" runat="server" Text="Encrypt" onclick="btnEncrypt_Click" />
        <asp:Button ID="btnDecrypt" runat="server" Text="Decrypt" onclick="btnDecrypt_Click" />
    </div>
    </form>
</body>
</html>
