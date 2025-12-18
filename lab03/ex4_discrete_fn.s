.globl f # this allows other files to find the function f

# f takes in two arguments:
# a0 is the value we want to evaluate f at
# a1 is the address of the "output" array (read the lab spec for more information).
# The return value should be stored in a0
f:
    # Your code here
    addi t0, a0, 3  # convert argument to array index
    slli t0, t0, 2  # convert index to offset
    add t1, a1, t0  # add offset to base address to get the address of desired element
    lw a0, 0(t1)    # load the desired element

    # This is how you return from a function. You'll learn more about this later.
    # This should be the last line in your program.
    jr ra
