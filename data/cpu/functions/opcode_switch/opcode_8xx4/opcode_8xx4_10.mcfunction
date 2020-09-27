execute if score Global PC_nibble_3 matches 0 run scoreboard players operation Global VA += Global V0
execute if score Global PC_nibble_3 matches 1 run scoreboard players operation Global VA += Global V1
execute if score Global PC_nibble_3 matches 2 run scoreboard players operation Global VA += Global V2
execute if score Global PC_nibble_3 matches 3 run scoreboard players operation Global VA += Global V3
execute if score Global PC_nibble_3 matches 4 run scoreboard players operation Global VA += Global V4
execute if score Global PC_nibble_3 matches 5 run scoreboard players operation Global VA += Global V5
execute if score Global PC_nibble_3 matches 6 run scoreboard players operation Global VA += Global V6
execute if score Global PC_nibble_3 matches 7 run scoreboard players operation Global VA += Global V7
execute if score Global PC_nibble_3 matches 8 run scoreboard players operation Global VA += Global V8
execute if score Global PC_nibble_3 matches 9 run scoreboard players operation Global VA += Global V9
execute if score Global PC_nibble_3 matches 10 run scoreboard players operation Global VA += Global VA
execute if score Global PC_nibble_3 matches 11 run scoreboard players operation Global VA += Global VB
execute if score Global PC_nibble_3 matches 12 run scoreboard players operation Global VA += Global VC
execute if score Global PC_nibble_3 matches 13 run scoreboard players operation Global VA += Global VD
execute if score Global PC_nibble_3 matches 14 run scoreboard players operation Global VA += Global VE
execute if score Global PC_nibble_3 matches 15 run scoreboard players operation Global VA += Global VF
execute if score Global VA matches 256.. run scoreboard players set Global VF 1
execute unless score Global VA matches 256.. run scoreboard players set Global VF 0
execute if score Global VA matches 256.. run scoreboard players remove Global VA 256
