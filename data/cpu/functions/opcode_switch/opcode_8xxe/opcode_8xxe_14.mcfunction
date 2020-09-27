scoreboard players operation Global copy_1 = Global VE
scoreboard players operation Global copy_1 /= c128 Constant
scoreboard players operation Global VF = Global copy_1
scoreboard players operation Global VE *= c2 Constant
execute if score Global VE matches 256.. run scoreboard players remove Global VE 256
