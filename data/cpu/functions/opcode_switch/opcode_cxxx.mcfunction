# Cxxx opcode
scoreboard players operation Global bitwise_1 = Global PC_nibble_3
scoreboard players operation Global copy_1 = @e[tag=RNG_entity,limit=1] NUM
scoreboard players operation Global copy_2 = Global copy_1
scoreboard players operation Global copy_1 /= c16 Constant
scoreboard players operation Global copy_2 %= c16 Constant
scoreboard players operation Global bitwise_2 = Global copy_1

execute if score Global PC_nibble_2 matches 0 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_0
execute if score Global PC_nibble_2 matches 1 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_1
execute if score Global PC_nibble_2 matches 2 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_2
execute if score Global PC_nibble_2 matches 3 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_3
execute if score Global PC_nibble_2 matches 4 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_4
execute if score Global PC_nibble_2 matches 5 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_5
execute if score Global PC_nibble_2 matches 6 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_6
execute if score Global PC_nibble_2 matches 7 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_7
execute if score Global PC_nibble_2 matches 8 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_8
execute if score Global PC_nibble_2 matches 9 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_9
execute if score Global PC_nibble_2 matches 10 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_10
execute if score Global PC_nibble_2 matches 11 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_11
execute if score Global PC_nibble_2 matches 12 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_12
execute if score Global PC_nibble_2 matches 13 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_13
execute if score Global PC_nibble_2 matches 14 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_14
execute if score Global PC_nibble_2 matches 15 run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_15
