execute if score Global PC_nibble_3 matches 0 run scoreboard players operation Global V1 += Global V0
execute if score Global PC_nibble_3 matches 1 run scoreboard players operation Global V1 += Global V1
execute if score Global PC_nibble_3 matches 2 run scoreboard players operation Global V1 += Global V2
execute if score Global PC_nibble_3 matches 3 run scoreboard players operation Global V1 += Global V3
execute if score Global PC_nibble_3 matches 4 run scoreboard players operation Global V1 += Global V4
execute if score Global PC_nibble_3 matches 5 run scoreboard players operation Global V1 += Global V5
execute if score Global PC_nibble_3 matches 6 run scoreboard players operation Global V1 += Global V6
execute if score Global PC_nibble_3 matches 7 run scoreboard players operation Global V1 += Global V7
execute if score Global PC_nibble_3 matches 8 run scoreboard players operation Global V1 += Global V8
execute if score Global PC_nibble_3 matches 9 run scoreboard players operation Global V1 += Global V9
execute if score Global PC_nibble_3 matches 10 run scoreboard players operation Global V1 += Global VA
execute if score Global PC_nibble_3 matches 11 run scoreboard players operation Global V1 += Global VB
execute if score Global PC_nibble_3 matches 12 run scoreboard players operation Global V1 += Global VC
execute if score Global PC_nibble_3 matches 13 run scoreboard players operation Global V1 += Global VD
execute if score Global PC_nibble_3 matches 14 run scoreboard players operation Global V1 += Global VE
execute if score Global PC_nibble_3 matches 15 run scoreboard players operation Global V1 += Global VF
execute if score Global V1 matches 256.. run scoreboard players set Global VF 1
execute unless score Global V1 matches 256.. run scoreboard players set Global VF 0
execute if score Global V1 matches 256.. run scoreboard players remove Global V1 256
