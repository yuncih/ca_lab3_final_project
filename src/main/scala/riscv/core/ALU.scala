// mycpu is freely redistributable under the MIT License. See the file
// "LICENSE" for information on usage and redistribution of this file.

package riscv.core

import chisel3._
import chisel3.experimental.ChiselEnum
import chisel3.util._
import riscv.Parameters

object ALUFunctions extends ChiselEnum {
  val zero, add, sub, sll, slt, xor, or, and, srl, sra, sltu, andn, orn, xnor, shfl, rol, ror,
  clz, ctz, cpop, bext, bset, bclr = Value
}

class ALU extends Module {
  val io = IO(new Bundle {
    val func = Input(ALUFunctions())

    val op1 = Input(UInt(Parameters.DataWidth))
    val op2 = Input(UInt(Parameters.DataWidth))

    val result = Output(UInt(Parameters.DataWidth))
  })

  io.result := 0.U
  val dataWidth = Parameters.DataWidth
  switch(io.func) {
    is(ALUFunctions.add) {
      io.result := io.op1 + io.op2
    }
    is(ALUFunctions.sub) {
      io.result := io.op1 - io.op2
    }
    is(ALUFunctions.sll) {
      io.result := io.op1 << io.op2(4, 0)
    }
    is(ALUFunctions.slt) {
      io.result := io.op1.asSInt < io.op2.asSInt
    }
    is(ALUFunctions.xor) {
      io.result := io.op1 ^ io.op2
    }
    is(ALUFunctions.or) {
      io.result := io.op1 | io.op2
    }
    is(ALUFunctions.and) {
      io.result := io.op1 & io.op2
    }
    is(ALUFunctions.srl) {
      io.result := io.op1 >> io.op2(4, 0)
    }
    is(ALUFunctions.sra) {
      io.result := (io.op1.asSInt >> io.op2(4, 0)).asUInt
    }
    is(ALUFunctions.sltu) {
      io.result := io.op1 < io.op2
    }
    // B extention
    is(ALUFunctions.andn) {
      io.result := io.op1 & ~io.op2 // ANDN: op1 AND NOT op2
    }
    is(ALUFunctions.orn) {
      io.result := io.op1 | ~io.op2 // ORN: op1 OR NOT op2
    }
    is(ALUFunctions.xnor) {
      io.result := ~(io.op1 ^ io.op2) // XNOR: NOT (op1 XOR op2)
    }
    is(ALUFunctions.shfl) {
      // SHFL: Shift Left Logical, shift `op2` positions on `op1`
      io.result := io.op1 << io.op2(4, 0)
    }
    is(ALUFunctions.rol) {
      // ROL: Rotate Left
      val shiftAmount = io.op2(4, 0)
      val width = dataWidth.get
      io.result := (io.op1 << shiftAmount) | (io.op1 >> (width.U - shiftAmount))
    }
    is(ALUFunctions.ror) {
      // ROR: Rotate Right
      val shiftAmount = io.op2(4, 0)
      val width = dataWidth.get
      io.result := (io.op1 >> shiftAmount) | (io.op1 << (width.U - shiftAmount))
    }
    is(ALUFunctions.ctz) {
      // CTZ: Count Trailing Zeros
      io.result := PopCount(io.op1).asUInt // Count trailing zeros
    }
    is(ALUFunctions.cpop) {
      // CPOP: Count One Bits (Population Count)
      io.result := PopCount(io.op1).asUInt // Count number of 1 bits
    }
    is(ALUFunctions.bext) {
      // BEXT: Extract Bit
      io.result := io.op1(io.op2(4, 0)) // Extract bit from op1 at position specified by op2
    }
    is(ALUFunctions.bset) {
      // BSET: Set Bit
      io.result := io.op1 | (1.U << io.op2(4, 0)) // Set bit in op1 at position specified by op2
    }
    is(ALUFunctions.bclr) {
      // BCLR: Clear Bit
      io.result := io.op1 & ~(1.U << io.op2(4, 0)) // Clear bit in op1 at position specified by op2
    }
  }


}
