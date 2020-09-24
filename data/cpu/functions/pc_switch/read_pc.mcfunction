# Goes in a tree to read two bytes for the instruction
execute if score Global PC matches 0..1023 run function cpu:pc_switch/1024read_pc_0-1023
execute if score Global PC matches 1024..2047 run function cpu:pc_switch/1024read_pc_1024-2047
execute if score Global PC matches 2048..3071 run function cpu:pc_switch/1024read_pc_2048-3071
execute if score Global PC matches 3072..4095 run function cpu:pc_switch/1024read_pc_3072-4095
