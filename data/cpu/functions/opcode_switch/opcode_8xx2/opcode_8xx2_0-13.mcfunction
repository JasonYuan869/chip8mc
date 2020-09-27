scoreboard players operation Global bitwise_2 = Global VD
scoreboard players operation Global bitwise_2 /= c16 Constant
function cpu:bitwise_ops/and
scoreboard players operation Global copy_1 = Global result
scoreboard players operation Global copy_1 *= c16 Constant
scoreboard players operation Global bitwise_1 = Global V0
scoreboard players operation Global bitwise_1 %= c16 Constant
scoreboard players operation Global bitwise_2 = Global VD
scoreboard players operation Global bitwise_2 %= c16 Constant
function cpu:bitwise_ops/and
scoreboard players operation Global copy_1 += Global result
scoreboard players operation Global V0 = Global copy_1
