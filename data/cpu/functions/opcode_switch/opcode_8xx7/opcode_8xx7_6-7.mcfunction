execute if score Global V7 > Global V6 run scoreboard players set Global VF 1
execute unless score Global V7 > Global V6 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V7
scoreboard players operation Global copy_1 -= Global V6
scoreboard players operation Global V6 = Global copy_1
execute if score Global V6 matches ..-1 run scoreboard players add Global V6 256
