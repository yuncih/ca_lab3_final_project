// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VTop.h for the primary calling header

#ifndef VERILATED_VTOP___024ROOT_H_
#define VERILATED_VTOP___024ROOT_H_  // guard

#include "verilated.h"


class VTop__Syms;

class alignas(VL_CACHE_LINE_BYTES) VTop___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        VL_IN8(clock,0,0);
        VL_IN8(reset,0,0);
        VL_OUT8(io_memory_bundle_write_enable,0,0);
        VL_OUT8(io_memory_bundle_write_strobe_0,0,0);
        VL_OUT8(io_memory_bundle_write_strobe_1,0,0);
        VL_OUT8(io_memory_bundle_write_strobe_2,0,0);
        VL_OUT8(io_memory_bundle_write_strobe_3,0,0);
        VL_IN8(io_instruction_valid,0,0);
        VL_OUT8(io_deviceSelect,2,0);
        VL_IN8(io_debug_read_address,4,0);
        CData/*0:0*/ Top__DOT__cpu__DOT__regs_io_write_enable;
        CData/*4:0*/ Top__DOT__cpu__DOT__regs_io_read_address1;
        CData/*4:0*/ Top__DOT__cpu__DOT__regs_io_read_address2;
        CData/*1:0*/ Top__DOT__cpu__DOT__id_io_wb_reg_write_source;
        CData/*6:0*/ Top__DOT__cpu__DOT__id__DOT__opcode;
        CData/*4:0*/ Top__DOT__cpu__DOT__id__DOT__rd;
        CData/*4:0*/ Top__DOT__cpu__DOT__id__DOT__rs1;
        CData/*0:0*/ Top__DOT__cpu__DOT__id__DOT___io_wb_reg_write_source_T_10;
        CData/*2:0*/ Top__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_funct3;
        CData/*3:0*/ Top__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT___GEN_8;
        CData/*0:0*/ __VstlFirstIteration;
        CData/*0:0*/ __VicoFirstIteration;
        CData/*0:0*/ __Vtrigprevexpr___TOP__clock__0;
        CData/*0:0*/ __VactContinue;
        VL_OUT(io_instruction_address,31,0);
        VL_IN(io_instruction,31,0);
        VL_OUT(io_memory_bundle_address,31,0);
        VL_OUT(io_memory_bundle_write_data,31,0);
        VL_IN(io_memory_bundle_read_data,31,0);
        VL_OUT(io_debug_read_data,31,0);
        IData/*31:0*/ Top__DOT__cpu__DOT__regs_io_write_data;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs_io_read_data1;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs_io_read_data2;
        IData/*31:0*/ Top__DOT__cpu__DOT__id_io_ex_immediate;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_0;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_1;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_2;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_3;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_4;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_5;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_6;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_7;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_8;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_9;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_10;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_11;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_12;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_13;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_14;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_15;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_16;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_17;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_18;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_19;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_20;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_21;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_22;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_23;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_24;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_25;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_26;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_27;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_28;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_29;
    };
    struct {
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_30;
        IData/*31:0*/ Top__DOT__cpu__DOT__regs__DOT__registers_31;
        IData/*31:0*/ Top__DOT__cpu__DOT__inst_fetch__DOT__pc;
        IData/*31:0*/ Top__DOT__cpu__DOT__inst_fetch__DOT___pc_T_1;
        IData/*31:0*/ Top__DOT__cpu__DOT__ex__DOT___io_if_jump_address_T_1;
        IData/*31:0*/ Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_6;
        IData/*31:0*/ Top__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_7;
        VlWide<3>/*94:0*/ Top__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_15;
        IData/*31:0*/ Top__DOT__cpu__DOT__mem__DOT___io_wb_memory_read_data_T_67;
        IData/*31:0*/ __VactIterCount;
        VlUnpacked<CData/*0:0*/, 3> __Vm_traceActivity;
    };
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    VTop__Syms* const vlSymsp;

    // CONSTRUCTORS
    VTop___024root(VTop__Syms* symsp, const char* v__name);
    ~VTop___024root();
    VL_UNCOPYABLE(VTop___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
