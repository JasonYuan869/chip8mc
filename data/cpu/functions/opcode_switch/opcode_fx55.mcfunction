execute if score Global copy_1 matches 0 run scoreboard players operation Global memory_value = Global V0
execute if score Global copy_1 matches 1 run scoreboard players operation Global memory_value = Global V1
execute if score Global copy_1 matches 2 run scoreboard players operation Global memory_value = Global V2
execute if score Global copy_1 matches 3 run scoreboard players operation Global memory_value = Global V3
execute if score Global copy_1 matches 4 run scoreboard players operation Global memory_value = Global V4
execute if score Global copy_1 matches 5 run scoreboard players operation Global memory_value = Global V5
execute if score Global copy_1 matches 6 run scoreboard players operation Global memory_value = Global V6
execute if score Global copy_1 matches 7 run scoreboard players operation Global memory_value = Global V7
execute if score Global copy_1 matches 8 run scoreboard players operation Global memory_value = Global V8
execute if score Global copy_1 matches 9 run scoreboard players operation Global memory_value = Global V9
execute if score Global copy_1 matches 10 run scoreboard players operation Global memory_value = Global VA
execute if score Global copy_1 matches 11 run scoreboard players operation Global memory_value = Global VB
execute if score Global copy_1 matches 12 run scoreboard players operation Global memory_value = Global VC
execute if score Global copy_1 matches 13 run scoreboard players operation Global memory_value = Global VD
execute if score Global copy_1 matches 14 run scoreboard players operation Global memory_value = Global VE
execute if score Global copy_1 matches 15 run scoreboard players operation Global memory_value = Global VF

function cpu:memory/write_memory/write_memory

scoreboard players add Global I 1
scoreboard players add Global copy_1 1
scoreboard players remove Global PC_nibble_2 1

execute if score Global PC_nibble_2 matches 0.. run function cpu:opcode_switch/opcode_fx65

scoreboard players remove Global I 1
scoreboard players add Global PC_nibble_2 1
