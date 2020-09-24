execute if score Global V9 > Global V6 run scoreboard players set Global VF 1
execute unless score Global V9 > Global V6 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V9
scoreboard players operation Global copy_1 -= Global V6
scoreboard players operation Global V6 = Global copy_1
