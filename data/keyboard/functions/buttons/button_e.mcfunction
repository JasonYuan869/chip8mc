# Toggle button E
scoreboard players operation Global was_pressed = Global button_e
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_e 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_e 1
function keyboard:draw_controller
