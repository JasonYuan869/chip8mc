scoreboard players operation Global copy_1 = Global V0
scoreboard players operation Global copy_1 /= c128 Constant
scoreboard players operation Global VF = Global copy_1
scoreboard players operation Global V0 *= c2 Constant
execute if score Global V0 matches 256.. run scoreboard players remove Global V0 256
