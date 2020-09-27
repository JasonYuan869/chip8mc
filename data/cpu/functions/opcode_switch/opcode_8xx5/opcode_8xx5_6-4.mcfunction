execute if score Global V6 > Global V4 run scoreboard players set Global VF 1
execute unless score Global V6 > Global V4 run scoreboard players set Global VF 0
scoreboard players operation Global V6 -= Global V4
execute if score Global V6 matches ..-1 run scoreboard players add Global V6 256
