# Master test script for 116 final project, Fall 2019
# Revision 1.0
# Do not modify any part of this file, except to change the simulation
# stepsize or add/remove the analyzer window signals.
# Tim Andreas, Arthur Hlaing
# 2019/12/07  Written

# Simulation stepsize. Modify this as needed to test the speed of your design.
stepsize 1.44


clock clk 0 1
vector A A7 A6 A5 A4 A3 A2 A1 A0
vector B B7 B6 B5 B4 B3 B2 B1 B0
vector C C7 C6 C5 C4 C3 C2 C1 C0
vector D D7 D6 D5 D4 D3 D2 D1 D0
vector opcode opcode2 opcode1 opcode0

#  code | operation
# ------+-----------
#   000 | XXX
#   001 | XXX
#   010 | XXX
#   011 | XXX

# Define your opcodes in variables to improve readability.
# Variables may be referenced later by calling $VarName.
set opcode_ADD 110
set opcode_AND 100
set opcode_XOR 111
set opcode_OR  101
set opcode_MUL 000

h Cen Den
l Actrl Bctrl
setvector opcode $opcode_AND
setvector A 00000000
setvector B 00000000
# First clock clocks inputs into input registers.
# Second clock pushes these inputs through the datapath and registers the output in the output registers.
c
c
assert C 00000000
assert D 00000000

setvector A 11111111
setvector B 00000000
c
c
assert C 00000000
assert D 00000000

setvector A 00000000
setvector B 11111111
c
c
assert C 00000000
assert D 00000000

setvector A 11111111
setvector B 11111111
c
c
assert C 11111111
assert D 11111111

setvector opcode $opcode_OR
setvector A 00000000
setvector B 00000000
c
c
assert C 00000000
assert D 00000000

setvector A 11111111
setvector B 00000000
c
c
assert C 11111111
assert D 11111111

setvector A 00000000
setvector B 11111111
c
c
assert C 11111111
assert D 11111111

setvector A 11111111
setvector B 11111111
c
c
assert C 11111111
assert D 11111111

setvector opcode $opcode_XOR
setvector A 00000000
setvector B 00000000
c
c
assert C 00000000
assert D 00000000

setvector A 11111111
setvector B 00000000
c
c
assert C 11111111
assert D 11111111

setvector A 00000000
setvector B 11111111
c
c
assert C 11111111
assert D 11111111

setvector A 11111111
setvector B 11111111
c
c
assert C 00000000
assert D 00000000

setvector opcode $opcode_ADD
setvector A 00000000
setvector B 00000000
c
c
assert C 00000000
assert D 00000000

setvector A 00000001
setvector A 00000001
c
c
# change from 00000010 to 00000001
assert C 00000001
assert D 00000001

setvector A 00001111
setvector B 00001111
c
c
assert C 00011110
assert D 00011110

setvector A 11111111
setvector B 00000000
c
c
assert C 11111111
assert D 11111111

setvector A 00000000
setvector B 11111111
c
c
assert C 11111111
assert D 11111111

setvector A 11111111
setvector B 00000001
c
c

setvector opcode $opcode_MUL
setvector A 00000000
setvector B 00000000
c
c
assert C 00000000
assert D 00000000

setvector A 00000001
#original was setvector A
setvector B 00000001 
c
c
assert C 00000001
assert D 00000001

setvector A 00000001
setvector B 11111111
c
c
assert C 11111111
assert D 11111111

setvector A 11111111
setvector B 00000001
c
c
assert C 11111111
assert D 11111111

setvector A 00000101
setvector B 00000101
c
c
assert C 00011001
assert D 00011001

setvector A 00001010
setvector B 00001010
c
c
assert C 01100100
assert D 01100100

setvector A 00001111
setvector B 00001111
c
c
assert C 11100001
assert D 11100001

setvector opcode $opcode_ADD
l Den
h Cen
setvector A 00000001
setvector B 00000010
c
c
assert C 00000011
assert D 11100001

h Den
l Cen
setvector A 00000011
setvector B 00000100 
c
c
assert C 00000011
assert D 00000111

setvector opcode $opcode_MUL
h Actrl Bctrl
l Den
h Cen
setvector A 10101010
setvector B 10101010
c
c
assert C 00010101
assert D 00000111

l Actrl Bctrl
h Cen Den
setvector A 01010101
setvector B 01010101
c
c

setvector A 11111111
setvector B 11111111
c
c

setvector A 00000000
setvector B 00000001
c
c

setvector A 11111111
setvector B 11111111
c
c

# 'printp' lists all pending events (if any). Calling this after every 'c' command is a handy way to see where the slow paths are in your circuit.
printp
# 'path [node]' shows the most recent transitions of the critical path of the specified node. Call this command on the slow paths to see where the slowest transitions are.
path D6

# Open an analyzer window showing key signals. You can comment this out if
# you find this annoying.
analyzer clk A B C D opcode Bctrl Cen Den