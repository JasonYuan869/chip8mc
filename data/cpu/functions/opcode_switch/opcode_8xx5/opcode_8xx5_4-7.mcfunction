execute if score Global V4 > Global V7 run scoreboard players set Global VF 1
execute unless score Global V4 > Global V7 run scoreboard players set Global VF 0
scoreboard players operation Global V4 -= Global V7
execute if score Global V4 matches ..-1 run scoreboard players add Global V4 256
