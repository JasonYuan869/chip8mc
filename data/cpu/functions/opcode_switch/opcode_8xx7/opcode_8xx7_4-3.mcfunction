execute if score Global V3 > Global V4 run scoreboard players set Global VF 1
execute unless score Global V3 > Global V4 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V3
scoreboard players operation Global copy_1 -= Global V4
scoreboard players operation Global V4 = Global copy_1
execute if score Global V4 matches ..-1 run scoreboard players add Global V4 256
