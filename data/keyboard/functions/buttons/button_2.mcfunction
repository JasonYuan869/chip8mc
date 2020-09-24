# Toggle button 2
scoreboard players operation Global was_pressed = Global button_2
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_2 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_2 1
function keyboard:draw_controller
