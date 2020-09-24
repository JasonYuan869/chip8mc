# Divide by 0x10 to isolate first nibble (bit shift right)
# PC_nibble_1 is MSB
scoreboard players operation Global PC_nibble_1 = Global PC_byte_1
scoreboard players operation Global PC_nibble_1 /= c16 Constant

# Modulo 0x10 to isolate second nibble (AND 0x0F)
scoreboard players operation Global PC_nibble_2 = Global PC_byte_1
scoreboard players operation Global PC_nibble_2 %= c16 Constant

# Repeat with second byte
scoreboard players operation Global PC_nibble_3 = Global PC_byte_2
scoreboard players operation Global PC_nibble_3 /= c16 Constant
scoreboard players operation Global PC_nibble_4 = Global PC_byte_2
scoreboard players operation Global PC_nibble_4 %= c16 Constant

# Store the PC value
scoreboard players operation Global PC_value_1 = Global PC
scoreboard players operation Global PC_value_2 = Global PC
scoreboard players operation Global PC_value_3 = Global PC

# Divide by 0x100 to get first nibble (PC is 12-bit)
scoreboard players operation Global PC_value_1 /= c256 Constant

# Divide by 0x10 to get first two nibbles, then modulo 0x10 to get second nibble
scoreboard players operation Global PC_value_2 /= c16 Constant
scoreboard players operation Global PC_value_2 %= c16 Constant

# Modulo 0x10 to get last nibble
scoreboard players operation Global PC_value_3 %= c16 Constant

execute unless score Global enable_debug matches 0 run function cpu:assign_hex

# Increment the program counter by two bytes upon executing the opcode
scoreboard players add Global PC 2
execute if score Global PC_nibble_1 matches 0..3 run function cpu:opcode_switch/opcodes_0-3
execute if score Global PC_nibble_1 matches 4..7 run function cpu:opcode_switch/opcodes_4-7
execute if score Global PC_nibble_1 matches 8..11 run function cpu:opcode_switch/opcodes_8-11
execute if score Global PC_nibble_1 matches 12..16 run function cpu:opcode_switch/opcodes_12-15
