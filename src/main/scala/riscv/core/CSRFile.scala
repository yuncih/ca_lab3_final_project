package riscv.core

import chisel3._
import riscv.Parameters

class CSRFile extends Module {
  val io = IO(new Bundle {
    val rs1_data = Input(UInt(Parameters.DataWidth))    
    val csr_addr = Input(UInt(12.W))                     
    val csr_in = Input(UInt(Parameters.DataWidth))      
    val csr_op = Input(UInt(3.W))                        
    val csr_out = Output(UInt(Parameters.DataWidth))     
  })
 
  val csrRegs = RegInit(VecInit(Seq.fill(4096)(0.U(Parameters.DataWidth)))) 

  csrRegs(0x300) := 0x00000000.U // mstatus
  csrRegs(0x305) := 0x00000000.U // mtvec
  csrRegs(0x342) := 0x00000000.U // mcause
  csrRegs(0x341) := 0x00000000.U // mepc

  io.csr_out := 0.U
  io.csr_out := csrRegs(io.csr_addr)
  when(io.csr_op === 0.U) { // csrrw
    csrRegs(io.csr_addr) := io.rs1_data
  }.elsewhen(io.csr_op === 1.U) { // csrrs
    csrRegs(io.csr_addr) := csrRegs(io.csr_addr) | io.rs1_data
  }.elsewhen(io.csr_op === 2.U) { // csrrc
    csrRegs(io.csr_addr) := csrRegs(io.csr_addr) & ~io.rs1_data
  }.elsewhen(io.csr_op === 4.U) { // csrrwi
    csrRegs(io.csr_addr) := io.csr_in
  }.elsewhen(io.csr_op === 5.U) { // csrrsi
    csrRegs(io.csr_addr) := csrRegs(io.csr_addr) | io.csr_in
  }.elsewhen(io.csr_op === 6.U) { // csrrci
    csrRegs(io.csr_addr) := csrRegs(io.csr_addr) & ~io.csr_in
  }

}
