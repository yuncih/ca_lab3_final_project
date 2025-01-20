# Convert signed int to float
# float i2f(s32 num);
# INPUT:  A0 = integer number
# OUTPUT: A0 = float number (IEEE 754 single-precision)
i2f:
    # Prepare result sign in A1
    srai    a1, a0, 31          # A1 = (A0 >> 31), extract sign bit
    slli    a1, a1, 31          # A1 = A1 << 31, position sign bit at bit 31

    # Get absolute value of the number without using abs
    # A0 = (A0 >= 0) ? A0 : -A0
    bgez    a0, no_negate       # If A0 >= 0, skip negation
    neg     a0, a0              # A0 = -A0 (negate value if negative)
no_negate:

    # Check if number is zero
    beqz    a0, zero_result     # If A0 == 0, result is zero

    # Count leading zeros in A0 using clz instruction (B extension)
    clz     t0, a0              # T0 = count leading zeros in A0

    # Normalize the number
    # Shift left by leading zeros to normalize
    sll     a1, a0, t0          # A1 = A0 << T0 (shift to normalize)

    # Prepare result exponent
    # Exponent = 158 - leading_zeros
    li      t1, 158
    sub     a0, t1, t0          # A0 = 158 - T0 (compute exponent)

    # Rounding: Add 0x80 to A1 (rounding bit at position 7)
    addi    a1, a1, 128         # A1 = A1 + 0x80

    # Check for overflow after rounding
    srli    t1, a1, 31          # T1 = MSB of A1 (sign bit after rounding)
    bnez    t1, adjust_exponent # If MSB is set, increment exponent
    j       adjust_mantissa

adjust_exponent:
    addi    a0, a0, 1           # Increment exponent due to overflow
    srli    a1, a1, 1           # Right shift mantissa to fit (remove overflow)

adjust_mantissa:
    # Align mantissa and exponent
    srli    a1, a1, 9           # A1 = A1 >> 9 (align mantissa to bits 0..22)
    slli    a0, a0, 23          # A0 = A0 << 23 (align exponent to bits 23..30)

    # Compose final result
    or      a0, a0, a1          # A0 = exponent | mantissa
    or      a0, a0, a1          # A0 = A0 | sign bit (bit 31)
    jalr    x0, ra, 0           # Return from function

zero_result:
    # Return zero (signed zero with correct sign)
    or      a0, x0, a1          # A0 = sign bit (A1)
    jalr    x0, ra, 0           # Return from function

# --- Below is the part that checks inputs and compares results ---
# Test and validate the result
    li      a0, 10               

    # Call i2f function to convert integer to float
    jal     i2f                  

    # Prepare the expected result for validation (IEEE 754 representation of 10.0)
    li      t0, 0x41200000        

    # Compare the result (A0) with the expected value (t0)
    beq     a0, t0, correct       
    j       incorrect            

correct:
    # If the result is correct
    li      a0, 1                # Set A0 to 1 (indicating success)
    jalr    x0, ra, 0            # Return

incorrect:
    # If the result is incorrect
    li      a0, 0                # Set A0 to 0 (indicating failure)
    jalr    x0, ra, 0            # Return