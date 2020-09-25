function cpu:bitwise_ops/and
scoreboard players operation Global result *= c16 Constant
scoreboard players operation Global VD = Global result
scoreboard players operation Global bitwise_1 = Global PC_nibble_4
scoreboard players operation Global bitwise_2 = Global copy_2
function cpu:bitwise_ops/and
scoreboard players operation Global VD += Global result
