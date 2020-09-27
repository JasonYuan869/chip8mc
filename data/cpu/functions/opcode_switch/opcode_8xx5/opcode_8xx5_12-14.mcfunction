execute if score Global VC > Global VE run scoreboard players set Global VF 1
execute unless score Global VC > Global VE run scoreboard players set Global VF 0
scoreboard players operation Global VC -= Global VE
execute if score Global VC matches ..-1 run scoreboard players add Global VC 256
