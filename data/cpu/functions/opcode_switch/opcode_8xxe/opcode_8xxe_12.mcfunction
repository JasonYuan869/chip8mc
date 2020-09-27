scoreboard players operation Global copy_1 = Global VC
scoreboard players operation Global copy_1 /= c128 Constant
scoreboard players operation Global VF = Global copy_1
scoreboard players operation Global VC *= c2 Constant
execute if score Global VC matches 256.. run scoreboard players remove Global VC 256
