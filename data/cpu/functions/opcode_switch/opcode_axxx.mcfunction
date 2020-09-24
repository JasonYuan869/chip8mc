# Axxx opcode
# Annn - LD I, addr
# Trashes nibbles
scoreboard players operation Global PC_nibble_2 *= c256 Constant
scoreboard players operation Global PC_nibble_3 *= c16 Constant
scoreboard players operation Global PC_nibble_4 += Global PC_nibble_3
scoreboard players operation Global PC_nibble_4 += Global PC_nibble_2

scoreboard players operation Global I = Global PC_nibble_4
