execute if score Global V4 > Global V5 run scoreboard players set Global VF 1
execute unless score Global V4 > Global V5 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V4
scoreboard players operation Global copy_1 -= Global V5
scoreboard players operation Global V5 = Global copy_1
execute if score Global V5 matches ..-1 run scoreboard players add Global V5 256
