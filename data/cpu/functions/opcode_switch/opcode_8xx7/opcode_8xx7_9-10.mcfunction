execute if score Global VA > Global V9 run scoreboard players set Global VF 1
execute unless score Global VA > Global V9 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global VA
scoreboard players operation Global copy_1 -= Global V9
scoreboard players operation Global V9 = Global copy_1
execute if score Global V9 matches ..-1 run scoreboard players add Global V9 256
