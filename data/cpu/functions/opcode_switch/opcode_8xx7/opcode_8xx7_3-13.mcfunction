execute if score Global VD > Global V3 run scoreboard players set Global VF 1
execute unless score Global VD > Global V3 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global VD
scoreboard players operation Global copy_1 -= Global V3
scoreboard players operation Global V3 = Global copy_1