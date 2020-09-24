function cpu:memory/read_memory/read_memory

execute if score Global copy_1 matches 0 run scoreboard players operation Global V0 = Global memory_value
execute if score Global copy_1 matches 1 run scoreboard players operation Global V1 = Global memory_value
execute if score Global copy_1 matches 2 run scoreboard players operation Global V2 = Global memory_value
execute if score Global copy_1 matches 3 run scoreboard players operation Global V3 = Global memory_value
execute if score Global copy_1 matches 4 run scoreboard players operation Global V4 = Global memory_value
execute if score Global copy_1 matches 5 run scoreboard players operation Global V5 = Global memory_value
execute if score Global copy_1 matches 6 run scoreboard players operation Global V6 = Global memory_value
execute if score Global copy_1 matches 7 run scoreboard players operation Global V7 = Global memory_value
execute if score Global copy_1 matches 8 run scoreboard players operation Global V8 = Global memory_value
execute if score Global copy_1 matches 9 run scoreboard players operation Global V9 = Global memory_value
execute if score Global copy_1 matches 10 run scoreboard players operation Global VA = Global memory_value
execute if score Global copy_1 matches 11 run scoreboard players operation Global VB = Global memory_value
execute if score Global copy_1 matches 12 run scoreboard players operation Global VC = Global memory_value
execute if score Global copy_1 matches 13 run scoreboard players operation Global VD = Global memory_value
execute if score Global copy_1 matches 14 run scoreboard players operation Global VE = Global memory_value
execute if score Global copy_1 matches 15 run scoreboard players operation Global VF = Global memory_value

scoreboard players add Global I 1
scoreboard players add Global copy_1 1
scoreboard players remove Global PC_nibble_2 1

execute if score Global PC_nibble_2 matches 0.. run function cpu:opcode_switch/opcode_fx65

scoreboard players remove Global I 1
scoreboard players add Global PC_nibble_2 1
