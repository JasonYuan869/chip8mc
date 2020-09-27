# 7xxx opcode
# 7xkk - ADD Vx, byte
# Trashes nibbles
scoreboard players operation Global PC_nibble_3 *= c16 Constant
scoreboard players operation Global PC_nibble_4 += Global PC_nibble_3

execute if score Global PC_nibble_2 matches 0 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_0
execute if score Global PC_nibble_2 matches 1 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_1
execute if score Global PC_nibble_2 matches 2 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_2
execute if score Global PC_nibble_2 matches 3 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_3
execute if score Global PC_nibble_2 matches 4 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_4
execute if score Global PC_nibble_2 matches 5 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_5
execute if score Global PC_nibble_2 matches 6 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_6
execute if score Global PC_nibble_2 matches 7 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_7
execute if score Global PC_nibble_2 matches 8 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_8
execute if score Global PC_nibble_2 matches 9 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_9
execute if score Global PC_nibble_2 matches 10 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_10
execute if score Global PC_nibble_2 matches 11 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_11
execute if score Global PC_nibble_2 matches 12 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_12
execute if score Global PC_nibble_2 matches 13 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_13
execute if score Global PC_nibble_2 matches 14 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_14
execute if score Global PC_nibble_2 matches 15 run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_15
