execute if score Global V7 > Global VF run scoreboard players set Global VF 1
execute unless score Global V7 > Global VF run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V7
scoreboard players operation Global copy_1 -= Global VF
scoreboard players operation Global VF = Global copy_1
execute if score Global VF matches ..-1 run scoreboard players add Global VF 256
