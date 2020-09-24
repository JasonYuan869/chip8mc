# Fxxx opcode
# Fx07, Fx0A, Fx15, Fx18, Fx1E, Fx29, Fx33, Fx55, Fx65
scoreboard players set Global copy_1 0
execute if score Global PC_nibble_3 matches 4 run function cpu:opcode_switch/unknown_opcode
execute if score Global PC_nibble_3 matches 7.. run function cpu:opcode_switch/unknown_opcode
execute if score Global PC_nibble_3 matches 2 unless score Global PC_nibble_4 matches 9 run function cpu:opcode_switch/unknown_opcode
execute if score Global PC_nibble_3 matches 3 unless score Global PC_nibble_4 matches 3 run function cpu:opcode_switch/unknown_opcode
execute if score Global PC_nibble_3 matches 5 unless score Global PC_nibble_4 matches 5 run function cpu:opcode_switch/unknown_opcode
execute if score Global PC_nibble_3 matches 5 unless score Global PC_nibble_4 matches 5 run function cpu:opcode_switch/unknown_opcode

execute if score Global PC_nibble_3 matches 1 run function cpu:opcode_switch/opcode_fx1x

execute if score Global PC_nibble_3 matches 0 run function cpu:opcode_switch/opcode_fx0x
execute if score Global PC_nibble_3 matches 2 run function cpu:opcode_switch/opcode_fx29
execute if score Global PC_nibble_3 matches 3 run function cpu:opcode_switch/opcode_fx33
execute if score Global PC_nibble_3 matches 5 run function cpu:opcode_switch/opcode_fx55

execute if score Global PC_nibble_3 matches 6 run function cpu:opcode_switch/opcode_fx65
