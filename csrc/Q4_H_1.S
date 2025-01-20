fadd:
    li      a0, 0x3F800000      # A0 = 1.0 
    li      a1, 0x40000000      # A1 = 2.0 

    # Unpack exponent of X
    srl     a2, a0, 23          # A2 = A0 >> 23
    andi    a2, a2, 0xFF        # A2 = A2 & 0xFF (Exponent of X)

    # Unpack exponent of Y
    srl     a3, a1, 23          # A3 = A1 >> 23
    andi    a3, a3, 0xFF        # A3 = A3 & 0xFF (Exponent of Y)

    # Flush-to-zero: if X exponent is zero, return Y
    beqz    a2, __addsf_return_y_flushed

    # If Y exponent is zero, return X
    beqz    a3, __addsf_return_x

    # Unpack significands and prepare for alignment
    slli    a4, a0, 9           # A4 = A0 << 9
    slli    a5, a1, 9           # A5 = A1 << 9

    # Check for NaN or Infinity using B-extension CLMUL instruction
    clmul   t0, a2, a2          # t0 = A2 * A2 (detect exponent overflow)
    li      t1, 255
    beq     a2, t1, __addsf_x_nan_inf
    beq     a3, t1, __addsf_y_nan_inf

    # Finish unpacking significands
    srli    a4, a4, 6           # A4 = A4 >> 6
    srli    a5, a5, 6           # A5 = A5 >> 6

    # Restore the implicit '1' bit
    li      t1, 1 << (23 + 3)   # t1 = 1 << 26
    or      a4, a4, t1          # A4 |= t1
    or      a5, a5, t1          # A5 |= t1

    srl     t2, a0, 31          # t2 = A0 >> 31, H01
    andi    t2, t2, 1
    beq     t2, x0, skip_neg_x
    xori    a4, a4, -1
skip_neg_x:
    # Store 25 in t1
    li      t1, 25

    srl     t2, a1, 31          # t2 = A1 >> 31, H02
    andi    t2, t2, 1
    beq     t2, x0, skip_neg_y
    xori    a5, a5, -1
skip_neg_y:
    # Compare exponents
    bltu    a2, a3, __addsf_ye_gt_xe  # If A2 < A3, swap operands

    # Proceed with addition where exponent of X >= exponent of Y
__addsf_xe_gte_ye:
    # Compute exponent difference
    sub     t3, a2, a3          # t3 = exp_lhs - exp_rhs

    # Check if exponent difference is too large
    bgeu    t3, t1, __addsf_return_x  # If difference >= 25, return X

    # Shift significand of Y (rhs) right by exponent difference (use B-extension SRA)
    sra     a5, a5, t3          # A5 = A5 >> t3

    # Set sticky bit if bits were shifted out (use B-extension ORC.B)
    orc.b   t4, a5              # Sticky bit calculation for A5
    or      a5, a5, t4          # A5 |= t4

    # Add significands
    add     a4, a4, a5          # A4 = A4 + A5

    # Check for zero result
    beqz    a4, __addsf_return_0

    # Convert from two's complement to sign-magnitude (use BEXT for bit extraction)
    bext    t2, a4, 31          # Extract sign bit of A4
    xor     a4, a4, t2          # If negative, invert bits
    sub     a4, a4, t2          # If negative, add 1

    # Normalize the result
    li      t5, 0               # t5 will count leading zeros
norm_loop_xe_gte_ye:
    sll     t4, a4, 1           # t4 = A4 << 1
    bltz    t4, norm_done_xe_gte_ye  # If MSB is 1, done
    addi    t5, t5, 1           # Increment leading zero count
    sll     a4, a4, 1           # Shift A4 left
    j       norm_loop_xe_gte_ye
norm_done_xe_gte_ye:
    sub     a2, a2, t5          # Adjust exponent

    # Check for underflow or overflow
    bgeu    a2, t0, overflow_xe_gte_ye  # If exponent >= 255, overflow, H03
    bltz    a2, underflow_xe_gte_ye     # If exponent < 0, underflow

    # Pack the result
    slli    a2, a2, 23          # Shift exponent to position
    srli    a4, a4, 9           # Align significand, H04
    or      a0, a2, a4          # Combine exponent and significand

    # Restore sign
    sll     t2, t2, 31          # Shift sign bit back, H05
    or      a0, a0, t2          # Set sign bit

    li      t0, 0x40400000      
    beq     a0, t0, correct     
    li      a7, 1              
    j       end_program

correct:
    li      a7, 0               

end_program:
    # 結束程式
    jalr    x0, ra, 0

# Handle underflow
underflow_xe_gte_ye:
    add     a0, x0, x0          # Return zero
    jalr    x0, ra, 0

# Handle overflow
overflow_xe_gte_ye:
    li      a0, 0x7F800000      # Set to Infinity, H06
    sll     t2, t2, 31          # Shift sign bit back, H07
    or      a0, a0, t2          # Set sign bit
    jalr    x0, ra, 0

# Case where exponent of Y > exponent of X
__addsf_ye_gt_xe:
    # Swap operands and repeat the process
    mv      t6, a0              # Temporarily store A0
    mv      a0, a1              # A0 = A1
    mv      a1, t6              # A1 = original A0
    mv      t6, a2              # Swap exponents
    mv      a2, a3
    mv      a3, t6
    mv      t6, a4              # Swap significands
    mv      a4, a5
    mv      a5, t6
    j       __addsf_xe_gte_ye   # Jump to the same handling

# Handle NaN or Infinity for X
__addsf_x_nan_inf:
    add     a0, a0, x0          # Return X
    jalr    x0, ra, 0

# Handle NaN or Infinity for Y
__addsf_y_nan_inf:
    add     a0, a1, x0          # Return Y
    jalr    x0, ra, 0

# Return Y if X is zero
__addsf_return_y_flushed:
    add     a0, a1, x0          # A0 = Y
    jalr    x0, ra, 0

# Return X if Y is zero
__addsf_return_x:
    jalr    x0, ra, 0

# Return zero result
__addsf_return_0:
    add     a0, x0, x0          # A0 = 0
    jalr    x0, ra, 0