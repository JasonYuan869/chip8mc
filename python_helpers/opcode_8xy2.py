for x in range(16):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_8xx2\\opcode_8xx2_{x}.mcfunction', 'w') as f:
        f.write(f'scoreboard players operation Global bitwise_1 = Global V{hex(x)[2:].upper()}\n'
                f'scoreboard players operation Global bitwise_1 /= c16 Constant\n')
        for i in range(16):
            f.write(f'execute if score Global PC_nibble_3 matches {i} run function cpu:opcode_switch/opcode_8xx2/opcode_8xx2_{x}-{i}\n')

for x in range(16):
    for i in range(16):
        with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_8xx2\\opcode_8xx2_{x}-{i}.mcfunction', 'w') as f:
            f.write(f'scoreboard players operation Global bitwise_2 = Global V{hex(i)[2:].upper()}\n'
                    f'scoreboard players operation Global bitwise_2 /= c16 Constant\n'
                    f'function cpu:bitwise_ops/or\n'
                    f'scoreboard players operation Global copy_1 = Global result\n'
                    f'scoreboard players operation Global copy_1 *= c16 Constant\n'
                    f'scoreboard players operation Global bitwise_1 = Global V{hex(x)[2:].upper()}\n'
                    f'scoreboard players operation Global bitwise_1 %= c16 Constant\n'
                    f'scoreboard players operation Global bitwise_2 = Global V{hex(i)[2:].upper()}\n'
                    f'scoreboard players operation Global bitwise_2 %= c16 Constant\n'
                    f'function cpu:bitwise_ops/or\n'
                    f'scoreboard players operation Global copy_1 += Global result\n'
                    f'scoreboard players operation Global V{hex(x)[2:].upper()} = Global copy_1\n')


for x in range(16):
    with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_8xx2.mcfunction', 'a') as f:
        f.write(f'execute if score Global PC_nibble_2 matches {x} run function cpu:opcode_switch/opcode_8xx2/opcode_8xx2_{x}\n')
