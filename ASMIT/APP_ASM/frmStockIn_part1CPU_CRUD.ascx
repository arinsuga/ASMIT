<%@ Control Language="C#" %>

<div id="tabs" class="tabs" style="margin:5px;">
    <ul>
        <li><a href="#tabsPROC">Processor</a></li>
        <li><a href="#tabsMB">Motherboard</a></li>
        <li><a href="#tabsVGA">Video</a></li>
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
    
    <!-- Motherboard -->
    <div id="tabsMB">
        <table class="clsEntryForm2">
            <!-- Motherboard Info -->
            <tr>
               <td><label for="lblMB_PBLSHR_NM" id="lblMB_PBLSHR_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PBLSHR_NM_FOR_MB")%></label></td>
               <td><label for="lblMB_PBLSHR_NMx" id="lblMB_PBLSHR_NMx">:</label></td>
               <td>
                    <input type="hidden" id="fldMB_PBLSHR_RUID" />
                    <span><input type="text" id="fldMB_PBLSHR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_MB_PBLSHR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgMB_PBLSHR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldMB_PBLSHR_NM" />
               </td>
            </tr>

            <tr>
               <td><label for="lblMB_TYP_NM" id="lblMB_TYP_NM"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("MB_TYP")%></label></td>
               <td><label for="lblMB_TYP_NMx" id="lblMB_TYP_NMx">:</label></td>
               <td>
                   <input type="text" id="fldMB_TYP" class="FieldAsNote" />
                   <input type="hidden" id="fldMB_TYP_NM" />
               </td>
            </tr>

            <tr>
               <td><label for="lblMB_SN" id="lblMB_SN"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("PROD_ITMNO")%></label></td>
               <td><label for="lblMB_SNx" id="lblMB_SNx">:</label></td>
               <td><input type="text" id="fldMB_SN" class="FieldAsNo" /></td>
            </tr>

            <tr>
               <td><label for="lblMB_CHIP" id="lblMB_CHIP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("MB_CHIP")%></label></td>
               <td><label for="lblMB_CHIPx" id="lblMB_CHIPx">:</label></td>
               <td><input type="text" id="fldMB_CHIP" class="FieldAsNo" /></td>
            </tr>

            <tr><td colspan="3"><hr /></td></tr>
            
            <!-- Motherboard RAM Info -->
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

            <tr><td colspan="3"><hr /></td></tr>
            
            <!-- Motherboard NOTES Info -->
            <tr>
               <td><label for="lblMB_NOTES" id="lblMB_NOTES"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("NOTES")%></label></td>
               <td><label for="lblMB_NOTESx" id="lblMB_NOTESx">:</label></td>
               <td>
                <textarea id="fldMB_NOTES" class="FieldAsNote"></textarea>
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

            <tr>
                <td><label for="lblVGA_NOTES" id="lblVGA_NOTES"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("NOTES")%></label></td>
                <td><label for="lblVGA_NOTESx" id="lblVGA_NOTESx">:</label></td>
                <td>
                    <textarea id="fldVGA_NOTES" class="FieldAsNote"></textarea>
                </td>
            </tr>
        </table>
    </div>
    
    <!-- Others -->
    <div id="tabsOTH">
        <table class="clsEntryForm2">
            <!-- Others HDD1 -->
            <tr>
                <td><label for="lblHDD1_PBLSHR_RUID" id="lblHDD1_PBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_PBLSHR")%></label></td>
                <td><label for="lblHDD1_PBLSHR_RUIDx" id="lblHDD1_PBLSHR_RUIDx">:</label></td>
                <td>
                    <input type="hidden" id="fldHDD1_PBLSHR_RUID" />
                    <span><input type="text" id="fldHDD1_PBLSHR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_HDD1_PBLSHR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgHDD1_PBLSHR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldHDD1_PBLSHR_NM" />
                </td>
            </tr>

            <tr>
                <td><label for="lblHDD1_TYP" id="lblHDD1_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_TYP")%></label></td>
                <td><label for="lblHDD1_TYPx" id="lblHDD1_TYPx">:</label></td>
                <td>
                    <input type="hidden" id="fldHDD1_TYP" />
                    <span><input type="text" id="fldHDD1_TYPx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_HDD1_TYP" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgHDD1_TYP" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldHDD1_TYP_NM" />
                </td>
            </tr>

            <tr>
                <td><label for="lblHDD1_SPEED" id="lblHDD1_SPEED"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_SPEED")%></label></td>
                <td><label for="lblHDD1_SPEEDx" id="lblHDD1_SPEEDx">:</label></td>
                <td>
                    <input type="text" id="fldHDD1_SPEED" class="FieldAsDecimal" style="width:50px;" /> RPM
                </td>
            </tr>

            <tr>
                <td><label for="lblHDD1_SIZE" id="lblHDD1_SIZE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_SIZE")%></label></td>
                <td><label for="lblHDD1_SIZEx" id="lblHDD1_SIZEx">:</label></td>
                <td>
                    <input type="text" id="fldHDD1_SIZE" class="FieldAsDecimal" style="width:50px;"  />
                    <%=HDPortal.Helper.clsHelperASM.LOV.popLovUOM("fldHDD1_SIZE_UOM", "")%>
                    <input type="hidden" id="fldHDD1_SIZE_UOM_NM" />
                </td>
            </tr>

            <tr><td colspan="3"><hr /></td></tr>

            <!-- Others HDD2 -->
            <tr>
                <td><label for="lblHDD2_PBLSHR_RUID" id="lblHDD2_PBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_PBLSHR")%></label></td>
                <td><label for="lblHDD2_PBLSHR_RUIDx" id="lblHDD2_PBLSHR_RUIDx">:</label></td>
                <td>
                    <input type="hidden" id="fldHDD2_PBLSHR_RUID" />
                    <span><input type="text" id="fldHDD2_PBLSHR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_HDD2_PBLSHR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgHDD2_PBLSHR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldHDD2_PBLSHR_NM" />
                </td>
            </tr>

            <tr>
                <td><label for="lblHDD2_TYP" id="lblHDD2_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_TYP")%></label></td>
                <td><label for="lblHDD2_TYPx" id="lblHDD2_TYPx">:</label></td>
                <td>
                    <input type="hidden" id="fldHDD2_TYP" />
                    <span><input type="text" id="fldHDD2_TYPx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_HDD2_TYP" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgHDD2_TYP" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldHDD2_TYP_NM" />
                </td>
            </tr>

            <tr>
                <td><label for="lblHDD2_SPEED" id="lblHDD2_SPEED"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_SPEED")%></label></td>
                <td><label for="lblHDD2_SPEEDx" id="lblHDD2_SPEEDx">:</label></td>
                <td><input type="text" id="fldHDD2_SPEED" class="FieldAsDecimal" style="width:50px;" /> RPM</td>
            </tr>

            <tr>
                <td><label for="lblHDD2_SIZE" id="lblHDD2_SIZE"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("HDD_SIZE")%></label></td>
                <td><label for="lblHDD2_SIZEx" id="lblHDD2_SIZEx">:</label></td>
                <td>
                    <input type="text" id="fldHDD2_SIZE" class="FieldAsDecimal" style="width:50px;" />
                    <%=HDPortal.Helper.clsHelperASM.LOV.popLovUOM("fldHDD2_SIZE_UOM", "")%>
                    <input type="hidden" id="fldHDD2_SIZE_UOM_NM" />
                </td>
            </tr>

            <tr><td colspan="3"><hr /></td></tr>

            <!-- Others ODD1 -->
            <tr>
                <td><label for="lblODD1_PBLSHR_RUID" id="lblODD1_PBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ODD_PBLSHR")%></label></td>
                <td><label for="lblODD1_PBLSHR_RUIDx" id="lblODD1_PBLSHR_RUIDx">:</label></td>
                <td>
                    <input type="hidden" id="fldODD1_PBLSHR_RUID" />
                    <span><input type="text" id="fldODD1_PBLSHR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_ODD1_PBLSHR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgODD1_PBLSHR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldODD1_PBLSHR_NM" />
                </td>
            </tr>

            <tr>
                <td><label for="lblODD1_TYP" id="lblODD1_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ODD_TYP")%></label></td>
                <td><label for="lblODD1_TYPx" id="lblODD1_TYPx">:</label></td>
                <td>
                    <input type="hidden" id="fldODD1_TYP" />
                    <span><input type="text" id="fldODD1_TYPx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_ODD1_TYP" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgODD1_TYP" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldODD1_TYP_NM" />
                </td>
            </tr>

            <tr><td colspan="3"><hr /></td></tr>

            <!-- Others ODD2 -->
            <tr>
                <td><label for="lblODD2_PBLSHR_RUID" id="lblODD2_PBLSHR_RUID"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ODD_PBLSHR")%></label></td>
                <td><label for="lblODD2_PBLSHR_RUIDx" id="lblODD2_PBLSHR_RUIDx">:</label></td>
                <td>
                    <input type="hidden" id="fldODD2_PBLSHR_RUID" />
                    <span><input type="text" id="fldODD2_PBLSHR_RUIDx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_ODD2_PBLSHR_RUID" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgODD2_PBLSHR_RUID" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldODD2_PBLSHR_NM" />
                </td>
            </tr>

            <tr>
                <td><label for="lblODD2_TYP" id="lblODD2_TYP"><%=HDPortal.Helper.clsXML.clsLanguage.getLangByID("ODD_TYP")%></label></td>
                <td><label for="lblODD2_TYPx" id="lblODD2_TYPx">:</label></td>
                <td>
                    <input type="hidden" id="fldODD2_TYP" />
                    <span><input type="text" id="fldODD2_TYPx" class="FieldAsLabelDesc" readonly /></span>
                    <span><input type="button" id="LKP_ODD2_TYP" class="CmdAsLookUp cmdLookUp IconLink" /></span>
                    <span id="imgODD2_TYP" class="imgLoadHide"><img src="../Contents/APP_ASM/images/LoadingField.gif" /></span>
                    <input type="hidden" id="fldODD2_TYP_NM" />
                </td>
            </tr>

        </table>
    </div>
    
</div>

<div id="HideCPU" class="HiddenDiv">

    <!-- Motherboard RAM Info -->
    <input type="hidden" id="fldRAM_NOTES "/>

    

    <!-- Others -->
    <!-- Others HDD1 -->
    <input type="hidden" id="fldHDD1_NOTES" /
    <!-- Others HDD2 -->
    <input type="hidden" id="fldHDD2_NOTES "/>

    <!-- Others ODD1 -->
    <input type="hidden" id="fldODD1_PBLSHR_RUID "/>
    <input type="hidden" id="fldODD1_PBLSHR_NM "/>
    <input type="hidden" id="fldODD1_TYP "/>
    <input type="hidden" id="fldODD1_TYP_NM "/>
    <!-- Others ODD2 -->
    <input type="hidden" id="fldODD2_PBLSHR_RUID "/>
    <input type="hidden" id="fldODD2_PBLSHR_NM "/>
    <input type="hidden" id="fldODD2_TYP "/>
    <input type="hidden" id="fldODD2_TYP_NM "/>
    
    <!-- Not Display -->
    <input type="hidden" id="fldADTRL_WKS "/>
    <input type="hidden" id="fldADTRL_IP "/>
    <input type="hidden" id="fldADTRL_USR "/>
    <input type="hidden" id="fldADTRL_PRG "/>
    <input type="hidden" id="fldADTRL_DT "/>
    <input type="hidden" id="fldRSEQNO "/>
    <input type="hidden" id="fldRUID"/>
    <input type="hidden" id="fldDTA_STS "/>
    <input type="hidden" id="fldTRIN_RUID "/>
    <input type="hidden" id="fldOTHER_NOTES "/>
</div>
