# EEC116-8bit-Microprocessor
A full custom 8-bit non-piplined microprocessor built in Magic

# Design Standards
1. Use odd metal layers for horizontal runs and even metal layers for vertical runs. m1 and m2 exempted.
2. Standard cell height is 72 lambda
3. m5 will enter the datapath from the left, then be routed to cells through m4
4. Power stripes will span across the datapath from top to bottom in m6 (routed in m4/m5)
5. The msb of the opcode is the multiply-enable bit. 4-to-1 mux used for ADD, AND, OR, XOR and then a 2-to-1 mux to select multiply.
6. 
