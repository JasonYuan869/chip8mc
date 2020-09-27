execute if score Global V7 > Global V1 run scoreboard players set Global VF 1
execute unless score Global V7 > Global V1 run scoreboard players set Global VF 0
scoreboard players operation Global V7 -= Global V1
execute if score Global V7 matches ..-1 run scoreboard players add Global V7 256
