# Toggle button B
scoreboard players operation Global was_pressed = Global button_b
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_b 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_b 1
function keyboard:draw_controller
