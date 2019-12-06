vector x x7 x6 x5 x4 x3 x2 x1 x0
vector y y7 y6 y5 y4 y3 y2 y1 y0
vector z z7 z6 z5 z4 z3 z2 z1 z0
w x y z
l x y
s

setvector x 00000000
setvector y 00000000
s
assert z 00000000

setvector x 00000000
setvector y 00000001
s
assert z 00000000

setvector x 00000001
setvector y 00000000
s
assert z 00000000

setvector x 00000001
setvector y 00000001
s
assert z 00000001

setvector x 00000001
setvector y 00001010
s
assert z 00001010

setvector x 00001010
setvector y 00000001
s
assert z 00001010

setvector x 00000001
setvector y 11111111
s
assert z 11111111

setvector x 11111111
setvector y 00000001
s
assert z 11111111

setvector x 00001111
setvector y 00010000
s
assert z 11110000

echo ----------- DELAY TESTING -----------
setvector x 01010101
setvector y 01010101
s
path z7

setvector x 11111111
setvector y 11111111
s
path z7

setvector x 00000000
setvector y 00000001
s
path z7

setvector x 11111111
setvector y 11111111
s
path z7