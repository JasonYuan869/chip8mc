renderer:rollover

scoreboard players operation Global copy_2 = Global col
scoreboard players operation Global pixel = Global row

scoreboard players operation Global copy_2 *= c64 Constant
scoreboard players operation Global pixel += Global copy_2
# pixel now contains the pixel number [0-2048]
# copy_1 contains 1 (number to XOR)

# XOR mechanism: If it's on, turn it off and set VF = 1. If it's off, turn it on.
function renderer:set_pixel/set_pixel
