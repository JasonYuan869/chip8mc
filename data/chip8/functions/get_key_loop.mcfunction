execute if score Global button_0 matches 1 run scoreboard players set Global result 0
execute if score Global button_1 matches 1 run scoreboard players set Global result 1
execute if score Global button_2 matches 1 run scoreboard players set Global result 2
execute if score Global button_3 matches 1 run scoreboard players set Global result 3
execute if score Global button_4 matches 1 run scoreboard players set Global result 4
execute if score Global button_5 matches 1 run scoreboard players set Global result 5
execute if score Global button_6 matches 1 run scoreboard players set Global result 6
execute if score Global button_7 matches 1 run scoreboard players set Global result 7
execute if score Global button_8 matches 1 run scoreboard players set Global result 8
execute if score Global button_9 matches 1 run scoreboard players set Global result 9
execute if score Global button_a matches 1 run scoreboard players set Global result 10
execute if score Global button_b matches 1 run scoreboard players set Global result 11
execute if score Global button_c matches 1 run scoreboard players set Global result 12
execute if score Global button_d matches 1 run scoreboard players set Global result 13
execute if score Global button_e matches 1 run scoreboard players set Global result 14
execute if score Global button_f matches 1 run scoreboard players set Global result 15

execute if score Global PC_nibble_2 matches 0 run scoreboard players operation Global V0 = Global result
execute if score Global PC_nibble_2 matches 1 run scoreboard players operation Global V1 = Global result
execute if score Global PC_nibble_2 matches 2 run scoreboard players operation Global V2 = Global result
execute if score Global PC_nibble_2 matches 3 run scoreboard players operation Global V3 = Global result
execute if score Global PC_nibble_2 matches 4 run scoreboard players operation Global V4 = Global result
execute if score Global PC_nibble_2 matches 5 run scoreboard players operation Global V5 = Global result
execute if score Global PC_nibble_2 matches 6 run scoreboard players operation Global V6 = Global result
execute if score Global PC_nibble_2 matches 7 run scoreboard players operation Global V7 = Global result
execute if score Global PC_nibble_2 matches 8 run scoreboard players operation Global V8 = Global result
execute if score Global PC_nibble_2 matches 9 run scoreboard players operation Global V9 = Global result
execute if score Global PC_nibble_2 matches 10 run scoreboard players operation Global VA = Global result
execute if score Global PC_nibble_2 matches 11 run scoreboard players operation Global VB = Global result
execute if score Global PC_nibble_2 matches 12 run scoreboard players operation Global VC = Global result
execute if score Global PC_nibble_2 matches 13 run scoreboard players operation Global VD = Global result
execute if score Global PC_nibble_2 matches 14 run scoreboard players operation Global VE = Global result
execute if score Global PC_nibble_2 matches 15 run scoreboard players operation Global VF = Global result

scoreboard players set Global halt 0
execute if score Global button_0 matches 0 if score Global button_1 matches 0 if score Global button_2 matches 0 if score Global button_3 matches 0 if score Global button_4 matches 0 if score Global button_5 matches 0 if score Global button_6 matches 0 if score Global button_7 matches 0 if score Global button_8 matches 0 if score Global button_9 matches 0 if score Global button_a matches 0 if score Global button_b matches 0 if score Global button_c matches 0 if score Global button_d matches 0 if score Global button_e matches 0 if score Global button_f matches 0 run scoreboard players set Global halt 1
