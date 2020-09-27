for x in range(16):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_8xx6\\opcode_8xx6_{x}.mcfunction', 'w') as f:
        f.write(f'scoreboard players operation Global copy_1 = Global V{hex(x)[2:].upper()}\n'
                f'scoreboard players operation Global copy_1 %= c2 Constant\n'
                'scoreboard players operation Global VF = Global copy_1\n'
                f'scoreboard players operation Global V{hex(x)[2:].upper()} /= c2 Constant\n')

with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_8xx6.mcfunction', 'a') as f:
    for x in range(16):
        f.write(f'execute if score Global PC_nibble_2 matches {x} run function cpu:opcode_switch/opcode_8xx6/opcode_8xx6_{x}\n')
