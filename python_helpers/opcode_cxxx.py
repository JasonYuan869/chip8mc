for x in range(16):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_cxxx\\opcode_cxxx_{x}.mcfunction', 'w') as f:
            f.write(f'function cpu:bitwise_ops/and\n'
                    f'scoreboard players operation Global result *= c16 Constant\n'
                    f'scoreboard players operation Global V{hex(x)[2:].upper()} = Global result\n'
                    f'scoreboard players operation Global bitwise_1 = Global PC_nibble_4\n'
                    f'scoreboard players operation Global bitwise_2 = Global copy_2\n'
                    f'function cpu:bitwise_ops/and\n'
                    f'scoreboard players operation Global V{hex(x)[2:].upper()} += Global result\n')


for x in range(16):
    with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_cxxx.mcfunction', 'a') as f:
        f.write(f'execute if score Global PC_nibble_2 matches {x} run function cpu:opcode_switch/opcode_cxxx/opcode_cxxx_{x}\n')
