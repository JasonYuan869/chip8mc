# Toggle button D
scoreboard players operation Global was_pressed = Global button_d
execute if score Global was_pressed matches 1.. run scoreboard players set Global button_d 0
execute unless score Global was_pressed matches 1.. run scoreboard players set Global button_d 1
function keyboard:draw_controller
