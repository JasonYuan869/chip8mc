scoreboard players operation Global copy_1 = Global VA
scoreboard players operation Global copy_1 %= c2 Constant
execute if score Global copy_1 matches 1 run scoreboard players set Global VF 1
execute unless score Global copy_1 matches 1 run scoreboard players set Global VF 0
scoreboard players operation Global VA /= c2 Constant
