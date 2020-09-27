# Bxxx opcode

# Bnnn - JP V0, addr (Jump to nnn + V0)
# Trashes nibbles
scoreboard players operation Global PC_nibble_2 *= c256 Constant
scoreboard players operation Global PC_nibble_3 *= c16 Constant
scoreboard players operation Global PC_nibble_4 += Global PC_nibble_3
scoreboard players operation Global PC_nibble_4 += Global PC_nibble_2
scoreboard players operation Global PC_nibble_4 += Global V0

scoreboard players operation Global PC_temp = Global PC_nibble_4
