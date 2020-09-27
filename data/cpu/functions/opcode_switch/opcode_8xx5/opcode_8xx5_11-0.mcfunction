execute if score Global VB > Global V0 run scoreboard players set Global VF 1
execute unless score Global VB > Global V0 run scoreboard players set Global VF 0
scoreboard players operation Global VB -= Global V0
execute if score Global VB matches ..-1 run scoreboard players add Global VB 256
