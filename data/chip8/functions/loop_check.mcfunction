# RNG main loop can be run always (..probably)
function rng:core

# Only run the commands in loop if the emulator is started
execute if score Global started matches 1 unless score Global halt matches 1 run function chip8:loop

# Decrement DT and ST (supposed to be 60 Hz but MC is limited at 20 Hz)
execute if score Global DT matches 1.. run scoreboard players remove Global DT 1
execute if score Global ST matches 1.. run scoreboard players remove Global ST 1

execute if score Global halt matches 1 run function chip8:get_key_loop
