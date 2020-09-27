scoreboard players operation Global copy_1 = Global VF
scoreboard players operation Global copy_1 /= c128 Constant
scoreboard players operation Global VF = Global copy_1
scoreboard players operation Global VF *= c2 Constant
execute if score Global VF matches 256.. run scoreboard players remove Global VF 256
