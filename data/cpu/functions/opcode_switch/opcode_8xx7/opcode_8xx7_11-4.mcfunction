execute if score Global V4 > Global VB run scoreboard players set Global VF 1
execute unless score Global V4 > Global VB run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V4
scoreboard players operation Global copy_1 -= Global VB
scoreboard players operation Global VB = Global copy_1
