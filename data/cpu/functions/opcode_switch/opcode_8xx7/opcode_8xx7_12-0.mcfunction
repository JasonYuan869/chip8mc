execute if score Global V0 > Global VC run scoreboard players set Global VF 1
execute unless score Global V0 > Global VC run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global V0
scoreboard players operation Global copy_1 -= Global VC
scoreboard players operation Global VC = Global copy_1