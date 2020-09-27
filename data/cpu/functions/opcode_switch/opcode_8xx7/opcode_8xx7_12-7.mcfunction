execute if score Global V7 > Global VC run scoreboard players set Global VF 1
execute unless score Global V7 > Global VC run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V7
scoreboard players operation Global copy_1 -= Global VC
scoreboard players operation Global VC = Global copy_1
execute if score Global VC matches ..-1 run scoreboard players add Global VC 256
