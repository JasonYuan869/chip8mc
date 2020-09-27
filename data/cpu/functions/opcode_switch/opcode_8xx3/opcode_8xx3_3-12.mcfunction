scoreboard players operation Global bitwise_2 = Global VC
scoreboard players operation Global bitwise_2 /= c16 Constant
function cpu:bitwise_ops/xor
scoreboard players operation Global copy_1 = Global result
scoreboard players operation Global copy_1 *= c16 Constant
scoreboard players operation Global bitwise_1 = Global V3
scoreboard players operation Global bitwise_1 %= c16 Constant
scoreboard players operation Global bitwise_2 = Global VC
scoreboard players operation Global bitwise_2 %= c16 Constant
function cpu:bitwise_ops/xor
scoreboard players operation Global copy_1 += Global result
scoreboard players operation Global V3 = Global copy_1
