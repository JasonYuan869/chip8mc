# Wrap pixels over the edge
execute if score display pixel_x matches 64.. run scoreboard players remove display pixel_x 64
execute if score display pixel_x matches ..-1 run scoreboard players add display pixel_x 64

execute if score display pixel_y matches 32.. run scoreboard players remove display pixel_y 32
execute if score display pixel_y matches ..-1 run scoreboard players add display pixel_y 32
