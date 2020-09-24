# 2xxx opcode
# 2nnn - CALL addr (inc SP; ld [SP], PC; ld PC, nnn)
# Trashes 2-4
scoreboard players operation Global PC_nibble_2 *= c256 Constant
scoreboard players operation Global PC_nibble_3 *= c16 Constant
scoreboard players operation Global PC_nibble_4 += Global PC_nibble_3
scoreboard players operation Global PC_nibble_4 += Global PC_nibble_2

scoreboard players add Global SP 1
scoreboard players operation Global stack_value = Global PC
function cpu:stack_switch/write_stack/write_stack
scoreboard players operation Global PC = Global PC_nibble_4
