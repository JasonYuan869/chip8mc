execute if score Global V2 > Global VF run scoreboard players set Global VF 1
execute unless score Global V2 > Global VF run scoreboard players set Global VF 0
scoreboard players operation Global V2 -= Global VF
execute if score Global V2 matches ..-1 run scoreboard players add Global V2 256
