for x in range(16):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_8xxe\\opcode_8xxe_{x}.mcfunction', 'w') as f:
        f.write(f'scoreboard players operation Global copy_1 = Global V{hex(x)[2:].upper()}\n'
                f'scoreboard players operation Global copy_1 /= c128 Constant\n'
                'scoreboard players operation Global VF = Global copy_1\n'
                f'scoreboard players operation Global V{hex(x)[2:].upper()} *= c2 Constant\n'
                f'execute if score Global V{hex(x)[2:].upper()} matches 256.. run scoreboard players remove Global V{hex(x)[2:].upper()} 256\n')

"""
with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_8xxe.mcfunction', 'a') as f:
    for x in range(16):
        f.write(f'execute if score Global PC_nibble_2 matches {x} run function cpu:opcode_switch/opcode_8xxe/opcode_8xxe_{x}\n')
"""
