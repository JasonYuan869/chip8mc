scoreboard players operation Global copy_1 = Global VA
scoreboard players operation Global copy_1 /= c128 Constant
scoreboard players operation Global VF = Global copy_1
scoreboard players operation Global VA *= c2 Constant
execute if score Global VA matches 256.. run scoreboard players remove Global VA 256
