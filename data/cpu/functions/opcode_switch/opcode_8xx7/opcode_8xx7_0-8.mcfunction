execute if score Global V8 > Global V0 run scoreboard players set Global VF 1
execute unless score Global V8 > Global V0 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V8
scoreboard players operation Global copy_1 -= Global V0
scoreboard players operation Global V0 = Global copy_1
execute if score Global V0 matches ..-1 run scoreboard players add Global V0 256
