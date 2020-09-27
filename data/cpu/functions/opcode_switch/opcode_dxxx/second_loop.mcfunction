# while looper_2 != 0
# Get MSB
scoreboard players operation Global copy_1 /= c128 Constant

## DEBUG
tellraw @s [{"text":"sprite: "},{"score":{"name":"Global","objective":"sprite"}}]
tellraw @s [{"text":"copy_1: "},{"score":{"name":"Global","objective":"copy_1"}}]

# If bit = 1, set_pixel corresponding to bit
execute if score Global copy_1 matches 1 run function cpu:opcode_switch/opcode_dxxx/set_pixel

# Set next bit as MSB
# AND 0111 1111 (to remove original MSB)
scoreboard players operation Global sprite %= c128 Constant
# << 2
scoreboard players operation Global sprite *= c2 Constant
scoreboard players operation Global copy_1 = Global sprite

# Next pixel in the column
scoreboard players add Global col 1

scoreboard players remove Global looper_2 1
execute if score Global looper_2 matches 1.. run function cpu:opcode_switch/opcode_dxxx/second_loop

scoreboard players remove Global col 1
