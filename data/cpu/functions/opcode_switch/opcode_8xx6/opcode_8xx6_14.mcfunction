scoreboard players operation Global copy_1 = Global VE
scoreboard players operation Global copy_1 %= c2 Constant
execute if score Global copy_1 matches 1 run scoreboard players set Global VF 1
execute unless score Global copy_1 matches 1 run scoreboard players set Global VF 0
scoreboard players operation Global VE /= c2 Constant