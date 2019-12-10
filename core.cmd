vector A a7 a6 a5 a4 a3 a2 a1 a0
vector B b7 b6 b5 b4 b3 b2 b1 b0
vector C C7 C6 C5 C4 C3 C2 C1 C0
vector D d7 d6 d5 d4 d3 d2 d1 d0
vector opcode opcode2 opcode1 opcode0
w A B C D Actrl Bctrl Cen Den opcode clk
l A B clk opcode
h Actrl Bctrl Cen Den
s

setvector A 00000000
setvector B 00000000
l clk
s
h clk
s
l clk
s
h clk
s
assert C 00000000
assert D 00000000

setvector A 00000000
setvector B 00000001
l clk
s
h clk
s
l clk
s
h clk
s
assert C 00000000
assert D 00000000

setvector A 00000001
setvector B 00000000
l clk
s
h clk
s
l clk
s
h clk
s
assert C 00000000

setvector A 00000001
setvector B 00000001
l clk
s
h clk
s
l clk
s
h clk
s
assert C 00000001
assert D 00000001

setvector A 00000001
setvector B 00001010
l clk
s
h clk
s
l clk
s
h clk
s
assert C 00001010
assert D 00001010

setvector A 00001010
setvector B 00000001
l clk
s
h clk
s
l clk
s
h clk
s
assert C 00001010
assert D 00001010

setvector A 00000001
setvector B 11111111
l clk
s
h clk
s
l clk
s
h clk
s
assert C 11111111
assert D 11111111

setvector A 11111111
setvector B 00000001
l clk
s
h clk
s
l clk
s
h clk
s
assert C 11111111
assert C 11111111

setvector A 00001111
setvector B 00010000
l clk
s
h clk
s
l clk
s
h clk
s
assert C 11110000
assert D 11110000

echo ----------- DELAB TESTING -----------
setvector A 01010101
setvector B 01010101
l clk
s
h clk
s
l clk
s
h clk
s
path C7

setvector A 11111111
setvector B 11111111
l clk
s
h clk
s
l clk
s
h clk
s
path C7

setvector A 00000000
setvector B 00000001
l clk
s
h clk
s
l clk
s
h clk
s
path C7

setvector A 11111111
setvector B 11111111
l clk
s
h clk
s
l clk
s
h clk
s
path C7