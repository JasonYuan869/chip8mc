# Save current col and row into copy_3, copy_4
scoreboard players operation Global copy_3 = Global col
scoreboard players operation Global copy_4 = Global row

# Wrap edges
function renderer:rollover

scoreboard players operation Global copy_2 = Global row
scoreboard players operation Global pixel = Global col

scoreboard players operation Global copy_2 *= c64 Constant
scoreboard players operation Global pixel += Global copy_2
# pixel now contains the pixel number [0-2048]
# copy_1 contains 1 (number to XOR)

# XOR mechanism: If it's on, turn it off and set VF = 1. If it's off, turn it on.
scoreboard players set Global VF 0
function renderer:set_pixel/set_pixel

# Return unwrapped col and row
scoreboard players operation Global col = Global copy_3
scoreboard players operation Global row = Global copy_4
