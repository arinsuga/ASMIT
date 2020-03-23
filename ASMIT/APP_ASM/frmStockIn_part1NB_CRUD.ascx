<%@ Control Language="C#" %>

<div id="tabs" class="tabs" style="margin:5px;">
    <ul>
        <li><a href="#tabsPROC">Processor</a></li>
        <li><a href="#tabsRAM">Memory/RAM</a></li>
        <li><a href="#tabsVGA">Video/Display</a></li>
        <li><a href="#tabsDD">Disk Drive</a></li>
        <li><a href="#tabsOTH">Others</a></li>
    </ul>

    <!-- Processor -->
    <div id="tabsPROC">
        <table class="clsEntryForm2">
            <tr>
               <td><label for="lblPROC_PBLSHR_NM" id="lblPROC_PBLSHR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PBLSHR_NM")%></label></td>
               <td><label for="lblPROC_PBLSHR_NMx" id="lblPROC_PBLSHR_NMx">:</label></td>
               <td>
                   <input type="hidden" id="fldPROC_PBLSHR_RUID" />
                   <input type="hidden" id="fldPROC_PBLSHR_NM" />
                   <span><input type="text" id="fldPROC_PBLSHR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                   <span><input type="button" id="LKP_PROC_PBLSHR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                   <span id="imgPROC_PBLSHR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
               </td>
            </tr>

            <tr>
               <td><label for="lblPROC_TYP_NM" id="lblPROC_TYP_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROC_TYP_NM")%></label></td>
               <td><label for="lblPROC_TYP_NMx" id="lblPROC_TYP_NMx">:</label></td>
               <td>
                   <input type="hidden" id="fldPROC_TYP" />
                   <input type="hidden" id="fldPROC_TYP_NM" />
                   <span><input type="text" id="fldPROC_TYPx" class="FieldAsLabelDesc" readonly /></span>
                   <span><input type="button" id="LKP_PROC_TYP" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                   <span id="imgPROC_TYP" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
               </td>
            </tr>

            <tr>
                <td><label for="lblCHIPSET" id="lblCHIPSET"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("CHIPSET")%></label></td>
                <td><label for="lblCHIPSETx" id="lblCHIPSETx">:</label></td>
                <td><input type="text" id="fldCHIPSET" class="FieldAsNote" /></td>
            </tr>

            <tr>
               <td><label for="lblPROC_SPEED" id="lblPROC_SPEED"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROC_SPEED")%></label></td>
               <td><label for="lblPROC_SPEEDx" id="lblPROC_SPEEDx">:</label></td>
               <td>
                    <input type="text" id="fldPROC_SPEED" class="FieldAsDecimal" style="width:50px;" /> GHz
               </td>
            </tr>

            <tr>
               <td><label for="lblPROC_CORE" id="lblPROC_CORE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROC_CORE")%></label></td>
               <td><label for="lblPROC_COREx" id="lblPROC_COREx">:</label></td>
               <td><input type="text" id="fldPROC_CORE" class="FieldAsInteger" style="width:20px;" /></td>
            </tr>

            <tr>
               <td><label for="lblPROC_NOTES" id="lblPROC_NOTES"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("NOTES")%></label></td>
               <td><label for="lblPROC_NOTESx" id="lblPROC_NOTESx">:</label></td>
               <td>
                <textarea id="fldPROC_NOTES" class="FieldAsNote">
                </textarea>
               </td>
            </tr>
        </table>
    </div>
    <!-- Memory -->
    <div id="tabsRAM">
        <table class="clsEntryForm2">
            <tr>
                <td><label for="lblRAM_PBLSHR_NM" id="lblRAM_PBLSHR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PBLSHR_NM_FOR_RAM")%></label></td>
                <td><label for="lblRAM_PBLSHR_NMx" id="lblRAM_PBLSHR_NMx">:</label></td>
                <td>
                    <input type="hidden" id="fldRAM_PBLSHR_RUID" />
                    <span><input type="text" id="fldRAM_PBLSHR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_RAM_PBLSHR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgRAM_PBLSHR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldRAM_PBLSHR_NM" />
                </td>
            </tr>

            <tr>
                <td><label for="lblRAM_TYP_NM" id="lblRAM_TYP_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("TYP_NM_FOR_RAM")%></label></td>
                <td><label for="lblRAM_TYP_NMx" id="lblRAM_TYP_NMx">:</label></td>
                <td>
                    <input type="hidden" id="fldRAM_TYP" />
                    <input type="hidden" id="fldRAM_TYP_NM" />
                    <span><input type="text" id="fldRAM_TYPx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_RAM_TYP" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgRAM_TYP" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                </td>
            </tr>

            <tr>
                <td><label for="lblRAM_MODUL" id="lblRAM_MODUL"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RAM_MODUL")%></label></td>
                <td><label for="lblRAM_MODULx" id="lblRAM_MODULx">:</label></td>
                <td><input type="text" id="fldRAM_MODUL" class="FieldAsNo" /></td>
            </tr>

            <tr>
                <td><label for="lblRAM_INST" id="lblRAM_INST"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("RAM_INST")%></label></td>
                <td><label for="lblRAM_INSTx" id="lblRAM_INSTx">:</label></td>
                <td>
                    <input type="text" id="fldRAM_INST" class="FieldAsDecimal" style="width:50px;" />
                    <%=HDPortal.Helper.clsHelperASM.LOV.popLovUOM("fldRAM_INST_UOM", "")%>
                    <input type="hidden" id="fldRAM_INST_UOM_NM" />
                </td>
            </tr>
        </table>
    </div>
    <!-- Video -->
    <div id="tabsVGA">
        <table class="clsEntryForm2">
            <tr>
                <td><label for="lblVGA_PBLSHR_NM" id="lblVGA_PBLSHR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("VGA_PBLSHR")%></label></td>
                <td><label for="lblVGA_PBLSHR_NMx" id="lblVGA_PBLSHR_NMx">:</label></td>
                <td>
                    <input type="hidden" id="fldVGA_PBLSHR_RUID" />
                    <span><input type="text" id="fldVGA_PBLSHR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_VGA_PBLSHR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgVGA_PBLSHR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldVGA_PBLSHR_NM" />
                </td>
            </tr>

            <tr>
                <td><label for="lblVGA_TYP" id="lblVGA_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("VGA_TYP")%></label></td>
                <td><label for="lblVGA_TYPx" id="lblVGA_TYPx">:</label></td>
                <td>
                    <input type="hidden" id="fldVGA_TYP" />
                    <span><input type="text" id="fldVGA_TYPx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_VGA_TYP" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgVGA_TYP" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldVGA_TYP_NM" />
                </td>
            </tr>

            <tr>
                <td><label for="lblVGA_CHIP" id="lblVGA_CHIP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("VGA_CHIP")%></label></td>
                <td><label for="lblVGA_CHIPx" id="lblVGA_CHIPx">:</label></td>
                <td><input type="text" id="fldVGA_CHIP" class="FieldAsNo" /></td>
            </tr>

            <tr>
                <td><label for="lblVGA_MEM" id="lblVGA_MEM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("VGA_MEM")%></label></td>
                <td><label for="lblVGA_MEMx" id="lblVGA_MEMx">:</label></td>
                <td>
                    <input type="text" id="fldVGA_MEM" class="FieldAsDecimal" style="width:50px;" />
                    <%=HDPortal.Helper.clsHelperASM.LOV.popLovUOM("fldVGA_MEM_UOM","")%>
                    <input type="hidden" id="fldVGA_MEM_UOM_NM" />
                </td>
            </tr>

            <tr><td colspan="3"><hr /></td></tr>

            <tr>
                <td><label for="lblDISP_SIZE" id="lblDISP_SIZE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("DISP_SIZE")%></label></td>
                <td><label for="lblDISP_SIZEx" id="lblDISP_SIZEx">:</label></td>
                <td>
                    <input type="text" id="fldDISP_SIZE" class="FieldAsDecimal" style="width:20px;" />
                    <%=HDPortal.Helper.clsHelperASM.LOV.popLovUOM("fldDISP_SIZE_UOM", "")%>
                    <input type="hidden" id="fldDISP_SIZE_UOM_NM" />
                </td>
            </tr>

        </table>
    </div>
    <!-- Disk Drive -->
    <div id="tabsDD">
        <table class="clsEntryForm2">
            <tr>
                <td><label for="lblHDD_PBLSHR_RUID" id="lblHDD_PBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_PBLSHR")%></label></td>
                <td><label for="lblHDD_PBLSHR_RUIDx" id="lblHDD_PBLSHR_RUIDx">:</label></td>
                <td>
                    <input type="hidden" id="fldHDD_PBLSHR_RUID" />
                    <span><input type="text" id="fldHDD_PBLSHR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_HDD_PBLSHR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgHDD_PBLSHR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldHDD_PBLSHR_NM" />
                </td>
            </tr>

            <tr>
                <td><label for="lblHDD_TYP" id="lblHDD_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_TYP")%></label></td>
                <td><label for="lblHDD_TYPx" id="lblHDD_TYPx">:</label></td>
                <td>
                    <input type="hidden" id="fldHDD_TYP" />
                    <span><input type="text" id="fldHDD_TYPx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_HDD_TYP" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgHDD_TYP" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldHDD_TYP_NM" />
                </td>
            </tr>

            <tr>
                <td><label for="lblHDD_SPEED" id="lblHDD_SPEED"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_SPEED")%></label></td>
                <td><label for="lblHDD_SPEEDx" id="lblHDD_SPEEDx">:</label></td>
                <td><input type="text" id="fldHDD_SPEED" class="FieldAsDecimal" style="width:50px;" /> RPM</td>
            </tr>

            <tr>
                <td><label for="lblHDD_SIZE" id="lblHDD_SIZE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_SIZE")%></label></td>
                <td><label for="lblHDD_SIZEx" id="lblHDD_SIZEx">:</label></td>
                <td>
                    <input type="text" id="fldHDD_SIZE" class="FieldAsDecimal" style="width:50px;" />
                    <%=HDPortal.Helper.clsHelperASM.LOV.popLovUOM("fldHDD_SIZE_UOM", "")%>
                    <input type="hidden" id="fldHDD_SIZE_UOM_NM" />
                </td>
            </tr>
            
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td><label for="lblODD_PBLSHR_RUID" id="lblODD_PBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ODD_PBLSHR")%></label></td>
                <td><label for="lblODD_PBLSHR_RUIDx" id="lblODD_PBLSHR_RUIDx">:</label></td>
                <td>
                    <input type="hidden" id="fldODD_PBLSHR_RUID" />
                    <span><input type="text" id="fldODD_PBLSHR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_ODD_PBLSHR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgODD_PBLSHR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldODD_PBLSHR_NM" />
                </td>
            </tr>

            <tr>
                <td><label for="lblODD_TYP" id="lblODD_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ODD_TYP")%></label></td>
                <td><label for="lblODD_TYPx" id="lblODD_TYPx">:</label></td>
                <td>
                    <input type="hidden" id="fldODD_TYP" />
                    <span><input type="text" id="fldODD_TYPx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_ODD_TYP" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgODD_TYP" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldODD_TYP_NM" />
                </td>
            </tr>

        </table>
    </div>
    <!-- Others -->
    <div id="tabsOTH">
        <table class="clsEntryForm2">
            <tr>
                <td><label for="lblAUDIO" id="lblAUDIO"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("AUDIO")%></label></td>
                <td><label for="lblAUDIOx" id="lblAUDIOx">:</label></td>
                <td><input type="text" id="fldAUDIO" class="FieldAsNote" /></td>
            </tr>

            <tr>
                <td><label for="lblSPEAKER" id="lblSPEAKER"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("SPEAKER")%></label></td>
                <td><label for="lblSPEAKERx" id="lblSPEAKERx">:</label></td>
                <td><input type="text" id="fldSPEAKER" class="FieldAsNote" /></td>
            </tr>

            <tr>
                <td><label for="lblLAN_SPEED" id="lblLAN_SPEED"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("LAN_SPEED")%></label></td>
                <td><label for="lblLAN_SPEEDx" id="lblLAN_SPEEDx">:</label></td>
                <td><input type="text" id="fldLAN_SPEED" class="FieldAsNote" /></td>
            </tr>

            <tr>
                <td><label for="lblWIFI" id="lblWIFI"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("WIFI")%></label></td>
                <td><label for="lblWIFIx" id="lblWIFIx">:</label></td>
                <td><input type="text" id="fldWIFI" class="FieldAsNote" /></td>
            </tr>
        </table>
    </div>
    
</div>

<div id="HideCPU" class="HiddenDiv">
    <!-- Not Display -->
    <input type="hidden" id="fldADTRL_WKS" />
    <input type="hidden" id="fldADTRL_IP" />
    <input type="hidden" id="fldADTRL_USR" />
    <input type="hidden" id="fldADTRL_PRG" />
    <input type="hidden" id="fldADTRL_DT" />
    <input type="hidden" id="fldRSEQNO" />
    <input type="hidden" id="fldRUID" />
    <input type="hidden" id="fldDTA_STS" />
    <input type="hidden" id="fldTRIN_RUID" />

    
    <!-- Memory -->
    <input type="hidden" id="fldRAM_NOTES" />

    <!-- Video -->
    <input type="hidden" id="fldVGA_NOTES" />

    <!-- Disk Drive -->
    <input type="text" id="fldHDD_NOTES" />

</div>