scoreboard players operation Global copy_1 = Global VD
scoreboard players operation Global copy_1 /= c128 Constant
scoreboard players operation Global VF = Global copy_1
scoreboard players operation Global VD *= c2 Constant
execute if score Global VD matches 256.. run scoreboard players remove Global VD 256
