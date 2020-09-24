execute if score Global V3 > Global VA run scoreboard players set Global VF 1
execute unless score Global V3 > Global VA run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V3
scoreboard players operation Global copy_1 -= Global VA
scoreboard players operation Global VA = Global copy_1
