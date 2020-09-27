# 8xxx opcode
execute if score Global PC_nibble_4 matches 8..13 run function cpu:opcode_switch/unknown_opcode
execute if score Global PC_nibble_4 matches 15 run function cpu:opcode_switch/unknown_opcode

execute if score Global PC_nibble_4 matches 0 run function cpu:opcode_switch/opcode_8xx0
execute if score Global PC_nibble_4 matches 1 run function cpu:opcode_switch/opcode_8xx1
execute if score Global PC_nibble_4 matches 2 run function cpu:opcode_switch/opcode_8xx2
execute if score Global PC_nibble_4 matches 3 run function cpu:opcode_switch/opcode_8xx3
execute if score Global PC_nibble_4 matches 4 run function cpu:opcode_switch/opcode_8xx4
execute if score Global PC_nibble_4 matches 5 run function cpu:opcode_switch/opcode_8xx5
execute if score Global PC_nibble_4 matches 6 run function cpu:opcode_switch/opcode_8xx6
execute if score Global PC_nibble_4 matches 7 run function cpu:opcode_switch/opcode_8xx7
execute if score Global PC_nibble_4 matches 14 run function cpu:opcode_switch/opcode_8xxe
