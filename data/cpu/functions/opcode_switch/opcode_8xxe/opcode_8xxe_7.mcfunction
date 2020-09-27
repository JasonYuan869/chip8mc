scoreboard players operation Global copy_1 = Global V7
scoreboard players operation Global copy_1 /= c128 Constant
scoreboard players operation Global VF = Global copy_1
scoreboard players operation Global V7 *= c2 Constant
execute if score Global V7 matches 256.. run scoreboard players remove Global V7 256
