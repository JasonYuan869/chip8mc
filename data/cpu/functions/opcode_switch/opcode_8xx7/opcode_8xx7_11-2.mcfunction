execute if score Global V2 > Global VB run scoreboard players set Global VF 1
execute unless score Global V2 > Global VB run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V2
scoreboard players operation Global copy_1 -= Global VB
scoreboard players operation Global VB = Global copy_1
execute if score Global VB matches ..-1 run scoreboard players add Global VB 256
