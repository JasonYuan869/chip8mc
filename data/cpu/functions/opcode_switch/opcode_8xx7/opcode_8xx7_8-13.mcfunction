execute if score Global VD > Global V8 run scoreboard players set Global VF 1
execute unless score Global VD > Global V8 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global VD
scoreboard players operation Global copy_1 -= Global V8
scoreboard players operation Global V8 = Global copy_1
execute if score Global V8 matches ..-1 run scoreboard players add Global V8 256
