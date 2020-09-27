# Fx15, Fx18, Fx1E
execute unless score Global PC_nibble_4 matches 5 unless score Global PC_nibble_4 matches 8 unless score Global PC_nibble_4 matches 14 run function cpu:opcode_switch/unknown_opcode

execute if score Global PC_nibble_4 matches 5 run function cpu:opcode_switch/opcode_fx15
execute if score Global PC_nibble_4 matches 8 run function cpu:opcode_switch/opcode_fx18
execute if score Global PC_nibble_4 matches 14 run function cpu:opcode_switch/opcode_fx1e
