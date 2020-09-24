# 4xxx opcode
# 3xkk - SE Vx, byte (PC += 2 if Vx != kk)
# Trashes nibble 3-4
scoreboard players operation Global PC_nibble_3 *= c16 Constant
scoreboard players operation Global PC_nibble_4 += Global PC_nibble_3

execute if score Global PC_nibble_2 matches 0 unless score Global V0 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 1 unless score Global V1 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 2 unless score Global V2 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 3 unless score Global V3 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 4 unless score Global V4 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 5 unless score Global V5 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 6 unless score Global V6 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 7 unless score Global V7 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 8 unless score Global V8 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 9 unless score Global V9 = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 10 unless score Global VA = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 11 unless score Global VB = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 12 unless score Global VC = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 13 unless score Global VD = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 14 unless score Global VE = Global PC_nibble_4 run scoreboard players add Global PC 2
execute if score Global PC_nibble_2 matches 15 unless score Global VF = Global PC_nibble_4 run scoreboard players add Global PC 2
