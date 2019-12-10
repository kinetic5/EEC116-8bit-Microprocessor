vector x x7 x6 x5 x4 x3 x2 x1 x0
vector y y7 y6 y5 y4 y3 y2 y1 y0
vector z z7 z6 z5 z4 z3 z2 z1 z0
vector nz nz7 nz6 nz5 nz4 nz3 nz2 nz1 nz0
vector opcode opcode2 opcode1 opcode0
vector _y _y7 _y6 _y5 _y4 _y3 _y2 _y1 _y0
w x y z nz Actrl Bctrl c_en opcode clk
l x y clk opcode
h c_en Actrl Bctrl
s

setvector x 00000000
setvector y 00000000
l clk
s
h clk
s
l clk
s
h clk
s
assert z 00000000

setvector x 00000000
setvector y 00000001
l clk
s
h clk
s
l clk
s
h clk
s
assert z 00000000

setvector x 00000001
setvector y 00000000
l clk
s
h clk
s
l clk
s
h clk
s
assert z 00000000

setvector x 00000001
setvector y 00000001
l clk
s
h clk
s
l clk
s
h clk
s
assert z 00000001

setvector x 00000001
setvector y 00001010
l clk
s
h clk
s
l clk
s
h clk
s
assert z 00001010

setvector x 00001010
setvector y 00000001
l clk
s
h clk
s
l clk
s
h clk
s
assert z 00001010

setvector x 00000001
setvector y 11111111
l clk
s
h clk
s
l clk
s
h clk
s
assert z 11111111

setvector x 11111111
setvector y 00000001
l clk
s
h clk
s
l clk
s
h clk
s
assert z 11111111

setvector x 00001111
setvector y 00010000
l clk
s
h clk
s
l clk
s
h clk
s
assert z 11110000

echo ----------- DELAY TESTING -----------
setvector x 01010101
setvector y 01010101
l clk
s
h clk
s
l clk
s
h clk
s
path z7

setvector x 11111111
setvector y 11111111
l clk
s
h clk
s
l clk
s
h clk
s
path z7

setvector x 00000000
setvector y 00000001
l clk
s
h clk
s
l clk
s
h clk
s
path z7

setvector x 11111111
setvector y 11111111
l clk
s
h clk
s
l clk
s
h clk
s
path z7