# 5xxx opcode
# Nibble 4 must be 0
execute unless score Global PC_nibble_4 matches 0 run function cpu:opcode_switch/unknown_opcode

# 5xy0 - SE Vx, Vy (PC +=2 if Vx = Vy)
execute if score Global PC_nibble_2 matches 0 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_0
execute if score Global PC_nibble_2 matches 1 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_1
execute if score Global PC_nibble_2 matches 2 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_2
execute if score Global PC_nibble_2 matches 3 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_3
execute if score Global PC_nibble_2 matches 4 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_4
execute if score Global PC_nibble_2 matches 5 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_5
execute if score Global PC_nibble_2 matches 6 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_6
execute if score Global PC_nibble_2 matches 7 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_7
execute if score Global PC_nibble_2 matches 8 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_8
execute if score Global PC_nibble_2 matches 9 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_9
execute if score Global PC_nibble_2 matches 10 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_10
execute if score Global PC_nibble_2 matches 11 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_11
execute if score Global PC_nibble_2 matches 12 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_12
execute if score Global PC_nibble_2 matches 13 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_13
execute if score Global PC_nibble_2 matches 14 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_14
execute if score Global PC_nibble_2 matches 15 run function cpu:opcode_switch/opcode_5xx0/opcode_5xx0_15
