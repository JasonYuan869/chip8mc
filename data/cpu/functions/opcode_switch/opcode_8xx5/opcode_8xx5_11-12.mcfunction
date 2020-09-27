execute if score Global VB > Global VC run scoreboard players set Global VF 1
execute unless score Global VB > Global VC run scoreboard players set Global VF 0
scoreboard players operation Global VB -= Global VC
execute if score Global VB matches ..-1 run scoreboard players add Global VB 256
