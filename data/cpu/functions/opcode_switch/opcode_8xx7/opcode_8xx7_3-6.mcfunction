execute if score Global V6 > Global V3 run scoreboard players set Global VF 1
execute unless score Global V6 > Global V3 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V6
scoreboard players operation Global copy_1 -= Global V3
scoreboard players operation Global V3 = Global copy_1
execute if score Global V3 matches ..-1 run scoreboard players add Global V3 256
