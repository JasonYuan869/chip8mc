execute if score Global VA > Global V3 run scoreboard players set Global VF 1
execute unless score Global VA > Global V3 run scoreboard players set Global VF 0
scoreboard players operation Global VA -= Global V3
execute if score Global VA matches ..-1 run scoreboard players add Global VA 256
