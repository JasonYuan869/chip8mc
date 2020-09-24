# 3xxx opcode
# 3xkk - SE Vx, byte (PC += 2 if Vx == kk)
# Trashes nibble 3-4
scoreboard players operation Global PC_nibble_3 *= c16 Constant
scoreboard players operation Global PC_nibble_4 += Global PC_nibble_3

execute if score Global PC_nibble_2 matches 0 if score Global V0 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 1 if score Global V1 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 2 if score Global V2 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 3 if score Global V3 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 4 if score Global V4 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 5 if score Global V5 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 6 if score Global V6 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 7 if score Global V7 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 8 if score Global V8 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 9 if score Global V9 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 10 if score Global VA = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 11 if score Global VB = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 12 if score Global VC = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 13 if score Global VD = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 14 if score Global VE = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 15 if score Global VF = Global PC_nibble_4 run scoreboard players add Global PC 2
