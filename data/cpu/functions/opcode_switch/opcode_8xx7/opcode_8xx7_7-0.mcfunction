execute if score Global V0 > Global V7 run scoreboard players set Global VF 1
execute unless score Global V0 > Global V7 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V0
scoreboard players operation Global copy_1 -= Global V7
scoreboard players operation Global V7 = Global copy_1