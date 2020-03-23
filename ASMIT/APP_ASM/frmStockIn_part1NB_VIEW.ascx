<%@ Control Language="C#" %>

<% 
        string vsSearchBy = HDPortal.Helper.clsGeneral.SEARCH_METHOD.getSM_MAIN_RUID();
        string vsRUID_TOVIEW = Request["RUID_TOVIEW"]; //Request["RUID_TOVIEW"];
        HDPortal.Model.modASMStockInNB.ASMStockInNBDS voASMStockInNBDS = new HDPortal.Model.modASMStockInNB.ASMStockInNBDS(vsSearchBy, vsRUID_TOVIEW);
%>

<% if (voASMStockInNBDS.TBLData.Length>0) { %>
<fieldset class="BoxFieldGroup">
    <table class="clsEntryForm2">
        <!-- Guarantee information -->
        <tr><td><hr style="color:#79B7E7;" />Guarantee Information<hr style="color:#79B7E7;" /></td></tr>
        <tr>
            <td>
                <table class="clsEntryForm2">
                    <tr>
                        <td><label for="lblWRN_NO" id="lblWRN_NO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WRN_NO")%></label></td>
                        <td><label for="lblWRN_NOx" id="lblWRN_NOx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].WRN_NO%></td>
                    </tr>

                    <tr>
                        <td><label for="lblWRN_YEARTERM" id="lblWRN_YEARTERM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WRN_YEARTERM")%></label></td>
                        <td><label for="lblWRN_YEARTERMx" id="lblWRN_YEARTERMx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].WRN_YEARTERM.ToString()%></td>
                    </tr>

                    <tr>
                        <td><label for="lblWRN_PERIOD1" id="lblWRN_PERIOD1"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WRN_PERIOD")%></label></td>
                        <td><label for="lblWRN_PERIOD1x" id="lblWRN_PERIOD1x">:</label></td>
                        <td>
                            <%=HDPortal.Helper.clsConvertionAndFormating.ConvertDateToStringDateShortFmt(voASMStockInNBDS.TBLData[0].WRN_PERIOD1)%>
                            -
                            <%=HDPortal.Helper.clsConvertionAndFormating.ConvertDateToStringDateShortFmt(voASMStockInNBDS.TBLData[0].WRN_PERIOD2)%>
                        </td>
                    </tr>
                </table>
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
                       <td><%=voASMStockInNBDS.TBLData[0].PROC_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                       <td><label for="lblPROC_TYP_NM" id="lblPROC_TYP_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROC_TYP_NM")%></label></td>
                       <td><label for="lblPROC_TYP_NMx" id="lblPROC_TYP_NMx">:</label></td>
                       <td><%=voASMStockInNBDS.TBLData[0].PROC_TYP_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblCHIPSET" id="lblCHIPSET"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("CHIPSET")%></label></td>
                        <td><label for="lblCHIPSETx" id="lblCHIPSETx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].CHIPSET %></td>
                    </tr>

                    <tr>
                       <td><label for="lblPROC_SPEED" id="lblPROC_SPEED"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROC_SPEED")%></label></td>
                       <td><label for="lblPROC_SPEEDx" id="lblPROC_SPEEDx">:</label></td>
                       <td><%=voASMStockInNBDS.TBLData[0].PROC_SPEED %> GHz</td>
                    </tr>

                    <tr>
                       <td><label for="lblPROC_CORE" id="lblPROC_CORE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROC_CORE")%></label></td>
                       <td><label for="lblPROC_COREx" id="lblPROC_COREx">:</label></td>
                       <td><%=voASMStockInNBDS.TBLData[0].PROC_CORE %></td>
                    </tr>

                    <tr>
                       <td><label for="lblPROC_NOTES" id="lblPROC_NOTES"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("NOTES")%></label></td>
                       <td><label for="lblPROC_NOTESx" id="lblPROC_NOTESx">:</label></td>
                       <td><%=voASMStockInNBDS.TBLData[0].PROC_NOTES %></td>
                    </tr>
                </table>
            </td>
        </tr>
        <!-- Memory -->
        <tr><td><hr style="color:#79B7E7;" />Memory Information<hr style="color:#79B7E7;" /></td></tr>
        <tr>
            <td>
                <table class="clsEntryForm2">
                    <tr>
                        <td><label for="lblRAM_PBLSHR_NM" id="lblRAM_PBLSHR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PBLSHR_NM_FOR_RAM")%></label></td>
                        <td><label for="lblRAM_PBLSHR_NMx" id="lblRAM_PBLSHR_NMx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].RAM_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblRAM_TYP_NM" id="lblRAM_TYP_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("TYP_NM_FOR_RAM")%></label></td>
                        <td><label for="lblRAM_TYP_NMx" id="lblRAM_TYP_NMx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].RAM_TYP_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblRAM_MODUL" id="lblRAM_MODUL"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RAM_MODUL")%></label></td>
                        <td><label for="lblRAM_MODULx" id="lblRAM_MODULx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].RAM_MODUL %></td>
                    </tr>

                    <tr>
                        <td><label for="lblRAM_INST" id="lblRAM_INST"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RAM_INST")%></label></td>
                        <td><label for="lblRAM_INSTx" id="lblRAM_INSTx">:</label></td>
                        <td><%=HDPortal.Helper.clsConvertionAndFormating.ConvertDecimalToStringFmtRound(voASMStockInNBDS.TBLData[0].RAM_INST,2) %></td>
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
                        <td><%=voASMStockInNBDS.TBLData[0].VGA_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblVGA_TYP" id="lblVGA_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("VGA_TYP")%></label></td>
                        <td><label for="lblVGA_TYPx" id="lblVGA_TYPx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].VGA_TYP_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblVGA_CHIP" id="lblVGA_CHIP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("VGA_CHIP")%></label></td>
                        <td><label for="lblVGA_CHIPx" id="lblVGA_CHIPx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].VGA_CHIP %></td>
                    </tr>

                    <tr>
                        <td><label for="lblVGA_MEM" id="lblVGA_MEM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("VGA_MEM")%></label></td>
                        <td><label for="lblVGA_MEMx" id="lblVGA_MEMx">:</label></td>
                        <td>
                            <%=HDPortal.Helper.clsConvertionAndFormating.ConvertDecimalToStringFmtRound(voASMStockInNBDS.TBLData[0].VGA_MEM,2) %> 
                            <%=voASMStockInNBDS.TBLData[0].VGA_MEM_UOM_NM %>
                        </td>
                    </tr>

                    <tr><td colspan="3"><hr /></td></tr>

                    <tr>
                        <td><label for="lblDISP_SIZE" id="lblDISP_SIZE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("DISP_SIZE")%></label></td>
                        <td><label for="lblDISP_SIZEx" id="lblDISP_SIZEx">:</label></td>
                        <td>
                            <%=HDPortal.Helper.clsConvertionAndFormating.ConvertDecimalToStringFmtRound(voASMStockInNBDS.TBLData[0].DISP_SIZE,2) %> 
                            <%=voASMStockInNBDS.TBLData[0].DISP_SIZE_UOM_NM %>
                        </td>
                    </tr>

                </table>
            </td>
        </tr>
        <!-- Disk Drive -->
        <tr><td><hr style="color:#79B7E7;" />Disk Drive Information<hr style="color:#79B7E7;" /></td></tr>
        <tr>
            <td>
                <table class="clsEntryForm2">
                    <tr>
                        <td><label for="lblHDD_PBLSHR_RUID" id="lblHDD_PBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_PBLSHR")%></label></td>
                        <td><label for="lblHDD_PBLSHR_RUIDx" id="lblHDD_PBLSHR_RUIDx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].HDD_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblHDD_TYP" id="lblHDD_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_TYP")%></label></td>
                        <td><label for="lblHDD_TYPx" id="lblHDD_TYPx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].HDD_TYP_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblHDD_SPEED" id="lblHDD_SPEED"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_SPEED")%></label></td>
                        <td><label for="lblHDD_SPEEDx" id="lblHDD_SPEEDx">:</label></td>
                        <td><%=HDPortal.Helper.clsConvertionAndFormating.ConvertDecimalToStringFmtRound(voASMStockInNBDS.TBLData[0].HDD_SPEED,2) %> RPM</td>
                    </tr>

                    <tr>
                        <td><label for="lblHDD_SIZE" id="lblHDD_SIZE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_SIZE")%></label></td>
                        <td><label for="lblHDD_SIZEx" id="lblHDD_SIZEx">:</label></td>
                        <td>
                            <%=HDPortal.Helper.clsConvertionAndFormating.ConvertDecimalToStringFmtRound(voASMStockInNBDS.TBLData[0].HDD_SIZE,2) %> 
                            <%=voASMStockInNBDS.TBLData[0].HDD_SIZE_UOM_NM %>
                        </td>
                    </tr>
                    
                    <tr><td colspan="3"><hr /></td></tr>
                    
                    <tr>
                        <td><label for="lblODD_PBLSHR_RUID" id="lblODD_PBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ODD_PBLSHR")%></label></td>
                        <td><label for="lblODD_PBLSHR_RUIDx" id="lblODD_PBLSHR_RUIDx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].ODD_PBLSHR_NM %></td>
                    </tr>

                    <tr>
                        <td><label for="lblODD_TYP" id="lblODD_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ODD_TYP")%></label></td>
                        <td><label for="lblODD_TYPx" id="lblODD_TYPx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].ODD_TYP_NM %></td>
                    </tr>

                </table>
            </td>
        </tr>
        <!-- Others -->
        <tr><td><hr style="color:#79B7E7;" />Others Information<hr style="color:#79B7E7;" /></td></tr>
        <tr>
            <td>
                <table class="clsEntryForm2">
                    <tr>
                        <td><label for="lblAUDIO" id="lblAUDIO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("AUDIO")%></label></td>
                        <td><label for="lblAUDIOx" id="lblAUDIOx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].AUDIO %></td>
                    </tr>

                    <tr>
                        <td><label for="lblSPEAKER" id="lblSPEAKER"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("SPEAKER")%></label></td>
                        <td><label for="lblSPEAKERx" id="lblSPEAKERx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].SPEAKER %></td>
                    </tr>

                    <tr>
                        <td><label for="lblLAN_SPEED" id="lblLAN_SPEED"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("LAN_SPEED")%></label></td>
                        <td><label for="lblLAN_SPEEDx" id="lblLAN_SPEEDx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].LAN_SPEED %></td>
                    </tr>

                    <tr>
                        <td><label for="lblWIFI" id="lblWIFI"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WIFI")%></label></td>
                        <td><label for="lblWIFIx" id="lblWIFIx">:</label></td>
                        <td><%=voASMStockInNBDS.TBLData[0].WIFI %></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</fieldset>
<% } %>
