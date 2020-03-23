<%@ Control Language="C#" %>

<% 
        string vsSearchBy = HDPortal.Helper.clsGeneral.SEARCH_METHOD.getSM_MAIN_RUID();
        string vsRUID_TOVIEW = Request["RUID_TOVIEW"]; //Request["RUID_TOVIEW"];
        HDPortal.Model.modASMStockInCPU.SMStockInCPUDS voSMStockInCPUDS = new HDPortal.Model.modASMStockInCPU.SMStockInCPUDS(vsSearchBy, vsRUID_TOVIEW);
%>

<fieldset class="BoxFieldGroup">
    <table class="clsEntryForm2">
        <tr><td><hr style="color:#79B7E7;" />Guarantee Information<hr style="color:#79B7E7;" /></td></tr>
        
        <!-- Guarantee information -->
        <tr>
            <td><label for="lblWRN_NO" id="lblWRN_NO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WRN_NO")%></label></td>
            <td><label for="lblWRN_NOx" id="lblWRN_NOx">:</label></td>
            <td><%=voSMStockInCPUDS.TBLData[0].WRN_NO%></td>
        </tr>

        <tr>
            <td><label for="lblWRN_YEARTERM" id="lblWRN_YEARTERM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WRN_YEARTERM")%></label></td>
            <td><label for="lblWRN_YEARTERMx" id="lblWRN_YEARTERMx">:</label></td>
            <td><%=voSMStockInCPUDS.TBLData[0].WRN_YEARTERM.ToString()%></td>
        </tr>

        <tr>
            <td><label for="lblWRN_PERIOD1" id="lblWRN_PERIOD1"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WRN_PERIOD")%></label></td>
            <td><label for="lblWRN_PERIOD1x" id="lblWRN_PERIOD1x">:</label></td>
            <td>
                <%=HDPortal.Helper.clsConvertionAndFormating.ConvertDateToStringDateShortFmt(voSMStockInCPUDS.TBLData[0].WRN_PERIOD1)%>
                -
                <%=HDPortal.Helper.clsConvertionAndFormating.ConvertDateToStringDateShortFmt(voSMStockInCPUDS.TBLData[0].WRN_PERIOD2)%>
            </td>
        </tr>

        <!-- Processor -->
        <tr><td><hr style="color:#79B7E7;" />Processor Information<hr style="color:#79B7E7;" /></td></tr>
        <tr>
            <td>
                <table class="clsEntryForm2">
                    <tr>
                       <td><label for="lblPROC_PBLSHR_NM" id="lblPROC_PBLSHR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PBLSHR_NM")%></label></td>
                       <td><label for="lblPROC_PBLSHR_NMx" id="lblPROC_PBLSHR_NMx">:</label></td>
                       <td><%=voSMStockInCPUDS.TBLData[0].PROC_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                       <td><label for="lblPROC_TYP_NM" id="lblPROC_TYP_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROC_TYP_NM")%></label></td>
                       <td><label for="lblPROC_TYP_NMx" id="lblPROC_TYP_NMx">:</label></td>
                       <td><%=voSMStockInCPUDS.TBLData[0].PROC_TYP_NM %></td>
                    </tr>

                    <tr>
                       <td><label for="lblPROC_SPEED" id="lblPROC_SPEED"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROC_SPEED")%></label></td>
                       <td><label for="lblPROC_SPEEDx" id="lblPROC_SPEEDx">:</label></td>
                       <td><%=HDPortal.Helper.clsConvertionAndFormating.ConvertDecimalToStringFmtRound(voSMStockInCPUDS.TBLData[0].PROC_SPEED,2) %> GHz</td>
                    </tr>

                    <tr>
                       <td><label for="lblPROC_CORE" id="lblPROC_CORE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROC_CORE")%></label></td>
                       <td><label for="lblPROC_COREx" id="lblPROC_COREx">:</label></td>
                       <td><%=voSMStockInCPUDS.TBLData[0].PROC_CORE.ToString() %></td>
                    </tr>

                    <tr>
                       <td><label for="lblPROC_NOTES" id="lblPROC_NOTES"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("NOTES")%></label></td>
                       <td><label for="lblPROC_NOTESx" id="lblPROC_NOTESx">:</label></td>
                       <td><%=voSMStockInCPUDS.TBLData[0].PROC_NOTES %></td>
                    </tr>
                </table>
            </td>
        </tr>
        <!-- Motherboard -->
        <tr><td><hr style="color:#79B7E7;" />Motherboard Information<hr style="color:#79B7E7;" /></td></tr>
        <tr>
            <td>
                <table class="clsEntryForm2">
                    <!-- Motherboard Info -->
                    <tr>
                       <td><label for="lblMB_PBLSHR_NM" id="lblMB_PBLSHR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PBLSHR_NM_FOR_MB")%></label></td>
                       <td><label for="lblMB_PBLSHR_NMx" id="lblMB_PBLSHR_NMx">:</label></td>
                       <td><%=voSMStockInCPUDS.TBLData[0].MB_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                       <td><label for="lblMB_TYP_NM" id="lblMB_TYP_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("MB_TYP")%></label></td>
                       <td><label for="lblMB_TYP_NMx" id="lblMB_TYP_NMx">:</label></td>
                       <td><%=voSMStockInCPUDS.TBLData[0].MB_TYP %></td>
                    </tr>

                    <tr>
                       <td><label for="lblMB_SN" id="lblMB_SN"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_ITMNO")%></label></td>
                       <td><label for="lblMB_SNx" id="lblMB_SNx">:</label></td>
                       <td><%=voSMStockInCPUDS.TBLData[0].MB_SN %></td>
                    </tr>

                    <tr>
                       <td><label for="lblMB_CHIP" id="lblMB_CHIP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("MB_CHIP")%></label></td>
                       <td><label for="lblMB_CHIPx" id="lblMB_CHIPx">:</label></td>
                       <td><%=voSMStockInCPUDS.TBLData[0].MB_CHIP %></td>
                    </tr>

                    <tr><td colspan="3"><hr /></td></tr>
                    
                    <!-- Motherboard RAM Info -->
                    <tr>
                        <td><label for="lblRAM_PBLSHR_NM" id="lblRAM_PBLSHR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PBLSHR_NM_FOR_RAM")%></label></td>
                        <td><label for="lblRAM_PBLSHR_NMx" id="lblRAM_PBLSHR_NMx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].RAM_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblRAM_TYP_NM" id="lblRAM_TYP_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("TYP_NM_FOR_RAM")%></label></td>
                        <td><label for="lblRAM_TYP_NMx" id="lblRAM_TYP_NMx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].RAM_TYP_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblRAM_MODUL" id="lblRAM_MODUL"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RAM_MODUL")%></label></td>
                        <td><label for="lblRAM_MODULx" id="lblRAM_MODULx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].RAM_MODUL %></td>
                    </tr>

                    <tr>
                        <td><label for="lblRAM_INST" id="lblRAM_INST"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RAM_INST")%></label></td>
                        <td><label for="lblRAM_INSTx" id="lblRAM_INSTx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].RAM_INST %></td>
                    </tr>

                    <tr><td colspan="3"><hr /></td></tr>
                    
                    <!-- Motherboard NOTES Info -->
                    <tr>
                       <td><label for="lblMB_NOTES" id="lblMB_NOTES"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("NOTES")%></label></td>
                       <td><label for="lblMB_NOTESx" id="lblMB_NOTESx">:</label></td>
                       <td><%=voSMStockInCPUDS.TBLData[0].MB_NOTES %></td>
                    </tr>
                </table>
            </td>
        </tr>
        <!-- Video -->
        <tr><td><hr style="color:#79B7E7;" />Video Information<hr style="color:#79B7E7;" /></td></tr>
        <tr>
            <td>
                <table class="clsEntryForm2">
                    <tr>
                        <td><label for="lblVGA_PBLSHR_NM" id="lblVGA_PBLSHR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("VGA_PBLSHR")%></label></td>
                        <td><label for="lblVGA_PBLSHR_NMx" id="lblVGA_PBLSHR_NMx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].VGA_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblVGA_TYP" id="lblVGA_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("VGA_TYP")%></label></td>
                        <td><label for="lblVGA_TYPx" id="lblVGA_TYPx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].VGA_TYP_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblVGA_CHIP" id="lblVGA_CHIP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("VGA_CHIP")%></label></td>
                        <td><label for="lblVGA_CHIPx" id="lblVGA_CHIPx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].VGA_CHIP %></td>
                    </tr>

                    <tr>
                        <td><label for="lblVGA_MEM" id="lblVGA_MEM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("VGA_MEM")%></label></td>
                        <td><label for="lblVGA_MEMx" id="lblVGA_MEMx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].VGA_MEM %> <%=voSMStockInCPUDS.TBLData[0].VGA_MEM_UOM_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblVGA_NOTES" id="lblVGA_NOTES"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("NOTES")%></label></td>
                        <td><label for="lblVGA_NOTESx" id="lblVGA_NOTESx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].VGA_NOTES %></td>
                    </tr>
                </table>
            </td>
        </tr>
        <!-- Others -->
        <tr><td><hr style="color:#79B7E7;" />Others Information<hr style="color:#79B7E7;" /></td></tr>
        <tr>
            <td>
                <table class="clsEntryForm2">
                    <!-- Others HDD1 -->
                    <tr>
                        <td><label for="lblHDD1_PBLSHR_RUID" id="lblHDD1_PBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_PBLSHR")%></label></td>
                        <td><label for="lblHDD1_PBLSHR_RUIDx" id="lblHDD1_PBLSHR_RUIDx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].HDD1_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblHDD1_TYP" id="lblHDD1_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_TYP")%></label></td>
                        <td><label for="lblHDD1_TYPx" id="lblHDD1_TYPx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].HDD1_TYP_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblHDD1_SPEED" id="lblHDD1_SPEED"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_SPEED")%></label></td>
                        <td><label for="lblHDD1_SPEEDx" id="lblHDD1_SPEEDx">:</label></td>
                        <td><%=HDPortal.Helper.clsConvertionAndFormating.ConvertDecimalToStringFmtRound(voSMStockInCPUDS.TBLData[0].HDD1_SPEED,2) %> RPM</td>
                    </tr>

                    <tr>
                        <td><label for="lblHDD1_SIZE" id="lblHDD1_SIZE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_SIZE")%></label></td>
                        <td><label for="lblHDD1_SIZEx" id="lblHDD1_SIZEx">:</label></td>
                        <td><%=HDPortal.Helper.clsConvertionAndFormating.ConvertDecimalToStringFmtRound(voSMStockInCPUDS.TBLData[0].HDD1_SIZE,2) %> <%=voSMStockInCPUDS.TBLData[0].HDD1_SIZE_UOM_NM %></td>
                    </tr>

                    <tr><td colspan="3"><hr /></td></tr>

                    <!-- Others HDD2 -->
                    <tr>
                        <td><label for="lblHDD2_PBLSHR_RUID" id="lblHDD2_PBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_PBLSHR")%></label></td>
                        <td><label for="lblHDD2_PBLSHR_RUIDx" id="lblHDD2_PBLSHR_RUIDx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].HDD2_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblHDD2_TYP" id="lblHDD2_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_TYP")%></label></td>
                        <td><label for="lblHDD2_TYPx" id="lblHDD2_TYPx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].HDD2_TYP_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblHDD2_SPEED" id="lblHDD2_SPEED"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_SPEED")%></label></td>
                        <td><label for="lblHDD2_SPEEDx" id="lblHDD2_SPEEDx">:</label></td>
                        <td><%=HDPortal.Helper.clsConvertionAndFormating.ConvertDecimalToStringFmtRound(voSMStockInCPUDS.TBLData[0].HDD2_SPEED,2) %> RPM</td>
                    </tr>

                    <tr>
                        <td><label for="lblHDD2_SIZE" id="lblHDD2_SIZE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_SIZE")%></label></td>
                        <td><label for="lblHDD2_SIZEx" id="lblHDD2_SIZEx">:</label></td>
                        <td><%=HDPortal.Helper.clsConvertionAndFormating.ConvertDecimalToStringFmtRound(voSMStockInCPUDS.TBLData[0].HDD2_SIZE,2) %> <%=voSMStockInCPUDS.TBLData[0].HDD2_SIZE_UOM_NM %></td>
                    </tr>

                    <tr><td colspan="3"><hr /></td></tr>

                    <!-- Others ODD1 -->
                    <tr>
                        <td><label for="lblODD1_PBLSHR_RUID" id="lblODD1_PBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ODD_PBLSHR")%></label></td>
                        <td><label for="lblODD1_PBLSHR_RUIDx" id="lblODD1_PBLSHR_RUIDx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].ODD1_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblODD1_TYP" id="lblODD1_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ODD_TYP")%></label></td>
                        <td><label for="lblODD1_TYPx" id="lblODD1_TYPx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].ODD1_TYP_NM %></td>
                    </tr>

                    <tr><td colspan="3"><hr /></td></tr>

                    <!-- Others ODD2 -->
                    <tr>
                        <td><label for="lblODD2_PBLSHR_RUID" id="lblODD2_PBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ODD_PBLSHR")%></label></td>
                        <td><label for="lblODD2_PBLSHR_RUIDx" id="lblODD2_PBLSHR_RUIDx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].ODD2_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblODD2_TYP" id="lblODD2_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ODD_TYP")%></label></td>
                        <td><label for="lblODD2_TYPx" id="lblODD2_TYPx">:</label></td>
                        <td><%=voSMStockInCPUDS.TBLData[0].ODD2_TYP_NM %></td>
                    </tr>

                </table>
            </td>
        </tr>
    </table>
</fieldset>
