execute if score Global VB > Global VA run scoreboard players set Global VF 1
execute unless score Global VB > Global VA run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global VB
scoreboard players operation Global copy_1 -= Global VA
scoreboard players operation Global VA = Global copy_1
