execute if score Global PC matches 0..63 run function cpu:pc_switch/64read_pc_0-63
execute if score Global PC matches 64..127 run function cpu:pc_switch/64read_pc_64-127
execute if score Global PC matches 128..191 run function cpu:pc_switch/64read_pc_128-191
execute if score Global PC matches 192..255 run function cpu:pc_switch/64read_pc_192-255
