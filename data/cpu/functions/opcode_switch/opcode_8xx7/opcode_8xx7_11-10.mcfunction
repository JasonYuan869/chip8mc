execute if score Global VA > Global VB run scoreboard players set Global VF 1
execute unless score Global VA > Global VB run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global VA
scoreboard players operation Global copy_1 -= Global VB
scoreboard players operation Global VB = Global copy_1
