# Toggle button 9
scoreboard players operation Global was_pressed = Global button_9
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_9 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_9 1
function keyboard:draw_controller
