# 0xxx opcode
# Must be 00Ex
execute unless score Global PC_nibble_2 matches 0 run function cpu:opcode_switch/unknown_opcode
execute unless score Global PC_nibble_3 matches 14 run function cpu:opcode_switch/unknown_opcode

# Must be 00EE or 00E0
execute unless score Global PC_nibble_4 matches 0 unless score Global PC_nibble_4 matches 14 run function cpu:opcode_switch/unknown_opcode

# 00E0 - CLS (clear screen)
execute if score Global PC_nibble_4 matches 0 run function renderer:clear

# 00EE - RET (ld PC, [SP]; dec SP)
execute if score Global PC_nibble_4 matches 14 run function cpu:opcode_switch/opcode_00ee
