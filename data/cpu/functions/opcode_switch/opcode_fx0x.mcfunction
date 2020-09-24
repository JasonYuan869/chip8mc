execute unless score Global PC_nibble_4 matches 7 unless score Global PC_nibble_4 matches 10 run cpu:opcode_switch/unknown_opcode

# Fx07 - LD Vx, DT
execute if score Global PC_nibble_4 matches 7 run function cpu:opcode_switch/opcode_fx07

# Fx0A - LD, Vx, K (wait for key press, K)
execute if score Global PC_nibble_4 matches 10 run function cpu:opcode_switch/opcode_fx0A
