# Wrap pixels over the edge
execute if score Global col matches 64.. run scoreboard players remove Global col 64
execute if score Global col matches ..-1 run scoreboard players add Global col 64

execute if score Global row matches 32.. run scoreboard players remove Global row 32
execute if score Global row matches ..-1 run scoreboard players add Global row 32
