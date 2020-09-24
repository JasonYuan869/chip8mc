for i in (0, 1, 2, 3, 4, 5, 6, 7, 'E'):
    with open(f'..\\data\\cpu\\functions\\opcode_switch\\opcode_8xx{i}.mcfunction', 'w') as f:
        f.write(f'# 8xx{i} opcode\n')
