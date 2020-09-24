# Toggle button 5
scoreboard players operation Global was_pressed = Global button_5
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_5 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_5 1
function keyboard:draw_controller
