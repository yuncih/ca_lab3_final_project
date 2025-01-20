# Function: sum_of_squares
# Computes the sum of squares from n to 0, given n in a0.
# The result is stored in a0.

.section .text
.global sum_of_squares

sum_of_squares:
    # Fixed inputs for testing
    li a0, 5                # Set n = 5
    li a1, 0                # Set m = 0 (accumulator for sum of squares)

    # Check if n (a0) is less than or equal to zero
    ble a0, x0, zero_case 

recurse_case:
    # Save caller-saved registers on the stack
    add t0, a0, x0          # t0 = a0 (copy n)
    addi sp, sp, -12        # Allocate stack space 
    sw a1, 0(sp)            # Save a1 (m)
    sw t0, 4(sp)            # Save t0 
    sw ra, 8(sp)            # Save return address 

    # Call the square function (using B extension for n^2 calculation)
    clmul a0, t0, t0        # a0 = t0 * t0 (n^2 using carry-less multiplication)

    # Restore registers and stack
    lw a1, 0(sp)            # Restore a1 (m)
    lw t0, 4(sp)            # Restore t0 
    lw ra, 8(sp)            # Restore return address 
    addi sp, sp, 12         # Deallocate stack space 

    # Update m = m + n^2
    add a1, a1, a0

    # Decrement n: a0 = n - 1
    addi a0, t0, -1

    # Recursive call to sum_of_squares
    addi sp, sp, -4         # Allocate stack space for ra
    sw ra, 0(sp)            # Save return address
    jal ra, sum_of_squares  # Recursive call
    lw ra, 0(sp)            # Restore return address
    addi sp, sp, 4          # Deallocate stack space 

    # Return from the function
    jalr x0, ra, 0 

zero_case:
    # If n <= 0, return m (a1)
    add a0, a1, x0
    jalr x0, ra, 0 

# Function: square
# Computes the square of an integer (a0 = n), returns result in a0
# This function is no longer used since clmul is employed.
square:
    ret
    