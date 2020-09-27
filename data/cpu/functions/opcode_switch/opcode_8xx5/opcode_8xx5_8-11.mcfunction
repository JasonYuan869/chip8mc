execute if score Global V8 > Global VB run scoreboard players set Global VF 1
execute unless score Global V8 > Global VB run scoreboard players set Global VF 0
scoreboard players operation Global V8 -= Global VB
execute if score Global V8 matches ..-1 run scoreboard players add Global V8 256
