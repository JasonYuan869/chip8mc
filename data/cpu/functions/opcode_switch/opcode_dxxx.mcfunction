# Dxxx opcode
# DxyN - Draw sprite at coordinate Vx, Vy with a height of N pixels.
scoreboard players set Global VF 0
function cpu:opcode_switch/opcode_dxxx/xy/xy
scoreboard players operation Global looper_1 = Global PC_nibble_4

function cpu:opcode_switch/opcode_dxxx/first_loop
