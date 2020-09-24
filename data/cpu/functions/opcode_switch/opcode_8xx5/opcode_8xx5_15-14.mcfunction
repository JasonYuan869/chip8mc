execute if score Global VF > Global VE run scoreboard players set Global VF 1
execute unless score Global VF > Global VE run scoreboard players set Global VF 0
scoreboard players operation Global VF -= Global VE
