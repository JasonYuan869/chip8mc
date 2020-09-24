execute if score Global PC matches 0..255 run function cpu:pc_switch/256read_pc_0-255
execute if score Global PC matches 256..511 run function cpu:pc_switch/256read_pc_256-511
execute if score Global PC matches 512..767 run function cpu:pc_switch/256read_pc_512-767
execute if score Global PC matches 768..1023 run function cpu:pc_switch/256read_pc_768-1023
