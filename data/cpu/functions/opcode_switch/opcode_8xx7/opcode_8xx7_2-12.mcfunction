execute if score Global VC > Global V2 run scoreboard players set Global VF 1
execute unless score Global VC > Global V2 run scoreboard players set Global VF 0
scoreboard players operation Global copy_1 = Global VC
scoreboard players operation Global copy_1 -= Global V2
scoreboard players operation Global V2 = Global copy_1
