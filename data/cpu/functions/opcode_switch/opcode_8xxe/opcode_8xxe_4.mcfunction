scoreboard players operation Global copy_1 = Global V4
scoreboard players operation Global copy_1 /= c128 Constant
scoreboard players operation Global VF = Global copy_1
scoreboard players operation Global V4 *= c2 Constant
execute if score Global V4 matches 256.. run scoreboard players remove Global V4 256
