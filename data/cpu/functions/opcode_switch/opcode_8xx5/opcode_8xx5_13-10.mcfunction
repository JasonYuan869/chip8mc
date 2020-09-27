execute if score Global VD > Global VA run scoreboard players set Global VF 1
execute unless score Global VD > Global VA run scoreboard players set Global VF 0
scoreboard players operation Global VD -= Global VA
execute if score Global VD matches ..-1 run scoreboard players add Global VD 256
