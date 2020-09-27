for x in range(16):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_7xxx\\opcode_7xxx_{x}.mcfunction', 'w') as f:
        f.write(f'scoreboard players operation Global V{hex(x)[2:].upper()} += Global PC_nibble_4\n')
        f.write(f'execute if score Global V{hex(x)[2:].upper()} matches 256.. run scoreboard players remove Global V{hex(x)[2:].upper()} 256\n')

"""
for x in range(16):
    with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_7xxx.mcfunction', 'a') as f:
        f.write(f'execute if score Global PC_nibble_2 matches {x} run function cpu:opcode_switch/opcode_7xxx/opcode_7xxx_{x}\n')
"""
