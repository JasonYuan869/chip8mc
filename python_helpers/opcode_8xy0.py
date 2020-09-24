for x in range(16):
    with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_8xx0.mcfunction', 'a') as f:
        f.write(f'execute if score Global PC_nibble_3 matches {x} run scoreboard players operation Global copy_1 = Global V{hex(x)[2:].upper()}\n')

for x in range(16):
    with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_8xx0.mcfunction', 'a') as f:
        f.write(f'execute if score Global PC_nibble_2 matches {x} run scoreboard players operation Global V{hex(x)[2:].upper()} = Global copy_1\n')
