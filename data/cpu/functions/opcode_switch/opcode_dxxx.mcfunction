# Dxxx opcode
# DxyN - Draw sprite at coordinate Vx, Vy with a height of N pixels.
scoreboard players set Global erased 0

# Set col to Vx and row to Vy
function cpu:opcode_switch/opcode_dxxx/xy/xy

# Set first loop count to N
scoreboard players operation Global looper_1 = Global PC_nibble_4

function cpu:opcode_switch/opcode_dxxx/first_loop

scoreboard players operation Global VF = Global erased
