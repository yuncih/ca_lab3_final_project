// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VTop__Syms.h"


void VTop___024root__trace_chg_0_sub_0(VTop___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void VTop___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root__trace_chg_0\n"); );
    // Init
    VTop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VTop___024root*>(voidSelf);
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    VTop___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void VTop___024root__trace_chg_0_sub_0(VTop___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgBit(oldp+0,(vlSelf->Top__DOT__cpu__DOT__regs_io_write_enable));
        bufp->chgCData(oldp+1,(vlSelf->Top__DOT__cpu__DOT__id__DOT__rd),5);
        bufp->chgCData(oldp+2,(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address1),5);
        bufp->chgCData(oldp+3,(vlSelf->Top__DOT__cpu__DOT__regs_io_read_address2),5);
        bufp->chgIData(oldp+4,(vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate),32);
        bufp->chgBit(oldp+5,(((0x17U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                              | ((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                 | (0x6fU == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))))));
        bufp->chgBit(oldp+6,((0x33U != (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
        bufp->chgBit(oldp+7,((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
        bufp->chgBit(oldp+8,((0x23U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))));
        bufp->chgCData(oldp+9,(vlSelf->Top__DOT__cpu__DOT__id_io_wb_reg_write_source),2);
        bufp->chgCData(oldp+10,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3),3);
        bufp->chgCData(oldp+11,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT___GEN_8),5);
        bufp->chgCData(oldp+12,(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode),7);
        bufp->chgCData(oldp+13,(vlSelf->Top__DOT__cpu__DOT__id__DOT__rs1),5);
    }
    if (VL_UNLIKELY((vlSelf->__Vm_traceActivity[1U] 
                     | vlSelf->__Vm_traceActivity[2U]))) {
        bufp->chgIData(oldp+14,(vlSelf->Top__DOT__cpu__DOT__regs_io_write_data),32);
        bufp->chgIData(oldp+15,(vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1),32);
        bufp->chgIData(oldp+16,(vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2),32);
        bufp->chgBit(oldp+17,(((IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT___io_wb_reg_write_source_T_10) 
                               | ((0x63U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode)) 
                                  & ((7U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                      ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                         >= vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                      : ((6U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                          ? (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                             < vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                          : ((5U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                              ? VL_GTES_III(32, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                              : ((4U 
                                                  == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                  ? 
                                                 VL_LTS_III(32, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1, vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                                  : 
                                                 ((1U 
                                                   == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                                   ? 
                                                  (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                                   != vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)
                                                   : 
                                                  ((0U 
                                                    == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3)) 
                                                   & (vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1 
                                                      == vlSelf->Top__DOT__cpu__DOT__regs_io_read_data2)))))))))));
        bufp->chgIData(oldp+18,((vlSelf->Top__DOT__cpu__DOT__id_io_ex_immediate 
                                 + ((0x67U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
                                     ? vlSelf->Top__DOT__cpu__DOT__regs_io_read_data1
                                     : vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc))),32);
        bufp->chgIData(oldp+19,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_15[0U]),32);
        bufp->chgIData(oldp+20,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6),32);
        bufp->chgIData(oldp+21,(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7),32);
        bufp->chgCData(oldp+22,((3U & vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_15[0U])),2);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[2U])) {
        bufp->chgIData(oldp+23,(vlSelf->Top__DOT__cpu__DOT__inst_fetch__DOT__pc),32);
        bufp->chgIData(oldp+24,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_0),32);
        bufp->chgIData(oldp+25,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_1),32);
        bufp->chgIData(oldp+26,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_2),32);
        bufp->chgIData(oldp+27,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_3),32);
        bufp->chgIData(oldp+28,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_4),32);
        bufp->chgIData(oldp+29,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_5),32);
        bufp->chgIData(oldp+30,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_6),32);
        bufp->chgIData(oldp+31,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_7),32);
        bufp->chgIData(oldp+32,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_8),32);
        bufp->chgIData(oldp+33,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_9),32);
        bufp->chgIData(oldp+34,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_10),32);
        bufp->chgIData(oldp+35,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_11),32);
        bufp->chgIData(oldp+36,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_12),32);
        bufp->chgIData(oldp+37,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_13),32);
        bufp->chgIData(oldp+38,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_14),32);
        bufp->chgIData(oldp+39,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_15),32);
        bufp->chgIData(oldp+40,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_16),32);
        bufp->chgIData(oldp+41,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_17),32);
        bufp->chgIData(oldp+42,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_18),32);
        bufp->chgIData(oldp+43,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_19),32);
        bufp->chgIData(oldp+44,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_20),32);
        bufp->chgIData(oldp+45,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_21),32);
        bufp->chgIData(oldp+46,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_22),32);
        bufp->chgIData(oldp+47,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_23),32);
        bufp->chgIData(oldp+48,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_24),32);
        bufp->chgIData(oldp+49,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_25),32);
        bufp->chgIData(oldp+50,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_26),32);
        bufp->chgIData(oldp+51,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_27),32);
        bufp->chgIData(oldp+52,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_28),32);
        bufp->chgIData(oldp+53,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_29),32);
        bufp->chgIData(oldp+54,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_30),32);
        bufp->chgIData(oldp+55,(vlSelf->Top__DOT__cpu__DOT__regs__DOT__registers_31),32);
    }
    bufp->chgBit(oldp+56,(vlSelf->clock));
    bufp->chgBit(oldp+57,(vlSelf->reset));
    bufp->chgIData(oldp+58,(vlSelf->io_instruction_address),32);
    bufp->chgIData(oldp+59,(vlSelf->io_instruction),32);
    bufp->chgIData(oldp+60,(vlSelf->io_memory_bundle_address),32);
    bufp->chgIData(oldp+61,(vlSelf->io_memory_bundle_write_data),32);
    bufp->chgBit(oldp+62,(vlSelf->io_memory_bundle_write_enable));
    bufp->chgBit(oldp+63,(vlSelf->io_memory_bundle_write_strobe_0));
    bufp->chgBit(oldp+64,(vlSelf->io_memory_bundle_write_strobe_1));
    bufp->chgBit(oldp+65,(vlSelf->io_memory_bundle_write_strobe_2));
    bufp->chgBit(oldp+66,(vlSelf->io_memory_bundle_write_strobe_3));
    bufp->chgIData(oldp+67,(vlSelf->io_memory_bundle_read_data),32);
    bufp->chgBit(oldp+68,(vlSelf->io_instruction_valid));
    bufp->chgCData(oldp+69,(vlSelf->io_deviceSelect),3);
    bufp->chgCData(oldp+70,(vlSelf->io_debug_read_address),5);
    bufp->chgIData(oldp+71,(vlSelf->io_debug_read_data),32);
    bufp->chgIData(oldp+72,(((IData)(vlSelf->io_instruction_valid)
                              ? vlSelf->io_instruction
                              : 0x13U)),32);
    bufp->chgIData(oldp+73,(((3U == (IData)(vlSelf->Top__DOT__cpu__DOT__id__DOT__opcode))
                              ? ((2U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                  ? vlSelf->io_memory_bundle_read_data
                                  : ((5U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                      ? ((0U == (3U 
                                                 & vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_15[0U]))
                                          ? (0xffffU 
                                             & vlSelf->io_memory_bundle_read_data)
                                          : VL_SHIFTR_III(32,32,32, vlSelf->io_memory_bundle_read_data, 0x10U))
                                      : ((1U == (IData)(vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3))
                                          ? ((0U == 
                                              (3U & 
                                               vlSelf->Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_15[0U]))
                                              ? (((
                                                   (0x8000U 
                                                    & vlSelf->io_memory_bundle_read_data)
                                                    ? 0xffffU
                                                    : 0U) 
                                                  << 0x10U) 
                                                 | (0xffffU 
                                                    & vlSelf->io_memory_bundle_read_data))
                                              : (((
                                                   (vlSelf->io_memory_bundle_read_data 
                                                    >> 0x1fU)
                                                    ? 0xffffU
                                                    : 0U) 
                                                  << 0x10U) 
                                                 | (vlSelf->io_memory_bundle_read_data 
                                                    >> 0x10U)))
                                          : vlSelf->Top__DOT__cpu__DOT__mem__DOT___io_wb_memory_read_data_T_67)))
                              : 0U)),32);
    bufp->chgCData(oldp+74,(((IData)(vlSelf->io_instruction_valid)
                              ? (vlSelf->io_instruction 
                                 >> 0x19U) : 0U)),7);
    bufp->chgCData(oldp+75,(((IData)(vlSelf->io_instruction_valid)
                              ? (0x1fU & (vlSelf->io_instruction 
                                          >> 0x14U))
                              : 0U)),5);
}

void VTop___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop___024root__trace_cleanup\n"); );
    // Init
    VTop___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VTop___024root*>(voidSelf);
    VTop__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
}
