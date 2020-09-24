# RNG main loop can be run always (..probably)
function rng:core

# Only run the commands in loop if the emulator is started
execute if score Global started matches 1 run function chip8:loop
