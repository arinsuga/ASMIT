<%@ Page Language="C#" %>
<%@ Register TagPrefix="ctr" TagName="PartMAIN" Src="frmStockIn_part1MAIN_VIEW.ascx" %>
<%@ Register TagPrefix="ctr" TagName="PartCPU" Src="frmStockIn_part1CPU_VIEW.ascx" %>

<div style="overflow:scroll; height:400px;">
    <ctr:PartMAIN runat="server" ID="PartMAIN" />
    <ctr:PartCPU runat="server" ID="PartCPU" />
</div>
