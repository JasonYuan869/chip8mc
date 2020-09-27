scoreboard players operation Global copy_1 = Global V9
scoreboard players operation Global copy_1 /= c128 Constant
scoreboard players operation Global VF = Global copy_1
scoreboard players operation Global V9 *= c2 Constant
execute if score Global V9 matches 256.. run scoreboard players remove Global V9 256
