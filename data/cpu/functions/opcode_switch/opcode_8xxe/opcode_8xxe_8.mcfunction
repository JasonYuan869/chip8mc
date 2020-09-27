scoreboard players operation Global copy_1 = Global V8
scoreboard players operation Global copy_1 /= c128 Constant
scoreboard players operation Global VF = Global copy_1
scoreboard players operation Global V8 *= c2 Constant
execute if score Global V8 matches 256.. run scoreboard players remove Global V8 256
