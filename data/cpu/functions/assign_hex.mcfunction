scoreboard players set * print_params1 0
scoreboard players set * print_params2 0
scoreboard players set * print_params3 0
scoreboard players set * print_params4 0
scoreboard players set * print_params5 0
scoreboard players set * print_params6 0
scoreboard players set * print_params7 0

execute if score Global PC_nibble_1 matches 0..3 run function cpu:assign_hex_switch/1assign_hex_0-3
execute if score Global PC_nibble_1 matches 4..7 run function cpu:assign_hex_switch/1assign_hex_4-7
execute if score Global PC_nibble_1 matches 8..11 run function cpu:assign_hex_switch/1assign_hex_8-11
execute if score Global PC_nibble_1 matches 12..15 run function cpu:assign_hex_switch/1assign_hex_12-15

execute if score Global PC_nibble_2 matches 0..3 run function cpu:assign_hex_switch/2assign_hex_0-3
execute if score Global PC_nibble_2 matches 4..7 run function cpu:assign_hex_switch/2assign_hex_4-7
execute if score Global PC_nibble_2 matches 8..11 run function cpu:assign_hex_switch/2assign_hex_8-11
execute if score Global PC_nibble_2 matches 12..15 run function cpu:assign_hex_switch/2assign_hex_12-15

execute if score Global PC_nibble_3 matches 0..3 run function cpu:assign_hex_switch/3assign_hex_0-3
execute if score Global PC_nibble_3 matches 4..7 run function cpu:assign_hex_switch/3assign_hex_4-7
execute if score Global PC_nibble_3 matches 8..11 run function cpu:assign_hex_switch/3assign_hex_8-11
execute if score Global PC_nibble_3 matches 12..15 run function cpu:assign_hex_switch/3assign_hex_12-15

execute if score Global PC_nibble_4 matches 0..3 run function cpu:assign_hex_switch/4assign_hex_0-3
execute if score Global PC_nibble_4 matches 4..7 run function cpu:assign_hex_switch/4assign_hex_4-7
execute if score Global PC_nibble_4 matches 8..11 run function cpu:assign_hex_switch/4assign_hex_8-11
execute if score Global PC_nibble_4 matches 12..15 run function cpu:assign_hex_switch/4assign_hex_12-15

execute if score Global PC_value_1 matches 0..3 run function cpu:assign_hex_switch/5assign_hex_0-3
execute if score Global PC_value_1 matches 4..7 run function cpu:assign_hex_switch/5assign_hex_4-7
execute if score Global PC_value_1 matches 8..11 run function cpu:assign_hex_switch/5assign_hex_8-11
execute if score Global PC_value_1 matches 12..15 run function cpu:assign_hex_switch/5assign_hex_12-15

execute if score Global PC_value_2 matches 0..3 run function cpu:assign_hex_switch/6assign_hex_0-3
execute if score Global PC_value_2 matches 4..7 run function cpu:assign_hex_switch/6assign_hex_4-7
execute if score Global PC_value_2 matches 8..11 run function cpu:assign_hex_switch/6assign_hex_8-11
execute if score Global PC_value_2 matches 12..15 run function cpu:assign_hex_switch/6assign_hex_12-15

execute if score Global PC_value_3 matches 0..3 run function cpu:assign_hex_switch/7assign_hex_0-3
execute if score Global PC_value_3 matches 4..7 run function cpu:assign_hex_switch/7assign_hex_4-7
execute if score Global PC_value_3 matches 8..11 run function cpu:assign_hex_switch/7assign_hex_8-11
execute if score Global PC_value_3 matches 12..15 run function cpu:assign_hex_switch/7assign_hex_12-15
