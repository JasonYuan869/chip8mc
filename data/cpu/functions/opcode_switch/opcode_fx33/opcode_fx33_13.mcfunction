scoreboard players operation Global memory_value = Global VD
scoreboard players operation Global copy_1 = Global memory_value
scoreboard players operation Global copy_2 = Global memory_value
scoreboard players operation Global memory_value /= c100 Constant
scoreboard players operation Global copy_2 %= c10 Constant
scoreboard players operation Global copy_1 %= c100 Constant
scoreboard players operation Global copy_1 /= c10 Constant
function cpu:memory/write_memory/write_memory
scoreboard players add Global I 1
scoreboard players operation Global memory_value = Global copy_1
function cpu:memory/write_memory/write_memory
scoreboard players add Global I 1
scoreboard players operation Global memory_value = Global copy_2
function cpu:memory/write_memory/write_memory
scoreboard players remove Global I 2
