execute if score Global VA > Global VE run scoreboard players set Global VF 1
execute unless score Global VA > Global VE run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global VA
scoreboard players operation Global copy_1 -= Global VE
scoreboard players operation Global VE = Global copy_1
