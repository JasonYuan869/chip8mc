execute if score Global VF > Global V0 run scoreboard players set Global VF 1
execute unless score Global VF > Global V0 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global VF
scoreboard players operation Global copy_1 -= Global V0
scoreboard players operation Global V0 = Global copy_1