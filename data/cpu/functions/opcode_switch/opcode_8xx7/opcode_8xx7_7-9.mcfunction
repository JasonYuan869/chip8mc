execute if score Global V9 > Global V7 run scoreboard players set Global VF 1
execute unless score Global V9 > Global V7 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V9
scoreboard players operation Global copy_1 -= Global V7
scoreboard players operation Global V7 = Global copy_1
execute if score Global V7 matches ..-1 run scoreboard players add Global V7 256
