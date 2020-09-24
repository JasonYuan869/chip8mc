# Toggle button 6
scoreboard players operation Global was_pressed = Global button_6
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_6 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_6 1
function keyboard:draw_controller
