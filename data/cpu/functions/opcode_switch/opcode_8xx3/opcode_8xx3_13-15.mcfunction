scoreboard players operation Global bitwise_2 = Global VF
scoreboard players operation Global bitwise_2 /= c16 Constant
function cpu:bitwise_ops/xor
scoreboard players operation Global copy_1 = Global result
scoreboard players operation Global copy_1 *= c16 Constant
scoreboard players operation Global bitwise_1 = Global VD
scoreboard players operation Global bitwise_1 %= c16 Constant
scoreboard players operation Global bitwise_2 = Global VF
scoreboard players operation Global bitwise_2 %= c16 Constant
function cpu:bitwise_ops/xor
scoreboard players operation Global copy_1 += Global result
scoreboard players operation Global VD = Global copy_1
