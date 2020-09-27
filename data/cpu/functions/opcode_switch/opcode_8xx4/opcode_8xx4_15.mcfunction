execute if score Global PC_nibble_3 matches 0 run scoreboard players operation Global VF += Global V0
execute if score Global PC_nibble_3 matches 1 run scoreboard players operation Global VF += Global V1
execute if score Global PC_nibble_3 matches 2 run scoreboard players operation Global VF += Global V2
execute if score Global PC_nibble_3 matches 3 run scoreboard players operation Global VF += Global V3
execute if score Global PC_nibble_3 matches 4 run scoreboard players operation Global VF += Global V4
execute if score Global PC_nibble_3 matches 5 run scoreboard players operation Global VF += Global V5
execute if score Global PC_nibble_3 matches 6 run scoreboard players operation Global VF += Global V6
execute if score Global PC_nibble_3 matches 7 run scoreboard players operation Global VF += Global V7
execute if score Global PC_nibble_3 matches 8 run scoreboard players operation Global VF += Global V8
execute if score Global PC_nibble_3 matches 9 run scoreboard players operation Global VF += Global V9
execute if score Global PC_nibble_3 matches 10 run scoreboard players operation Global VF += Global VA
execute if score Global PC_nibble_3 matches 11 run scoreboard players operation Global VF += Global VB
execute if score Global PC_nibble_3 matches 12 run scoreboard players operation Global VF += Global VC
execute if score Global PC_nibble_3 matches 13 run scoreboard players operation Global VF += Global VD
execute if score Global PC_nibble_3 matches 14 run scoreboard players operation Global VF += Global VE
execute if score Global PC_nibble_3 matches 15 run scoreboard players operation Global VF += Global VF
execute if score Global VF matches 256.. run scoreboard players set Global VF 1
execute unless score Global VF matches 256.. run scoreboard players set Global VF 0
execute if score Global VF matches 256.. run scoreboard players remove Global VF 256
