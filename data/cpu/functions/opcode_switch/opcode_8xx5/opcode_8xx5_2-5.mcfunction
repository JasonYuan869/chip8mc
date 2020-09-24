execute if score Global V2 > Global V5 run scoreboard players set Global VF 1
execute unless score Global V2 > Global V5 run scoreboard players set Global VF 0
scoreboard players operation Global V2 -= Global V5
