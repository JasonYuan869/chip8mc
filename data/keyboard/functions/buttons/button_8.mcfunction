# Toggle button 8
scoreboard players operation Global was_pressed = Global button_8
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_8 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_8 1
function keyboard:draw_controller
