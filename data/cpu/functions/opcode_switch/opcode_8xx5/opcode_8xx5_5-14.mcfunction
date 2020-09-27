execute if score Global V5 > Global VE run scoreboard players set Global VF 1
execute unless score Global V5 > Global VE run scoreboard players set Global VF 0
scoreboard players operation Global V5 -= Global VE
execute if score Global V5 matches ..-1 run scoreboard players add Global V5 256
