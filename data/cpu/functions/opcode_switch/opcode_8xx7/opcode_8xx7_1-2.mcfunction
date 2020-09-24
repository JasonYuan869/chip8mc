execute if score Global V2 > Global V1 run scoreboard players set Global VF 1
execute unless score Global V2 > Global V1 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V2
scoreboard players operation Global copy_1 -= Global V1
scoreboard players operation Global V1 = Global copy_1
