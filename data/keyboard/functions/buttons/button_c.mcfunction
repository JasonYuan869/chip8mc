# Toggle button C
scoreboard players operation Global was_pressed = Global button_c
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_c 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_c 1
function keyboard:draw_controller
