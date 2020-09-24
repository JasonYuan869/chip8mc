for x in range(16):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_8xxe\\opcode_8xxe_{x}.mcfunction', 'w') as f:
        f.write(f'execute if score Global V{hex(x)[2:].upper()} matches 128.. run scoreboard players set Global VF 1\n'
                f'execute unless score Global V{hex(x)[2:].upper()} matches 128.. run scoreboard players set Global VF 1\n'
                f'scoreboard players operation Global V{hex(x)[2:].upper()} *= c2 Constant\n')

with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_8xxe.mcfunction', 'a') as f:
    for x in range(16):
        f.write(f'execute if score Global PC_nibble_2 matches {x} run function cpu:opcode_switch/opcode_8xxe/opcode_8xxe_{x}\n')
