# 16, 8-bit registers Vx (0 <= x <= F)
scoreboard objectives add V0 dummy
scoreboard objectives add V1 dummy
scoreboard objectives add V2 dummy
scoreboard objectives add V3 dummy
scoreboard objectives add V4 dummy
scoreboard objectives add V5 dummy
scoreboard objectives add V6 dummy
scoreboard objectives add V7 dummy
scoreboard objectives add V8 dummy
scoreboard objectives add V9 dummy
scoreboard objectives add VA dummy
scoreboard objectives add VB dummy
scoreboard objectives add VC dummy
scoreboard objectives add VD dummy
scoreboard objectives add VE dummy
scoreboard objectives add VF dummy
scoreboard objectives add I dummy

# Initialize registers to 0
scoreboard players set Global V0 0
scoreboard players set Global V1 0
scoreboard players set Global V2 0
scoreboard players set Global V3 0
scoreboard players set Global V4 0
scoreboard players set Global V5 0
scoreboard players set Global V6 0
scoreboard players set Global V7 0
scoreboard players set Global V8 0
scoreboard players set Global V9 0
scoreboard players set Global VA 0
scoreboard players set Global VB 0
scoreboard players set Global VC 0
scoreboard players set Global VD 0
scoreboard players set Global VE 0
scoreboard players set Global VF 0
scoreboard players set Global I 0

# Misc copy variables (temporary placeholders)
scoreboard objectives add copy_1 dummy
scoreboard objectives add copy_2 dummy
scoreboard objectives add copy_3 dummy
scoreboard objectives add copy_4 dummy
scoreboard objectives add result dummy
scoreboard objectives add bitwise_1 dummy
scoreboard objectives add bitwise_2 dummy
scoreboard players set Global copy_1 0
scoreboard players set Global copy_2 0
scoreboard players set Global copy_3 0
scoreboard players set Global copy_4 0
scoreboard players set Global result 0
scoreboard players set Global bitwise_1 0
scoreboard players set Global bitwise_2 0

# Sprite
scoreboard objectives add sprite dummy
scoreboard objectives add row dummy
scoreboard objectives add col dummy
scoreboard objectives add looper_1 dummy
scoreboard objectives add looper_2 dummy
scoreboard players set Global sprite 0
scoreboard players set Global row 0
scoreboard players set Global col 0
scoreboard players set Global looper_1 0
scoreboard players set Global looper_2 0

# Pseudo registers (PC, SP)
scoreboard objectives add PC dummy
scoreboard objectives add SP dummy
scoreboard objectives add PC_temp dummy
scoreboard objectives add SP_temp dummy
scoreboard players set Global PC 0
scoreboard players set Global SP 0
scoreboard players set Global PC_temp 0
scoreboard players set Global SP_temp 0

# Delay timer and Sound timer
scoreboard objectives add DT dummy
scoreboard objectives add ST dummy
scoreboard players set Global DT 0
scoreboard players set Global ST 0

# After reading Memory
scoreboard objectives add PC_byte_1 dummy
scoreboard objectives add PC_byte_2 dummy
scoreboard objectives add PC_nibble_1 dummy
scoreboard objectives add PC_nibble_2 dummy
scoreboard objectives add PC_nibble_3 dummy
scoreboard objectives add PC_nibble_4 dummy
scoreboard players set Global PC_byte_1 0
scoreboard players set Global PC_byte_2 0
scoreboard players set Global PC_nibble_1 0
scoreboard players set Global PC_nibble_2 0
scoreboard players set Global PC_nibble_3 0
scoreboard players set Global PC_nibble_4 0
scoreboard objectives add memory_value dummy
scoreboard players set Global memory_value 0

# After reading stack
scoreboard objectives add stack_value dummy
scoreboard players set Global stack_value 0

# Store the individual nibbles of the PC for debug purposes
scoreboard objectives add PC_value_1 dummy
scoreboard objectives add PC_value_2 dummy
scoreboard objectives add PC_value_3 dummy
scoreboard players set Global PC_value_1 0
scoreboard players set Global PC_value_2 0
scoreboard players set Global PC_value_3 0

# Named armor stands for printing hex values for debug
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"0\"",Tags:["0"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"1\"",Tags:["1"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"2\"",Tags:["2"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"3\"",Tags:["3"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"4\"",Tags:["4"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"5\"",Tags:["5"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"6\"",Tags:["6"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"7\"",Tags:["7"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"8\"",Tags:["8"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"9\"",Tags:["9"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"A\"",Tags:["A"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"B\"",Tags:["B"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"C\"",Tags:["C"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"D\"",Tags:["D"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"E\"",Tags:["E"]}
summon armor_stand 0 100 0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomName:"\"F\"",Tags:["F"]}

# Scoreboard for printing hex values (see opcode_switch/unknown_opcode.mcfunction)
scoreboard objectives add print_params1 dummy
scoreboard objectives add print_params2 dummy
scoreboard objectives add print_params3 dummy
scoreboard objectives add print_params4 dummy
scoreboard objectives add print_params5 dummy
scoreboard objectives add print_params6 dummy
scoreboard objectives add print_params7 dummy

# 16 by 16 bit array stack memory
scoreboard objectives add stack_0 dummy
scoreboard objectives add stack_1 dummy
scoreboard objectives add stack_2 dummy
scoreboard objectives add stack_3 dummy
scoreboard objectives add stack_4 dummy
scoreboard objectives add stack_5 dummy
scoreboard objectives add stack_6 dummy
scoreboard objectives add stack_7 dummy
scoreboard objectives add stack_8 dummy
scoreboard objectives add stack_9 dummy
scoreboard objectives add stack_10 dummy
scoreboard objectives add stack_11 dummy
scoreboard objectives add stack_12 dummy
scoreboard objectives add stack_13 dummy
scoreboard objectives add stack_14 dummy
scoreboard objectives add stack_15 dummy

function cpu:clear_stack
function cpu:memory/init
