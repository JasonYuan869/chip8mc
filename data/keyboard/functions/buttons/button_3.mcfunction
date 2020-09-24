# Toggle button 3
scoreboard players operation Global was_pressed = Global button_3
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_3 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_3 1
function keyboard:draw_controller
