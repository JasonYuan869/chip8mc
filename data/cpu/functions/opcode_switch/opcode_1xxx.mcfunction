# 1xxx opcode
# 1nnn - JP addr
# Trashes nibbles 2-4
scoreboard players operation Global PC_nibble_2 *= c256 Constant
scoreboard players operation Global PC_nibble_3 *= c16 Constant
scoreboard players operation Global PC_nibble_4 += Global PC_nibble_3
scoreboard players operation Global PC_nibble_4 += Global PC_nibble_2

scoreboard players operation Global PC_temp = Global PC_nibble_4
