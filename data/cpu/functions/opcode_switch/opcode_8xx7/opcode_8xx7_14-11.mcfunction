execute if score Global VB > Global VE run scoreboard players set Global VF 1
execute unless score Global VB > Global VE run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global VB
scoreboard players operation Global copy_1 -= Global VE
scoreboard players operation Global VE = Global copy_1
execute if score Global VE matches ..-1 run scoreboard players add Global VE 256
