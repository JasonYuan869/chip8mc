# 00EE - RET (ld PC, [SP]; dec SP)
function cpu:stack_switch/read_stack/read_stack
scoreboard players operation Global PC = Global stack_value
scoreboard players remove Global SP 1
