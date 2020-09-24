# Read 2 bytes of memory into scoreboard
scoreboard players operation Global PC_byte_1 = Global mem_0
scoreboard players operation Global PC_byte_2 = Global mem_1

# Identify opcode
function cpu:get_opcode
