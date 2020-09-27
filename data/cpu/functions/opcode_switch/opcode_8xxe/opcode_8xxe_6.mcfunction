scoreboard players operation Global copy_1 = Global V6
scoreboard players operation Global copy_1 /= c128 Constant
scoreboard players operation Global VF = Global copy_1
scoreboard players operation Global V6 *= c2 Constant
execute if score Global V6 matches 256.. run scoreboard players remove Global V6 256
