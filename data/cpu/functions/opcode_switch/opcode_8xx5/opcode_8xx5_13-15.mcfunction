execute if score Global VD > Global VF run scoreboard players set Global VF 1
execute unless score Global VD > Global VF run scoreboard players set Global VF 0
scoreboard players operation Global VD -= Global VF
