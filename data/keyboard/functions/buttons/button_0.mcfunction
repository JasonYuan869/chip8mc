# Toggle button 0
scoreboard players operation Global was_pressed = Global button_0
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_0 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_0 1
function keyboard:draw_controller
