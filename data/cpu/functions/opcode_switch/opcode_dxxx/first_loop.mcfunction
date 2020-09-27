# while looper_1 != 0
# Set looper_2 to 8 (8 pixels)
scoreboard players set Global looper_2 8

function cpu:opcode_switch/opcode_dxxx/get_sprite
scoreboard players operation Global copy_1 = Global sprite
function cpu:opcode_switch/opcode_dxxx/second_loop
scoreboard players add Global row 1

scoreboard players add Global I 1

scoreboard players remove Global looper_1 1
execute if score Global looper_1 matches 1.. run function cpu:opcode_switch/opcode_dxxx/first_loop

scoreboard players remove Global I 1
