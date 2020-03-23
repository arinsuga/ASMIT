<%@ Page Language="C#" %>
<%@ Register TagPrefix="ctr" TagName="PartMAIN" Src="frmStockIn_part1MAIN_VIEW.ascx" %>
<%@ Register TagPrefix="ctr" TagName="PartNB" Src="frmStockIn_part1NB_VIEW.ascx" %>

<div style="overflow:scroll; height:400px;">
    <ctr:PartMAIN runat="server" ID="PartMAIN" />
    <ctr:PartNB runat="server" ID="PartNB" />
</div>
