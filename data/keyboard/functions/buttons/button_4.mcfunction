# Toggle button 4
scoreboard players operation Global was_pressed = Global button_4
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_4 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_4 1
function keyboard:draw_controller
