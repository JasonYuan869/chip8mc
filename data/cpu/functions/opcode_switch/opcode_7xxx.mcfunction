# 7xxx opcode
# 7xkk - ADD Vx, byte
# Trashes nibbles
scoreboard players operation Global PC_nibble_3 *= c16 Constant
scoreboard players operation Global PC_nibble_4 += Global PC_nibble_3

execute if score Global PC_nibble_2 matches 0 run scoreboard players operation Global V0 += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 1 run scoreboard players operation Global V1 += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 2 run scoreboard players operation Global V2 += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 3 run scoreboard players operation Global V3 += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 4 run scoreboard players operation Global V4 += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 5 run scoreboard players operation Global V5 += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 6 run scoreboard players operation Global V6 += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 7 run scoreboard players operation Global V7 += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 8 run scoreboard players operation Global V8 += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 9 run scoreboard players operation Global V9 += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 10 run scoreboard players operation Global VA += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 11 run scoreboard players operation Global VB += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 12 run scoreboard players operation Global VC += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 13 run scoreboard players operation Global VD += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 14 run scoreboard players operation Global VE += Global PC_nibble_4
execute if score Global PC_nibble_2 matches 15 run scoreboard players operation Global VF += Global PC_nibble_4
