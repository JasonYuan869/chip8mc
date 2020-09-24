# Toggle button A
scoreboard players operation Global was_pressed = Global button_a
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_a 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_a 1
function keyboard:draw_controller
