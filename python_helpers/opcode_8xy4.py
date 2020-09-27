for x in range(16):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_8xx4\\opcode_8xx4_{x}.mcfunction', 'w') as f:
        for i in range(16):
            f.write(f'execute if score Global PC_nibble_3 matches {i} run scoreboard players operation Global V{hex(x)[2:].upper()} += Global V{hex(i)[2:].upper()}\n')
        f.write(f'execute if score Global V{hex(x)[2:].upper()} matches 256.. run scoreboard players set Global VF 1\n'
                f'execute unless score Global V{hex(x)[2:].upper()} matches 256.. run scoreboard players set Global VF 0\n'
                f'execute if score Global V{hex(x)[2:].upper()} matches 256.. run scoreboard players remove Global V{hex(x)[2:].upper()} 256\n')


with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_8xx4.mcfunction', 'a') as f:
    for x in range(16):
        f.write(f'execute if score Global PC_nibble_2 matches {x} run function cpu:opcode_switch/opcode_8xx4/opcode_8xx4_{x}\n')
