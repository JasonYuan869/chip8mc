for i in range(4):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcodes_{4*i}-{(4*i)+3}.mcfunction', 'w') as f:
        for a in range(4):
            f.write(f'execute if score Global PC_nibble_1 matches {4*i+a} run function cpu:opcode_switch/opcode_{4*i+a}xxx\n')


for i in range(16):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_{str(hex(i))[-1].upper()}xxx.mcfunction', 'w') as f:
        f.write(f'# {str(hex(i))[-1].upper()}xxx opcode')
