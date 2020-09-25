scoreboard players operation Global copy_1 /= c128 Constant

execute unless score Global copy_1 0 run function cpu:opcode_switch/opcode_dxxx/set_pixel

scoreboard players operation Global copy_1 = Global sprite
scoreboard players operation Global copy_1 %= c128 Constant
scoreboard players operation Global copy_1 *= c2 Constant

scoreboard players add Global col 1

scoreboard players remove Global looper_2 1
execute if score Global looper_2 matches 1.. run function cpu:opcode_switch/opcode_dxxx/second_loop

scoreboard players remove Global col 1
