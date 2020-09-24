# Puts stack_x into stack_value where x is SP
execute if score Global SP matches 0..3 run function cpu:stack_switch/read_stack/read_stack_0-3
execute if score Global SP matches 4..7 run function cpu:stack_switch/read_stack/read_stack_4-7
execute if score Global SP matches 8..11 run function cpu:stack_switch/read_stack/read_stack_8-11
execute if score Global SP matches 12..15 run function cpu:stack_switch/read_stack/read_stack_12-15
