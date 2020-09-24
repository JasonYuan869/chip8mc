# Exxx opcode
# Ex9E or ExA1
execute unless score Global PC_nibble_3 matches 9..10 run function cpu:opcode_switch/unknown_opcode
execute if score PC_nibble_4 matches 2..13 run function cpu:opcode_switch/unknown_opcode
execute unless score PC_nibble_4 matches 1..14 run function cpu:opcode_switch/unknown_opcode

execute if score PC_nibble_3 matches 9 if score PC_nibble_4 matches 1 run function cpu:opcode_switch/unknown_opcode
execute if score PC_nibble_3 matches 10 if score PC_nibble_4 matches 13 run function cpu:opcode_switch/unknown_opcode

# Remaining opcodes must be either 9E or A1
execute if score Global PC_nibble_3 matches 9 run function cpu:opcode_switch/opcode_Ex9E
execute if score Global PC_nibble_3 matches 10 run function cpu:opcode_switch/opcode_ExA1
