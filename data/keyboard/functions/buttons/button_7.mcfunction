# Toggle button 7
scoreboard players operation Global was_pressed = Global button_7
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_7 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_7 1
function keyboard:draw_controller
