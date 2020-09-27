scoreboard players operation Global copy_1 = Global VB
scoreboard players operation Global copy_1 /= c128 Constant
scoreboard players operation Global VF = Global copy_1
scoreboard players operation Global VB *= c2 Constant
execute if score Global VB matches 256.. run scoreboard players remove Global VB 256
