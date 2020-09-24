# Toggle button F
scoreboard players operation Global was_pressed = Global button_f
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_f 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_f 1
function keyboard:draw_controller
