scoreboard players operation Global bitwise_2 = Global V1
scoreboard players operation Global bitwise_2 /= c16 Constant
function cpu:bitwise_ops/or
scoreboard players operation Global copy_1 = Global result
scoreboard players operation Global copy_1 *= c16 Constant
scoreboard players operation Global bitwise_1 = Global V7
scoreboard players operation Global bitwise_1 %= c16 Constant
scoreboard players operation Global bitwise_2 = Global V1
scoreboard players operation Global bitwise_2 %= c16 Constant
function cpu:bitwise_ops/or
scoreboard players operation Global copy_1 += Global result
scoreboard players operation Global V7 = Global copy_1
