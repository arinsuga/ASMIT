<%@ Page Title="" Language="C#" MasterPageFile="~/APP_ASM/MainASM.Master" AutoEventWireup="true" CodeBehind="frmMain.aspx.cs" Inherits="HDPortal.APP_ASM.frmMain" %>
<%@ Import Namespace="HDPortal.Model" %>
<%@ Import Namespace="HDPortal.Helper" %>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleHolder" runat="server">
Halaman Utama
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="PageTitle" runat="server">
Halaman Utama
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadCustomHolder" runat="server">
    <!--Content jQueryChart -->
    <link href="../Contents/jQueryCRT_jqPlot/jquery.jqplot.min.css" rel="stylesheet" type="text/css" />
    <!--Custom CSS -->


    <!--Content Speedometer -->
    <script src="../Contents/Speedometer/jquery.speedometer.js" type="text/javascript"></script>
    <script src="../Contents/Speedometer/jquery.jqcanvas-modified.js" type="text/javascript"></script>
    <script src="../Contents/Speedometer/excanvas-modified.js" type="text/javascript"></script>
    <!--Content jQueryChart -->
    <script src="../Contents/jQueryCRT_jqPlot/jquery.jqplot.min.js" type="text/javascript"></script>
    <script src="../Contents/jQueryCRT_jqPlot/plugins/jqplot.pieRenderer.min.js" type="text/javascript"></script>
    <script src="../Contents/jQueryCRT_jqPlot/plugins/jqplot.donutRenderer.min.js" type="text/javascript"></script>
    <script src="../Contents/jQueryCRT_jqPlot/plugins/jqplot.pieRenderer.min.js" type="text/javascript"></script>
    <script src="../Contents/jQueryCRT_jqPlot/plugins/jqplot.donutRenderer.min.js" type="text/javascript"></script>
    <!--Custom JS -->
    <script src="frmMain.js" type="text/javascript"></script>

    <script type="text/javascript">
        //Variable Initialize
        //var vsFrmMainTitle = '<%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("<<::FORM_LANG_ID::>>")%>';
    </script>

    <style type="text/css"">
        #divforTableSummaryAsset1
        {
            width:400px;
            height:400px;
            float:left;
            margin:10px;
        }
        #divforchartSummaryAsset2
        {
            width:400px;
            height:400px;
            float:left;
            margin:10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageHeaderHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageContentHolder" runat="server">
<%
    modASMDashboard_SW vomodASMDashboard_SW = new modASMDashboard_SW(clsGeneral.DATA_MODEL_TYPE.getNUMDataModelARR());
    string vsProd_ruid = "";
    string vsProd_nm = "";
    int? vnStock_in = 0;
    int? vnStock_out = 0;
    int? vnStock_pct = 0;
%>
    

    <!-- SOFTWARE -->
    <div class="row">
            <div class="text-center">
              <ul class="stats_box">
                
                <%for (int i = 0; i < vomodASMDashboard_SW.TBLData.Length; i++) {

                      vsProd_ruid = vomodASMDashboard_SW.TBLData[i].PBLSHR_RUID;
                      vsProd_nm = vomodASMDashboard_SW.TBLData[i].PBLSHR_NM;
                      vnStock_in = vomodASMDashboard_SW.TBLData[i].PROD_STOCK_IN;
                      vnStock_out = vomodASMDashboard_SW.TBLData[i].PROD_STOCK_OUT;
                      vnStock_pct = vomodASMDashboard_SW.TBLData[i].PROD_STOCK_PCT;
                %>

                <li>
                  <div class="sparkline"><img style="height:40PX; width:40PX;" src="../Contents/images/brands/<%=vsProd_ruid%>.png" /></div>
                  <div class="stat_text">
                    <strong><%=vnStock_out%>/<%=vnStock_in %></strong> <%=vsProd_nm %>
                    <% if (vnStock_pct > 60) { %>
                        <span class="percent down"> <i class="fa fa-caret-down"></i> <%=vnStock_pct%>%</span> 
                    <% } else { %>
                        <span class="percent up"> <i class="fa fa-caret-up"></i> <%=vnStock_pct%>%</span> 
                    <% } %>
                  </div>
                </li>
                        

                <% } %>


              </ul>
            </div>
    </div> <!-- /row -->
    <hr>


<%
    modASMDashboard_PARTS vomodASMDashboard_PARTS = new modASMDashboard_PARTS(clsGeneral.DATA_MODEL_TYPE.getNUMDataModelARR());
    string vsPROD_SUBCTGRY = "";
    string vsPROD_SUBCTGRY_NM = "";
    vnStock_in = 0;
    vnStock_out = 0;
    int? vnSTOCK_BAL = 0;
    int? vnSTOCK_OUTPCT = 0;
    int? vnSTOCK_BALPCT = 0;
%>

    <!-- SPARE PARTS -->
    <div class="row">
        <div class="text-center">
            <ul class="stats_box">
            <% for (int i = 0; i < vomodASMDashboard_PARTS.TBLData.Length; i++) {
                   vsPROD_SUBCTGRY = vomodASMDashboard_PARTS.TBLData[i].PROD_SUBCTGRY;
                   vsPROD_SUBCTGRY_NM = vomodASMDashboard_PARTS.TBLData[i].PROD_SUBCTGRY_NM;
                   vnStock_in = vomodASMDashboard_PARTS.TBLData[i].STOCK_IN;
                   vnStock_out = vomodASMDashboard_PARTS.TBLData[i].STOCK_OUT;
                   vnSTOCK_BAL = vomodASMDashboard_PARTS.TBLData[i].STOCK_BAL;
                   vnSTOCK_OUTPCT = vomodASMDashboard_PARTS.TBLData[i].STOCK_OUTPCT;
                   vnSTOCK_BALPCT = vomodASMDashboard_PARTS.TBLData[i].STOCK_BALPCT;

            %>
                    <li>
                        <div id="<%=vsPROD_SUBCTGRY%>" style="margin-top:10px;"><%=vnSTOCK_BALPCT%></div>
                        <div style="margin-top:10px;">
                            <img style="height:40PX; width:40PX;" src="../Contents/images/Parts/<%=vsPROD_SUBCTGRY%>.png" /> <span><%=vsPROD_SUBCTGRY_NM%></span>
                        </div>
                        <script type="text/javascript">
                            $(function () {
                                $('#<%=vsPROD_SUBCTGRY %>').speedometer();
                            });
                        </script>
                        <hr />

                        <div style="margin-bottom:10px;">
                        <% if (vnSTOCK_BALPCT < 30) { %>
                            <span class="label label-danger"><i class="fa fa-caret-down"></i> Sisa Stock : <%=vnSTOCK_BAL %></span>
                        <% } else { %>
                            <span class="label label-success"><i class="fa fa-caret-up"></i> Sisa Stock : <%=vnSTOCK_BAL %></span>
                        <% } %>
                        </div>
                    </li>
            <% } %>
            </ul> <!-- ul -->
        </div> <!-- text-center -->
    </div> <!-- row 1 -->
    <hr>


    <!-- OLD GRAPHICS -->
    <div class="row">
        <div class="col-md-6">
        <div id="divforchartSummaryAsset2">
        </div> <!-- /divforchartSummaryAsset2 -->
        </div> <!-- /col-md-6 -->

        <div class="col-md-6">
        <div id="divforTableSummaryAsset1">
        </div> <!-- /divforTableSummaryAsset1 -->
        </div> <!-- /col-md-6 -->
    </div> <!-- /row -->

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PageFooterHolder" runat="server">
</asp:Content>
