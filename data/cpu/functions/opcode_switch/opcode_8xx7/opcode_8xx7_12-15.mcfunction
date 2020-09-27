execute if score Global VF > Global VC run scoreboard players set Global VF 1
execute unless score Global VF > Global VC run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global VF
scoreboard players operation Global copy_1 -= Global VC
scoreboard players operation Global VC = Global copy_1
execute if score Global VC matches ..-1 run scoreboard players add Global VC 256
