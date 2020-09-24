execute if score Global V3 > Global V5 run scoreboard players set Global VF 1
execute unless score Global V3 > Global V5 run scoreboard players set Global VF 0
scoreboard players operation Global V3 -= Global V5
