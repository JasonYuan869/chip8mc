execute if score Global V0 > Global V5 run scoreboard players set Global VF 1
execute unless score Global V0 > Global V5 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V0
scoreboard players operation Global copy_1 -= Global V5
scoreboard players operation Global V5 = Global copy_1