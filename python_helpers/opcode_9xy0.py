for x in range(16):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_9xx0\\opcode_9xx0_{x}.mcfunction', 'w') as f:
        for i in range(16):
            f.write(f'execute if score Global PC_nibble_3 matches {i} run function cpu:opcode_switch/opcode_9xx0/opcode_9xx0_{x}-{i}\n')

for x in range(16):
    for i in range(16):
        with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_9xx0\\opcode_9xx0_{x}-{i}.mcfunction', 'w') as f:
            f.write(f'execute unless score Global V{hex(x)[2:].upper()} = Global V{hex(i)[2:].upper()} run scoreboard players add Global PC 2\n')


for x in range(16):
    with open('..\\data\\cpu\\functions\\opcode_switch\\opcode_9xxx.mcfunction', 'a') as f:
        f.write(f'execute if score Global PC_nibble_2 matches {x} run function cpu:opcode_switch/opcode_9xx0/opcode_9xx0_{x}\n')
