execute if score Global V5 > Global VA run scoreboard players set Global VF 1
execute unless score Global V5 > Global VA run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V5
scoreboard players operation Global copy_1 -= Global VA
scoreboard players operation Global VA = Global copy_1
execute if score Global VA matches ..-1 run scoreboard players add Global VA 256
